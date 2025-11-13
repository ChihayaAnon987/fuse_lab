# Grab from https://github.com/fntlnz/fuse-example/blob/master/CMake/FindFUSE.cmake

# Find the FUSE includes and library
#
#  FUSE_INCLUDE_DIR - where to find fuse.h, etc.
#  FUSE_LIBRARIES   - List of libraries when using FUSE.
#  FUSE_FOUND       - True if FUSE lib is found.

# check if already in cache, be silent
IF (FUSE_INCLUDE_DIR)
    SET (FUSE_FIND_QUIETLY TRUE)
ENDIF (FUSE_INCLUDE_DIR)

# find includes
FIND_PATH (FUSE_INCLUDE_DIR fuse.h
        /usr/local/include/osxfuse
        /usr/local/include
        /usr/include
        "C:/Program Files (x86)/WinFsp/inc/fuse"
        "C:/Program Files/WinFsp/inc/fuse"
        )

# find lib
if (APPLE)
    SET(FUSE_NAMES libosxfuse.dylib fuse)
elseif (WIN32)
    SET(FUSE_NAMES fuse winfsp-x64)
else (APPLE)
    SET(FUSE_NAMES fuse)
endif (APPLE)

FIND_LIBRARY(FUSE_LIBRARIES
        NAMES ${FUSE_NAMES}
        PATHS 
        /lib64 
        /lib 
        /usr/lib64 
        /usr/lib 
        /usr/local/lib64 
        /usr/local/lib 
        /usr/lib/x86_64-linux-gnu
        "C:/Program Files (x86)/WinFsp/lib"
        "C:/Program Files/WinFsp/lib"
        )

include ("FindPackageHandleStandardArgs")
find_package_handle_standard_args ("FUSE" DEFAULT_MSG
        FUSE_INCLUDE_DIR FUSE_LIBRARIES)

mark_as_advanced (FUSE_INCLUDE_DIR FUSE_LIBRARIES)