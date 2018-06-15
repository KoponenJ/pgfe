git clone https://github.com/dmitigr/pgfe.git
mkdir pgfe\build
cd pgfe\build

rem This is release for 64 and 32 bits.
rem cmake -DCMAKE_BUILD_TYPE=Release -DLIBPQ_PREFIX="c:/Program Files/PostgreSQL/10/" -G "Visual Studio 15 2017 Win64" ..
rem cmake -DCMAKE_BUILD_TYPE=Release -DLIBPQ_PREFIX="c:/Program Files (x86)/PostgreSQL/10/" -G "Visual Studio 15 2017" ..
rem cmake --build . --config Release  
rem cmake -DBUILD_TYPE=Release -P cmake_install.cmake

rem This is debug for 64 and 32 bits.
rem cmake -DCMAKE_BUILD_TYPE=Debug -DLIBPQ_PREFIX="c:/Program Files/PostgreSQL/10/" -G "Visual Studio 15 2017 Win64" ..
cmake -DCMAKE_BUILD_TYPE=Debug -DLIBPQ_PREFIX="c:/Program Files (x86)/PostgreSQL/10/" -G "Visual Studio 15 2017" ..
cmake --build . --config Debug
cmake -DBUILD_TYPE=Debug -P cmake_install.cmake
