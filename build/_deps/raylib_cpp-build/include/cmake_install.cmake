# Install script for directory: C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/graphical_template")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/msys64/mingw64/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/AudioDevice.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/AudioStream.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/AutomationEventList.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/BoundingBox.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Camera2D.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Camera3D.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Color.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/FileData.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/FileText.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Font.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Functions.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Gamepad.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Image.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Keyboard.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Material.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Matrix.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Mesh.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/MeshUnmanaged.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Model.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/ModelAnimation.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Mouse.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Music.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Ray.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/RayCollision.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/RaylibException.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/raylib-cpp-utils.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/raylib-cpp.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/raylib.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/raymath.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Rectangle.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/RenderTexture.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/ShaderUnmanaged.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Shader.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Sound.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Text.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Texture.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/TextureUnmanaged.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Touch.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Vector2.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Vector3.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Vector4.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/VrStereoConfig.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Wave.hpp"
    "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-src/include/Window.hpp"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/Freyja/Documents/GitHub/raylib-game/build/_deps/raylib_cpp-build/include/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
