To build MetalScope for the Unearth iOS app:

1. (Optional) remove any old build folder in MetalScope/build

2. run ./build.sh.  This will compile the MetalScope framework for simulator and device architectures.

3. add the MetalScope framework to the iOS app.  For regular development with simulator support it is fine
   to use the Release-universal framework.  The Unearth app currently strips the simulator archs when archiving/uploading
   to the app store:

   cp -r build/Release-universal/MetalScope.framework ~/Development/iOSApp/ext/