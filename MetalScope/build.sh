FRAMEWORK=MetalScope
BUILD=build
FRAMEWORK_PATH=$FRAMEWORK.framework
# iOS
rm -Rf $BUILD

xcodebuild -project $FRAMEWORK.xcodeproj -scheme $FRAMEWORK -configuration Release -sdk iphoneos SYMROOT=$BUILD

xcodebuild -project $FRAMEWORK.xcodeproj -scheme $FRAMEWORK -configuration Release -sdk iphonesimulator SYMROOT=$BUILD EXCLUDED_ARCHS="arm64"

xcodebuild -create-xcframework \
        -framework ${BUILD}/Release-iphoneos/${FRAMEWORK_PATH} \
        -framework ${BUILD}/Release-iphonesimulator/${FRAMEWORK_PATH} \
        -output ${BUILD}/${FRAMEWORK}.xcframework
