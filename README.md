# contentnet


##build steps

### build carthage libs

export XCODE_XCCONFIG_FILE=$PWD/tmp.xcconfig

carthage update --use-xcframeworks --platform iOS

### download hop lib
