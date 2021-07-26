# 64 bit build of main branch

# TODO delete/make backup of old build
git pull
git submodule update --init --recursive
cd build
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat" -arch=x86
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DLAF_BACKEND=skia -DSKIA_DIR=C:\Users\brube\github\_deps\skia -DSKIA_LIBRARY_DIR=C:\Users\brube\github\_deps\skia\out\Release-x86 -DSKIA_LIBRARY=C:\Users\brube\github\_deps\skia\out\Release-x86\skia.lib -G Ninja ..
ninja aseprite
