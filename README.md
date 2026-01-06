# Bash file utilities

A series of bash file utilities for users who want to organize simple files (such as photos) without buying a subscription to a premium file utility app.

Operates within the current working directory. Run: `sh <scriptname.sh>`

## CleanupMediaFileExtensions.sh
* Renames undesirable image extensions (`.jpg`, `.jpeg`, `.bmp`, `.heic`, `.webp`) to `.png`.
* Changes `.m4a` to `.mp3`.
* Changes `.mov` to `.mp4`.

## RenameFileNameByCreatedDate.sh
* Rename a file to its `CreatedDate`.
* Ex: iOS `IMG_0000` filename pattern for photos becomes `yyyyMMdd_NNNN`.
* The extension of the original file is preserved.
* Naming the file by its date of creation ensures that, if date data is written over (ex: during file transfer across operating systems or upload platforms), the numerical name of the file guarantees its ability to be sorted by date.

## SetCreateDateAndModifiedDateByFileName.sh
* The reverse of the `RenameFileNameByCreatedDate.sh` script above.
* If a file is *already named* according to a `yyyyMMdd` date pattern, this script will set a file's `CreateDate` and `ModifiedDate` to reflect the filename. Includes hours-minutes.

## StripExifDataAndResetModifiedDate.sh
* Requires [imagemagick.org](https://imagemagick.org/) commandline tool for `mogrify` command.
* Requires files to be named according to `yyyyMMdd` pattern.
* Preserves the original filename.
* Strips EXIF data (which is a useful for photos).
* Resets the `ModifiedDate` to be the same month-day-year date as the `CreatedDate`. Resets hours-minutes-seconds to `00:00:00`.
  * The use case for this is to avoid the unfortunate tendency of some file organization programs, such as Apple's *Photos* app, to prefer arranging files according to their `ModifiedDate` regardless of the `CreatedDate`.
