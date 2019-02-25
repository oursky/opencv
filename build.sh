#!/usr/bin/env bash -eu

cd "$(dirname "$BASH_SOURCE")"

wget https://github.com/opencv/opencv/archive/4.0.1.tar.gz -O opencv.tar.gz
wget https://github.com/opencv/opencv_contrib/archive/4.0.1.tar.gz -O contrib.tar.gz

tar xf opencv.tar.gz
tar xf contrib.tar.gz

sed -i '' 's/ALL_BUILD/opencv_world/g' opencv-4.0.1/platforms/ios/build_framework.py

if ! [ -x "$(command -v cmake)" ]; then
    echo 'cmake is required'
    exit 1
fi

export DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer
opencv-4.0.1/platforms/ios/build_framework.py --dynamic --contrib opencv_contrib-4.0.1/ build

rm -f opencv2.framework.zip
(cd build && zip -r ../opencv2.framework.zip opencv2.framework)
