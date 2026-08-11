cmake_minimum_required(VERSION 3.20)
project(chaos C CXX)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

find_package(Threads REQUIRED)
find_package(ZLIB REQUIRED)
find_package(CURL REQUIRED)
find_package(OpenSSL REQUIRED)
find_package(PkgConfig REQUIRED)
pkg_check_modules(GLIB2 REQUIRED glib-2.0)
pkg_check_modules(LIBPCRE2 REQUIRED libpcre2-8)
pkg_check_modules(SQLITE3 REQUIRED sqlite3)
