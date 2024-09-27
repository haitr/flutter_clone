#!/bin/bash

echo "Tag packages"
read -p "Package version: " packageVer
read -p "Flutter version: " flutterVer
echo

packages=("riverpod_widget" "rxflutterify" "rxflutterify_binding")

echo "The following cmd lines will be executed:"
echo

for package in ${packages[@]}; do
    tag1="${package}/v${packageVer}"
    tag2="${package}/flutter/v${flutterVer}"
    echo "git tag -d $tag1"
    echo "git push origin --delete $tag1"
    echo "git tag -d $tag2"
    echo "git push origin --delete $tag2"
done

echo
read -p "Execute? (yes/no): " response

if [[ "$response" == "yes" ]]; then
    for package in ${packages[@]}; do
        tag1="${package}/v${packageVer}"
        tag2="${package}/flutter/v${flutterVer}"
        git tag -d $tag1
        git push origin --delete $tag1
        git tag -d $tag2
        git push origin --delete $tag2
    done
else
    echo "Abort!"
fi