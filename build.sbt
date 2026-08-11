ThisBuild / scalaVersion := "2.13.12"
ThisBuild / organization := "com.chaos"

libraryDependencies ++= Seq(
  "com.typesafe.akka" %% "akka-actor" % "2.8.4",
  "com.typesafe.akka" %% "akka-stream" % "2.8.4",
  "com.typesafe.play" %% "play" % "2.9.2",
  "org.typelevel" %% "cats-core" % "2.10.0",
  "dev.zio" %% "zio" % "2.0.19",
  "org.scalatest" %% "scalatest" % "3.2.17" % Test,
  "org.json4s" %% "json4s-native" % "4.0.6",
  "io.circe" %% "circe-core" % "0.14.6",
  "com.softwaremill.sttp.client3" %% "core" % "3.9.1",
  "org.http4s" %% "http4s-blaze-server" % "0.23.24"
)
