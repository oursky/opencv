OpenCV
======
Multiple platform OpenCV XCFramwork

Requirement
-----------
CMake
XCode

Build instruction
-----------------

1. Download OpenCV

2. Build with

```
IPHONEOS_DEPLOYMENT_TARGET=13.0 ./platforms/ios/build_framework.py build_xc --iphoneos_archs=arm64 --iphonesimulator_archs x86_64,arm64
```

