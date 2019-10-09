# MetalScope
Metal-backed 360° panorama view for iOS

This is a fork of the MetalScope project at https://github.com/ejeinc/MetalScope.  The Unearth app uses this library to provide GPU based rendering using Apple's Metal libraries of 360° photos in the construction app. The reason for forking is because this library is no longer maintained by the original author and needed maintainence in order to bring it up to Swift 4.2, 5,0, and more recently Swift 5.1.  This library is compiled into an iOS framework, named MetalScope.framework, and statically compiled into the main iOS app.

## Building
A build script is supplied in the MetalScope folder.  To run: 

`./build.sh`

in a terminal window. 

The build script will perform a Release (non-debug) command-line xcode build to compile arm6, arm7, x86_64, and i386 architectures to support both devices and simulator builds in the main iOS app.

`build.sh` uses `lipo` to create a universal framework containing both arm architectures and simulator architectures.  

if `build.sh` compiles without errors it will have created a `build/Release-universal` folder.  In this folder you will find a `MetalScope.framework` which can be copied into the `ext/` folder in the iOSApp.  Note that the iOSApp contains a run script that slices the simulator architectures from archive builds so that uploads for the App Store need no further modification.

# History

0fe0b20 --- Updated to swift 4.2 

98a35f5 --- Update MetalScope to Swift 5.1.  Include i386 simulator Arch for profiling using instruments. Add README for build instructions using build.sh


