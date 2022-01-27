./gradlew assembleDebug assembleDebugAndroidTest
gcloud beta firebase test android run \
              --type instrumentation \
              --num-uniform-shards=50 \
              --app collect_app/build/outputs/apk/debug/*.apk \
              --test collect_app/build/outputs/apk/androidTest/debug/*.apk \
              --device model=Pixel2,version=29,locale=en,orientation=portrait \
              --timeout 10m
