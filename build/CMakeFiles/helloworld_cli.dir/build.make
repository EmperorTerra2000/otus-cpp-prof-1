# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Emperor\dev\otus-prof\hw\1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Emperor\dev\otus-prof\hw\1\build

# Include any dependencies generated for this target.
include CMakeFiles\helloworld_cli.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\helloworld_cli.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\helloworld_cli.dir\flags.make

CMakeFiles\helloworld_cli.dir\main.cpp.obj: CMakeFiles\helloworld_cli.dir\flags.make
CMakeFiles\helloworld_cli.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Emperor\dev\otus-prof\hw\1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/helloworld_cli.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2022\BUILDT~1\VC\Tools\MSVC\1434~1.319\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\helloworld_cli.dir\main.cpp.obj /FdCMakeFiles\helloworld_cli.dir\ /FS -c C:\Users\Emperor\dev\otus-prof\hw\1\main.cpp
<<

CMakeFiles\helloworld_cli.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/helloworld_cli.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2022\BUILDT~1\VC\Tools\MSVC\1434~1.319\bin\Hostx86\x86\cl.exe > CMakeFiles\helloworld_cli.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Emperor\dev\otus-prof\hw\1\main.cpp
<<

CMakeFiles\helloworld_cli.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/helloworld_cli.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2022\BUILDT~1\VC\Tools\MSVC\1434~1.319\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\helloworld_cli.dir\main.cpp.s /c C:\Users\Emperor\dev\otus-prof\hw\1\main.cpp
<<

# Object files for target helloworld_cli
helloworld_cli_OBJECTS = \
"CMakeFiles\helloworld_cli.dir\main.cpp.obj"

# External object files for target helloworld_cli
helloworld_cli_EXTERNAL_OBJECTS =

helloworld_cli.exe: CMakeFiles\helloworld_cli.dir\main.cpp.obj
helloworld_cli.exe: CMakeFiles\helloworld_cli.dir\build.make
helloworld_cli.exe: helloworld.lib
helloworld_cli.exe: CMakeFiles\helloworld_cli.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Emperor\dev\otus-prof\hw\1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable helloworld_cli.exe"
	"C:\Program Files (x86)\CMake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\helloworld_cli.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100220~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100220~1.0\x86\mt.exe --manifests  -- C:\PROGRA~2\MICROS~2\2022\BUILDT~1\VC\Tools\MSVC\1434~1.319\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\helloworld_cli.dir\objects1.rsp @<<
 /out:helloworld_cli.exe /implib:helloworld_cli.lib /pdb:C:\Users\Emperor\dev\otus-prof\hw\1\build\helloworld_cli.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console helloworld.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\helloworld_cli.dir\build: helloworld_cli.exe

.PHONY : CMakeFiles\helloworld_cli.dir\build

CMakeFiles\helloworld_cli.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\helloworld_cli.dir\cmake_clean.cmake
.PHONY : CMakeFiles\helloworld_cli.dir\clean

CMakeFiles\helloworld_cli.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Emperor\dev\otus-prof\hw\1 C:\Users\Emperor\dev\otus-prof\hw\1 C:\Users\Emperor\dev\otus-prof\hw\1\build C:\Users\Emperor\dev\otus-prof\hw\1\build C:\Users\Emperor\dev\otus-prof\hw\1\build\CMakeFiles\helloworld_cli.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\helloworld_cli.dir\depend

