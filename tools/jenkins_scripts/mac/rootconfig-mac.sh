#!/bin/bash
#get params for build_native.sh
CUR=$(pwd)
cd ../../..
#CrossApp=$(pwd)

#var1=NDK_ROOT_LOCAL=
#_NDK_ROOT=${var1}${ANDROID_NDK}

#var2=CrossApp_ROOT_LOCAL=
#_CrossApp_ROOT=${var2}${CrossApp}
#echo $_NDK_ROOT
#echo $_CrossApp_ROOT

#Modify the configuration files
#sed -i  '' '3,4d' $CUR/build_native.sh
sed -i  '' '13d' $CUR/project.properties
#gsed -i "3 i\\$_NDK_ROOT" $CUR/build_native.sh
#gsed -i "4 i\\$_CrossApp_ROOT" $CUR/build_native.sh

#Modify the xml file
if [ $1 = TestCpp ]; then
	gsed -i '2d' $CUR/build.xml
	gsed -i '2 i\<project name="TestCpp" default="help">' $CUR/build.xml
elif [ $1 = HelloCpp ]; then
	gsed -i '2d' $CUR/build.xml
	gsed -i '2 i\<project name="HelloCpp" default="help">' $CUR/build.xml
else
	gsed -i '2d' $CUR/build.xml
	gsed -i '2 i\<project name="HelloLua" default="help">' $CUR/build.xml
fi
