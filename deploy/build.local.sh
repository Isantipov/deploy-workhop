set -e
dotnet publish ../CoreApi/CoreApi.csproj -c Release -r linux-x64
touch ../CoreApi/bin/Release/netcoreapp2.0/linux-x64/publish.zip
rm ../CoreApi/bin/Release/netcoreapp2.0/linux-x64/publish.zip
cd ../CoreApi/bin/Release/netcoreapp2.0/linux-x64/publish
zip -r ../publish.zip *
artifactPath="$(pwd)/publish.zip"
echo $artifactPath