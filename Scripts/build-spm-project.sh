#!/bin/sh

# Run this script if you've added any new files or folders to the project

# Check that folder structure is right
if ! ([ -d "delighted/Assets" ] && [ -d "delighted/Classes" ]); then
    echo "Please check that delighted folder exists"
    exit 1
fi

# Clean build folders to remove old files
rm -rf Sources/Delighted/Classes
rm -rf Sources/Delighted/Resources

# Create SPM folders if needed
mkdir -p Sources/Delighted/Classes
mkdir -p Sources/Delighted/Resources

# Make symbolic links for all classes
cd Sources/Delighted/Classes
ln -s ../../../delighted/Classes/* ./
echo "Finished copying class files"

echo "Xcode doesn't support symlinks for assets catalogs yet, so we need to copy them"
cd -
cp -R delighted/Assets/Assets.xcassets Sources/Delighted/Resources

echo "Finished creating SPM files, build the project in Xcode to ensure there are no errors"
exit 0
