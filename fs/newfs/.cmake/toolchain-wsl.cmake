set(CMAKE_SYSTEM_NAME Linux)

# Specify the compiler
set(CMAKE_C_COMPILER /usr/bin/gcc)
set(CMAKE_CXX_COMPILER /usr/bin/g++)

# Specify the archiver
set(CMAKE_AR /usr/bin/ar CACHE FILEPATH Archiver)
set(CMAKE_STRIP /usr/bin/strip CACHE FILEPATH Strip)

# Configure search paths
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)