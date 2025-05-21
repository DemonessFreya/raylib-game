#include "raylib.h"

int main() {
    InitWindow(800, 600, "Hello Raylib!");
    SetTargetFPS(60);
    
    while (!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(PURPLE);
        DrawText("Welcome to Raylib!", 190, 200, 20, LIGHTGRAY);
        DrawRectangle(200, 150, 200, 100, BLUE);
        DrawCircle(400, 300, 50, RED);
        EndDrawing();
    }
    
    CloseWindow();
    return 0;
}
