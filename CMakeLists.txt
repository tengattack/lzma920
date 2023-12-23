cmake_minimum_required(VERSION 3.12)

if(WIN32 OR CMAKE_SYSTEM_NAME STREQUAL "Windows")
  if(CMAKE_GENERATOR MATCHES "Visual Studio")
    set(CMAKE_GENERATOR_PLATFORM Win32)
    set(CMAKE_GENERATOR_TOOLSET "host=x86" CACHE STRING "Platform Toolset" FORCE)
  else()
    set(CMAKE_C_COMPILER clang-cl)
  endif()
endif()

project(lzma920 C)

if(WIN32 OR CMAKE_SYSTEM_NAME STREQUAL "Windows")
  if(CMAKE_C_COMPILER_ID STREQUAL "MSVC")
    set(CMAKE_SUPPRESS_REGENERATION true)
    set(CMAKE_MFC_FLAG 1)
    set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} /MTd /Zi")
    set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} /MT /Zi")
  else()
    set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
    set(CMAKE_C_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /Zi")
    set(CMAKE_C_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /Zi")
  endif()
  add_definitions(-DUNICODE -D_UNICODE)
elseif(CMAKE_SYSTEM_NAME STREQUAL "Linux")
  # Linux-specific configuration
endif()

set(PUBLIC_HEADERS
  C/LzmaLib.h
  C/Types.h
)

set(HEADERS
  C/7z.h
  C/7zAlloc.h
  C/7zBuf.h
  C/7zCrc.h
  C/7zFile.h
  C/7zVersion.h
  C/Alloc.h
  C/Bcj2.h
  C/Bra.h
  C/CpuArch.h
  C/Delta.h
  C/LzFind.h
  C/LzFindMt.h
  C/LzHash.h
  C/Lzma2Dec.h
  C/Lzma2Enc.h
  C/Lzma86.h
  C/LzmaDec.h
  C/LzmaEnc.h
  C/LzmaLib.h
  C/MtCoder.h
  C/Ppmd.h
  C/Ppmd7.h
  C/RotateDefs.h
  C/Sha256.h
  C/Threads.h
  C/Types.h
  C/Xz.h
  C/XzCrc64.h
  C/XzEnc.h
)

set(SOURCES
  C/7zAlloc.c
  C/7zBuf.c
  C/7zBuf2.c
  C/7zCrc.c
  C/7zCrcOpt.c
  C/7zDec.c
  C/7zFile.c
  C/7zIn.c
  C/7zStream.c
  C/Alloc.c
  C/Bcj2.c
  C/Bra.c
  C/Bra86.c
  C/BraIA64.c
  C/CpuArch.c
  C/Delta.c
  C/LzFind.c
  C/LzFindMt.c
  C/Lzma2Dec.c
  C/Lzma2Enc.c
  C/Lzma86Dec.c
  C/Lzma86Enc.c
  C/LzmaDec.c
  C/LzmaEnc.c
  C/LzmaLib.c
  C/MtCoder.c
  C/Ppmd7.c
  C/Ppmd7Dec.c
  C/Ppmd7Enc.c
  C/Sha256.c
  C/Threads.c
  C/Xz.c
  C/XzCrc64.c
  C/XzDec.c
  C/XzEnc.c
  C/XzIn.c
)

source_group("Headers" FILES ${HEADERS})
source_group("Sources" FILES ${SOURCES})

if(NOT CMAKE_DEBUG_POSTFIX)
  set(CMAKE_DEBUG_POSTFIX d)
endif()

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/C)

add_library(${PROJECT_NAME} STATIC ${SOURCES} ${HEADERS})

target_compile_definitions(${PROJECT_NAME} PRIVATE
  WIN32
  $<$<CONFIG:Debug>:
    _DEBUG
  >
  $<$<CONFIG:Release>:
    NDEBUG
  >
)

set_target_properties(${PROJECT_NAME}
  PROPERTIES PUBLIC_HEADER "${PUBLIC_HEADERS}")

add_custom_command(
  TARGET ${PROJECT_NAME} POST_BUILD
  COMMENT "Creating build include dir"
  COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/C/LzmaLib.h
    ${CMAKE_CURRENT_BINARY_DIR}/include/LzmaLib.h
  COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/C/Types.h
    ${CMAKE_CURRENT_BINARY_DIR}/include/Types.h
)
