#!/bin/bash

if [ "$#" -eq 1 ]; then
    outputPath="$1/EPIC_KITCHENS_2018"
else
    outputPath="$HOME/Downloads/EPIC_KITCHENS_2018"
fi

if ! [ -x "$(command -v wget)" ]; then
    echo "Error!: wget is not installed! Please install it and try again"
    exit 1
fi

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Downloading into $outputPath"
echo -e "\n### ------------------------------------------------------- ###\n"

epic_download() {
    local url=$1
    local path=$2
    local niceFilePath=$3
    
    echo -ne "# Downloading "$niceFilePath"\t"
    wget --progress=dot -N -P "$path" "$url" 2>&1 | grep --line-buffered "%" | sed -E "s,\.,,g" | awk '{printf("\b\b\b\b%4s", $2)}'
    echo -ne "\b\b\b\b"
    echo " # done"
}

epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_05.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_05.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_06.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_06.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_07.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_07.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_08.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_08.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_09.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_09.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_10.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_10.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_11.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_11.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_12.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_12.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_13.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_13.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_14.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_14.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_15.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_15.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_16.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_16.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/object_detection_images/train/P22/P22_17.tar" "$outputPath/object_detection_images/train/P22" "object_detection_images/train/P22/P22_17.tar"

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### All done!"
echo -e "\n### ------------------------------------------------------- ###\n"