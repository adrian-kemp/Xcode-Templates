# Build Phase
#   Here we are building the framework's static library for all of the required architectures
 
xcodebuild -target "___PACKAGENAME___" -arch i386 -sdk iphonesimulator install
xcodebuild -target "___PACKAGENAME___" -arch armv7 install
xcodebuild -target "___PACKAGENAME___" -arch armv7s install

# Lipo Phase
#    Lipo is a tool that combines static libraries into "fat" libraries supporting multiple architectures

lipo "$INSTALL_PATH/$PRODUCT_NAME.framework/"*"-$PRODUCT_NAME" -create -output "$INSTALL_PATH/$PRODUCT_NAME.framework/$PRODUCT_NAME"

# Clean-up Phase
#   Once we've lipo'ed there is no benefit to having the individual libraries kicking around.

rm "$INSTALL_PATH/$PRODUCT_NAME.framework/"*"-$PRODUCT_NAME"
