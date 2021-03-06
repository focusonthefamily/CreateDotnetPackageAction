#!/bin/bash
set -euxo pipefail
workingDirectory=$(pwd)
cd $(find $workingDirectory -type f -name '*.sln' | dirname xargs-0)
dotnet restore
dotnet test
dotnet publish --no-restore -r linux-x64 --configuration Release --self-contained true
publishDirectory=$(find $workingDirectory -type d -name 'publish' -path "*${1}*")
if [ -z $publishDirectory ]; then
    echo "no publish directory found, cancelling package creation"
    exit 1;
fi

cd $publishDirectory
zip -r release.zip .
mv release.zip $workingDirectory/release.zip
cd $workingDirectory