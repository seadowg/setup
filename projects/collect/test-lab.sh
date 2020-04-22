./gradlew clean assembleDebug assembleDebugAndroidTest
gcloud beta firebase test android run \
              --type instrumentation \
              --app collect_app/build/outputs/apk/debug/*.apk \
              --num-uniform-shards=50 \
              --test collect_app/build/outputs/apk/androidTest/debug/*.apk \
              --device model=Pixel2,version=27,locale=en,orientation=portrait \
              --results-bucket opendatakit-collect-test-results \
              --directories-to-pull /sdcard --timeout 30m
