# Microsoft Developer Studio Project File - Name="liblzma" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=liblzma - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "liblzma.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "liblzma.mak" CFG="liblzma - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "liblzma - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "liblzma - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "liblzma - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 1
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /Gr /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"Release\liblzma_release_vc6.lib"

!ELSEIF  "$(CFG)" == "liblzma - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ  /c
# ADD CPP /nologo /Gr /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ  /c
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"Debug\liblzma_debug_vc6.lib"

!ENDIF 

# Begin Target

# Name "liblzma - Win32 Release"
# Name "liblzma - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\Alloc.c
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\LzFind.c
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\LzFindMt.c
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\LzmaDec.c
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\LzmaEnc.c
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\LzmaLib.c
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\Threads.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\Alloc.h
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\LzFind.h
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\LzFindMt.h
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\LzHash.h
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\LzmaDec.h
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\LzmaEnc.h
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\LzmaLib.h
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\Threads.h
# End Source File
# Begin Source File

SOURCE=..\..\Programme\SDKs\lzma920\C\Types.h
# End Source File
# End Group
# End Target
# End Project
