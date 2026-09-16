plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.rick_and_morty.rick_and_morty"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.rick_and_morty.rick_and_morty"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    flavorDimensions += "flavor-type"

    productFlavors {
        create("dev"){
            dimension = "flavor-type"
            applicationId = "com.multiverse.rickandmorty.dev"
            resValue("string", "app_name", "Rick & Morty Dev")
        }
        create("staging") {
            dimension = "flavor-type"
            applicationId = "com.multiverse.rickandmorty.staging"
            resValue("string", "app_name", "Rick & Morty Staging")
        }
        create("production") {
            dimension = "flavor-type"
            applicationId = "com.multiverse.rickandmorty"
            resValue("string", "app_name", "Rick & Morty")
        }
        
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
