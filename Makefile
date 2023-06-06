.PHONY: android
android:
	# https://tonyjiangwj.github.io/2021/01/07/%E5%B0%86opencv-android-sdk%E6%89%93%E5%8C%85%E6%88%90aar%E6%96%87%E4%BB%B6/index.html

	curl -o android/sdk.zip -L https://github.com/opencv/opencv/releases/download/4.6.0/opencv-4.6.0-android-sdk.zip
	unzip -d android/sdk android/sdk.zip

	mkdir -p android/opencv/src/main/aidl/org/opencv/engine
	cp android/sdk/OpenCV-android-sdk/sdk/java/src/org/opencv/engine/OpenCVEngineInterface.aidl android/opencv/src/main/aidl/org/opencv/engine/OpenCVEngineInterface.aidl
	
	mkdir -p android/opencv/src/main/java
	cp -R android/sdk/OpenCV-android-sdk/sdk/java/src/ android/opencv/src/main/java/

	mkdir -p android/opencv/src/main/jniLibs
	cp -R android/sdk/OpenCV-android-sdk/sdk/native/libs/ android/opencv/src/main/jniLibs/

	mkdir -p android/opencv/src/main/res
	cp -R android/sdk/OpenCV-android-sdk/sdk/java/res/ android/opencv/src/main/res/

	cd android && ./gradlew build
