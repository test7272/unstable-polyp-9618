plugins { kotlin("jvm") version "1.9.10" }
repositories { mavenCentral() }
dependencies {
    implementation("org.springframework.boot:spring-boot-starter-web:3.0.6")
    implementation("org.mockito:mockito-core:5.2.0")
    implementation("org.projectlombok:lombok:1.18.26")
    implementation("androidx.appcompat:appcompat:1.6.1")
    implementation("com.android.tools.build:gradle:8.1.4")
    implementation("com.google.guava:guava:31.1-jre")
    implementation("com.fasterxml.jackson.core:jackson-databind:2.14.2")
    implementation("com.google.code.gson:gson:2.10.1")
    implementation("com.squareup.sqldelight:runtime:1.5.5")
    implementation("io.reactivex.rxjava3:rxjava:3.1.5")
}
