:: 64 bit build of main branch
d:
cd D:\gitHub_programs
robocopy aseprite\build\bin backups\asepritebackup /E /PURGE
cd aseprite
git pull
git submodule update --init --recursive
rmdir /S /Q build
mkdir build
cd build
call "D:\visualStudio\Common7\Tools\VsDevCmd.bat" -arch=x64
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DLAF_BACKEND=D:\gitHub_programs\Skia-Windows-Release-x64 -DSKIA_LIBRARY_DIR=D:\gitHub_programs\Skia-Windows-Release-x64\out\Release-x64 -DSKIA_LIBRARY=D:\gitHub_programs\Skia-Windows-Release-x64\out\Release-x64\skia.lib -G Ninja ..
ninja aseprite
c:
cd C:\Users\Bruno\github\Personal-Tests-and-Templates
echo [DONE]
pause
