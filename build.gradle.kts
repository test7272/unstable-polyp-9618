plugins { kotlin("jvm") version "1.9.10" }
repositories { mavenCentral() }
dependencies {
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.7.3")
    implementation("org.springframework.boot:spring-boot-starter-web:3.0.6")
    implementation("io.ktor:ktor-server-netty-jvm:2.3.4")
    implementation("org.slf4j:slf4j-simple:2.0.7")
    implementation("com.fasterxml.jackson.core:jackson-databind:2.14.2")
    implementation("org.apache.httpcomponents:httpclient:4.5.14")
    implementation("com.squareup.retrofit2:retrofit:2.9.0")
    implementation("org.junit.jupiter:junit-jupiter:5.9.2")
    implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.7.0")
    implementation("org.apache.commons:commons-lang3:3.12.0")
    implementation("androidx.core:core-ktx:1.12.0")
    implementation("org.mockito:mockito-core:5.2.0")
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.6.0")
    implementation("com.android.tools.build:gradle:8.1.4")
    implementation("com.google.android.material:material:1.11.0")
    implementation("androidx.compose.material:material:1.5.4")
    implementation("com.zaxxer:HikariCP:5.0.1")
    implementation("androidx.activity:activity-compose:1.8.0")
    implementation("com.squareup.sqldelight:android-driver:1.5.5")
    implementation("org.projectlombok:lombok:1.18.26")
}
