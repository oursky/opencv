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

2. Run

```
./platforms/ios/build_framework.py build_xc --iphoneos_archs=arm64 --iphonesimulator_archs x86_64,arm64
```

3. Add the following line inside your Podfile

```
pod 'OpenCV', :git => 'https://github.com/oursky/opencv.git', branch: 'REPLACE_BY_VERSION'
```