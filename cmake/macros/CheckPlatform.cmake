# check what platform we're on (64-bit or 32-bit), and create a simpler test than CMAKE_SIZEOF_VOID_P
# for my bugged system i should avoid this stupid check to be able compile in 64 mode :(
#if(CMAKE_SIZEOF_VOID_P MATCHES 8)
    set(PLATFORM 64)
    MESSAGE(STATUS "Detected 64-bit platform")
#else()
#    set(PLATFORM 32)
#    MESSAGE(STATUS "Detected 32-bit platform")
#endif()

include("${CMAKE_SOURCE_DIR}/cmake/platform/settings.cmake")

if(WIN32)
  include("${CMAKE_SOURCE_DIR}/cmake/platform/win/settings.cmake")
elseif(APPLE)
  include("${CMAKE_SOURCE_DIR}/cmake/platform/osx/settings.cmake")
elseif(UNIX)
  include("${CMAKE_SOURCE_DIR}/cmake/platform/unix/settings.cmake")
endif()
