# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Espressif/frameworks/esp-idf-v4.4.7/components/bootloader/subproject"
  "D:/RND/cam_lcd/build/bootloader"
  "D:/RND/cam_lcd/build/bootloader-prefix"
  "D:/RND/cam_lcd/build/bootloader-prefix/tmp"
  "D:/RND/cam_lcd/build/bootloader-prefix/src/bootloader-stamp"
  "D:/RND/cam_lcd/build/bootloader-prefix/src"
  "D:/RND/cam_lcd/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/RND/cam_lcd/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
