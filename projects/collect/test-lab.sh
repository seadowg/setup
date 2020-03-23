./gradlew clean assembleDebug assembleDebugAndroidTest
gcloud firebase test android run \
              --type instrumentation \
              --app collect_app/build/outputs/apk/debug/*.apk \
              --test collect_app/build/outputs/apk/androidTest/debug/*.apk \
              --device model=Pixel2,version=27,locale=en,orientation=portrait \
              --results-bucket opendatakit-collect-test-results \
              --environment-variables coverage=true,coverageFile=/sdcard/coverage.ec \
              --directories-to-pull /sdcard --timeout 30m
