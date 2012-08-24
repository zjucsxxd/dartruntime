Stand alone runtime of Google's Dart language
----------------------------------------------

This git repository is a clone of the runtime part of the svn repository at  
http://code.google.com/p/dart/source/browse/branches/bleeding_edge/#bleeding_edge%2Fdart




Prepeare your system
---------------------

Ubuntu 64: sudo apt-get install cmake g++ g++-multilib ia32-libs libssl-dev  
Windows  : Install cmake, other libs are downloaded automatically  

See also:  
http://code.google.com/p/chromium/wiki/LinuxBuildInstructionsPrerequisites




Build
------

- CMake: use cmake/CMakeLists.txt

- Gyp: create make files in runtime/ with (git repository must reside in a gclient sync'ed tree):  
    ./tools/generate_projects.py runtime
       



"Hello World" from scratch (Linux)
----------------------------------

To get started here the commands which are needed on Linux to run a simple dart script:

    git clone git@github.com:syntheticpp/dartruntime.git
    cd dartruntime
    git checkout -b cmake origin/cmake
    cd ..
    mkdir build
    cd build
    cmake ../dartruntime/cmake/
    make -j4
    echo "main() { print(\"Hello World\!\"); }" > hello.dart
    ./bin/dart ./hello.dart 




Setup of this repository
-------------------------

It was initialized by this commands:


git svn init \  
http://dart.googlecode.com/svn/ \  
--trunk branches/bleeding_edge/dart \  
--ignore-paths \  
"^branches/bleeding_edge/dart/client\  
|^branches/bleeding_edge/dart/compiler\  
|^branches/bleeding_edge/dart/editor\  
|^branches/bleeding_edge/dart/frog\  
|^branches/bleeding_edge/dart/language\  
|^branches/bleeding_edge/dart/samples\  
|^branches/bleeding_edge/dart/tests\  
|^branches/bleeding_edge/dart/third_party\  
|^branches/bleeding_edge/dart/tools\  
|^branches/bleeding_edge/dart/utils\  
|^branches/bleeding_edge/dart/doc\  
|^branches/bleeding_edge/dart/pkg\  
|^branches/bleeding_edge/dart/README\  
|^branches/bleeding_edge/README.dart-sdk\  
|^branches/bleeding_edge/dart/codereview.settings\  
|^branches/bleeding_edge/dart/dart.gyp\  
|^branches/bleeding_edge/dart/PRESUBMIT.py\  
|^branches/bleeding_edge/dart/.gitignore\  
|^branches/bleeding_edge/dart/codereview.settings"  
    
And has revisions since 17000

    git svn fetch -r 17000







