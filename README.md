# cross build curl-android
https://github.com/jhonconal/libcurl-android
# native-curl
cross curl test with android ndk,ndk(arm64-v8a,armeabi-v7a,x86)
# Instruction
```
1.get android ndk for asop url.  
2. uzip eg: ndk/android-ndk-r16b.zip to path
3. export the NDK path 
  eg: (vim ~/.bashrc)
  ANDROID_NDK_HOME=${PATH}:ndk-to-path/android-ndk-r16b
  export PATH=${PATH}:$ANDROID_NDK_HOME
  
  source ~/.bashrc
4. build eg:  
jhonconal@MR942ZPA:~/Desktop/Codes/native-curl|master
⇒  ndk-build NDK_PROJECT_PATH=. NDK_APPLICATION_MK=Application.mk APP_BUILD_SCRIPT=Android.mk
[x86] Install        : libcrypto.so => libs/x86/libcrypto.so

[x86] Install        : libcurl.so => libs/x86/libcurl.so
[x86] Compile++      : main <= main.cpp
[x86] Executable     : main
[x86] Install        : main => libs/x86/main
[x86] Install        : libssl.so => libs/x86/libssl.so
```
