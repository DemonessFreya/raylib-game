#include <raylib-cpp.hpp>
#include <iostream>
#include <rcamera.h> // Still needed for Camera support if you use it later
#include <ctime>

#ifdef __EMSCRIPTEN__
#include <emscripten.h>
#endif

// Logging macro
#define LOG(X) std::cout << __FILE__ << ": " << __LINE__ << ": " << X << std::endl;

raylib::RenderTexture rt;
const char* someResource = nullptr;

#ifdef __EMSCRIPTEN__
EM_JS(void, idbfs_put, (const char* filename, const char* str), {
    FS.writeFile(UTF8ToString(filename), UTF8ToString(str));
    FS.syncfs(false, function (err) {
        assert(!err);
    });
});

EM_JS(char*, idbfs_get, (const char* filename), {
    var arr = FS.readFile(UTF8ToString(filename));
    var jsString = new TextDecoder().decode(arr);
    var lengthBytes = lengthBytesUTF8(jsString) + 1;
    var stringOnWasmHeap = _malloc(lengthBytes);
    stringToUTF8(jsString, stringOnWasmHeap, lengthBytes);
    return stringOnWasmHeap;
});
#endif

void gameLoop() {
    BeginDrawing();

    rt.BeginMode(); // BeginTextureMode
    ClearBackground(raylib::Color::Black());
    DrawCircle(GetMouseX(), GetMouseY(), 50, raylib::Color::Yellow());
    rt.EndMode(); // EndTextureMode

    DrawTexture(rt.GetTexture(), 0, 0, raylib::Color::White());
    DrawFPS(0, 0);

#ifdef __EMSCRIPTEN__
    char* text = idbfs_get("file.txt");
    DrawText(TextFormat("Dynamic file content: %s", text), 0, 30, 20, raylib::Color::White());
#endif

    ::DrawText(TextFormat("Static file content: %s", someResource), 0, 60, 20, raylib::Color::White());

    EndDrawing();
}

int main() {
    const int screenWidth = 1920;
    const int screenHeight = 1080;

    raylib::Window window(screenWidth, screenHeight, "rtextures");
    SetTargetFPS(144);

    rt = raylib::RenderTexture(screenWidth, screenHeight);
    someResource = LoadFileText("../resources/dummy.txt");

#ifdef __EMSCRIPTEN__
    EM_ASM({
        FS.mkdir('/work');
        FS.mount(IDBFS, {}, '/work');
        FS.syncfs(true, function (err){
            assert(!err);
        });
    });

    struct timespec ts = {.tv_sec = 0, .tv_nsec = 100000000};
    struct timespec ts2 = {.tv_sec = 0, .tv_nsec = 100000000};
    nanosleep(&ts, &ts2);
    idbfs_put("file.txt", "Some dynamic file contents...\n");

    emscripten_set_main_loop(gameLoop, 0, 0);
#else
    while (!window.ShouldClose()) {
        gameLoop();
    }
#endif

    return 0;
}
