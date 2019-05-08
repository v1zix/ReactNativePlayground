package com.reactnativeplayground.constants;

import com.reactnativeplayground.BuildConfig;

import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;

import java.util.Map;
import java.util.HashMap;

public class BuildConstantsModule extends ReactContextBaseJavaModule {

  public BuildConstantsModule(ReactApplicationContext reactContext) {
    super(reactContext);
  }

  @Override
  public String getName() {
    return "BuildConstants";
  }

  @Override
  public Map<String, Object> getConstants() {
    final Map<String, Object> constants = new HashMap<>();
    constants.put("buildType", BuildConfig.BUILD_TYPE);
    constants.put("versionCode", BuildConfig.VERSION_CODE);
    constants.put("versionName", BuildConfig.VERSION_NAME);
    return constants;
  }
}