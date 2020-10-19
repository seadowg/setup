./gradlew assembleDebug assembleDebugAndroidTest
gcloud beta firebase test android run \
              --type instrumentation \
              --num-uniform-shards=50 \
              --app collect_app/build/outputs/apk/debug/*.apk \
              --test collect_app/build/outputs/apk/androidTest/debug/*.apk \
              --device model=Pixel2,version=28,locale=en,orientation=portrait \
              --timeout 10m
