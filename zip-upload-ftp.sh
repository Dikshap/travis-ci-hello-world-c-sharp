#!/bin/bash
build_file=bin/Release/travis-ci-hello-world-c-sharp.dll
zip_file=build.zip

echo "Zipping build"
zip -r $zip_file src $file readme.md

if [ -n "$travis_ftp_host" ]; then
	echo "Connecting to ftp server"
	echo $file_full_path
	ftp -n <<OEF
open $travis_ftp_host
user $travis_ftp_user $travis_ftp_pass
put $zip_file
close
bye
OEF
	echo "Uploaded file"
else
	echo "Skipping upload"
fi
