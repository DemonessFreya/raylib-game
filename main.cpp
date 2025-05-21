#include "raylib.h"

int main() {
    InitWindow(800, 600, "Hello Raylib!");
    SetTargetFPS(60);

    Image image = LoadImage(R"(Assets\Tiny RPG Character Asset Pack v1.03 -Free Soldier&Orc\Arrow(Projectile)\Arrow01(100x100).png)");
    Texture2D texture = LoadTextureFromImage(image);
    UnloadImage(image); 
    
    while (!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(RAYWHITE);
        DrawTexture(texture, 0, 0, WHITE);
        EndDrawing();
    }
    
    UnloadTexture(texture);
    CloseWindow();
    return 0;
}
