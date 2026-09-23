import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("customer") {
            dimension = "flavor-type"
            applicationId = "com.byc.expert_connect"
            resValue(type = "string", name = "app_name", value = "Expert Connect")
        }
        create("expert") {
            dimension = "flavor-type"
            applicationId = "com.sidonline.vendor3"
            resValue(type = "string", name = "app_name", value = "Expert Hub")
        }
    }

    buildFeatures.resValues = true
}