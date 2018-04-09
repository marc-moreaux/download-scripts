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

epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P01/P01_11.MP4" "$outputPath/videos/test/P01" "videos/test/P01/P01_11.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P01/P01_12.MP4" "$outputPath/videos/test/P01" "videos/test/P01/P01_12.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P01/P01_13.MP4" "$outputPath/videos/test/P01" "videos/test/P01/P01_13.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P01/P01_14.MP4" "$outputPath/videos/test/P01" "videos/test/P01/P01_14.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P01/P01_15.MP4" "$outputPath/videos/test/P01" "videos/test/P01/P01_15.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P02/P02_12.MP4" "$outputPath/videos/test/P02" "videos/test/P02/P02_12.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P02/P02_13.MP4" "$outputPath/videos/test/P02" "videos/test/P02/P02_13.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P02/P02_14.MP4" "$outputPath/videos/test/P02" "videos/test/P02/P02_14.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P02/P02_15.MP4" "$outputPath/videos/test/P02" "videos/test/P02/P02_15.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P03/P03_21.MP4" "$outputPath/videos/test/P03" "videos/test/P03/P03_21.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P03/P03_22.MP4" "$outputPath/videos/test/P03" "videos/test/P03/P03_22.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P03/P03_23.MP4" "$outputPath/videos/test/P03" "videos/test/P03/P03_23.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P03/P03_24.MP4" "$outputPath/videos/test/P03" "videos/test/P03/P03_24.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P03/P03_25.MP4" "$outputPath/videos/test/P03" "videos/test/P03/P03_25.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P03/P03_26.MP4" "$outputPath/videos/test/P03" "videos/test/P03/P03_26.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P04/P04_24.MP4" "$outputPath/videos/test/P04" "videos/test/P04/P04_24.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P04/P04_25.MP4" "$outputPath/videos/test/P04" "videos/test/P04/P04_25.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P04/P04_26.MP4" "$outputPath/videos/test/P04" "videos/test/P04/P04_26.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P04/P04_27.MP4" "$outputPath/videos/test/P04" "videos/test/P04/P04_27.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P04/P04_28.MP4" "$outputPath/videos/test/P04" "videos/test/P04/P04_28.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P04/P04_29.MP4" "$outputPath/videos/test/P04" "videos/test/P04/P04_29.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P04/P04_30.MP4" "$outputPath/videos/test/P04" "videos/test/P04/P04_30.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P04/P04_31.MP4" "$outputPath/videos/test/P04" "videos/test/P04/P04_31.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P04/P04_32.MP4" "$outputPath/videos/test/P04" "videos/test/P04/P04_32.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P04/P04_33.MP4" "$outputPath/videos/test/P04" "videos/test/P04/P04_33.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P05/P05_07.MP4" "$outputPath/videos/test/P05" "videos/test/P05/P05_07.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P05/P05_09.MP4" "$outputPath/videos/test/P05" "videos/test/P05/P05_09.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P06/P06_10.MP4" "$outputPath/videos/test/P06" "videos/test/P06/P06_10.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P06/P06_11.MP4" "$outputPath/videos/test/P06" "videos/test/P06/P06_11.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P06/P06_12.MP4" "$outputPath/videos/test/P06" "videos/test/P06/P06_12.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P06/P06_13.MP4" "$outputPath/videos/test/P06" "videos/test/P06/P06_13.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P06/P06_14.MP4" "$outputPath/videos/test/P06" "videos/test/P06/P06_14.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P07/P07_12.MP4" "$outputPath/videos/test/P07" "videos/test/P07/P07_12.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P07/P07_13.MP4" "$outputPath/videos/test/P07" "videos/test/P07/P07_13.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P07/P07_14.MP4" "$outputPath/videos/test/P07" "videos/test/P07/P07_14.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P07/P07_15.MP4" "$outputPath/videos/test/P07" "videos/test/P07/P07_15.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P07/P07_16.MP4" "$outputPath/videos/test/P07" "videos/test/P07/P07_16.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P07/P07_17.MP4" "$outputPath/videos/test/P07" "videos/test/P07/P07_17.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P07/P07_18.MP4" "$outputPath/videos/test/P07" "videos/test/P07/P07_18.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P08/P08_09.MP4" "$outputPath/videos/test/P08" "videos/test/P08/P08_09.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P08/P08_10.MP4" "$outputPath/videos/test/P08" "videos/test/P08/P08_10.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P08/P08_14.MP4" "$outputPath/videos/test/P08" "videos/test/P08/P08_14.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P08/P08_15.MP4" "$outputPath/videos/test/P08" "videos/test/P08/P08_15.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P08/P08_16.MP4" "$outputPath/videos/test/P08" "videos/test/P08/P08_16.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P08/P08_17.MP4" "$outputPath/videos/test/P08" "videos/test/P08/P08_17.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P09/P09_01.MP4" "$outputPath/videos/test/P09" "videos/test/P09/P09_01.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P09/P09_02.MP4" "$outputPath/videos/test/P09" "videos/test/P09/P09_02.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P09/P09_03.MP4" "$outputPath/videos/test/P09" "videos/test/P09/P09_03.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P09/P09_04.MP4" "$outputPath/videos/test/P09" "videos/test/P09/P09_04.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P09/P09_05.MP4" "$outputPath/videos/test/P09" "videos/test/P09/P09_05.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P09/P09_06.MP4" "$outputPath/videos/test/P09" "videos/test/P09/P09_06.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P09/P09_07.MP4" "$outputPath/videos/test/P09" "videos/test/P09/P09_07.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P09/P09_08.MP4" "$outputPath/videos/test/P09" "videos/test/P09/P09_08.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P10/P10_03.MP4" "$outputPath/videos/test/P10" "videos/test/P10/P10_03.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_01.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_01.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_02.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_02.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_03.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_03.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_04.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_04.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_05.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_05.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_06.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_06.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_07.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_07.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_08.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_08.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_09.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_09.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_10.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_10.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_11.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_11.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_12.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_12.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_13.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_13.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_14.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_14.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_15.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_15.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_16.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_16.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_17.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_17.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_18.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_18.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_19.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_19.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_20.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_20.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_21.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_21.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_22.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_22.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_23.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_23.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P11/P11_24.MP4" "$outputPath/videos/test/P11" "videos/test/P11/P11_24.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P12/P12_03.MP4" "$outputPath/videos/test/P12" "videos/test/P12/P12_03.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P12/P12_08.MP4" "$outputPath/videos/test/P12" "videos/test/P12/P12_08.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P13/P13_01.MP4" "$outputPath/videos/test/P13" "videos/test/P13/P13_01.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P13/P13_02.MP4" "$outputPath/videos/test/P13" "videos/test/P13/P13_02.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P13/P13_03.MP4" "$outputPath/videos/test/P13" "videos/test/P13/P13_03.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P14/P14_06.MP4" "$outputPath/videos/test/P14" "videos/test/P14/P14_06.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P14/P14_08.MP4" "$outputPath/videos/test/P14" "videos/test/P14/P14_08.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P15/P15_04.MP4" "$outputPath/videos/test/P15" "videos/test/P15/P15_04.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P15/P15_05.MP4" "$outputPath/videos/test/P15" "videos/test/P15/P15_05.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P15/P15_06.MP4" "$outputPath/videos/test/P15" "videos/test/P15/P15_06.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P16/P16_04.MP4" "$outputPath/videos/test/P16" "videos/test/P16/P16_04.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P17/P17_02.MP4" "$outputPath/videos/test/P17" "videos/test/P17/P17_02.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P18/P18_01.MP4" "$outputPath/videos/test/P18" "videos/test/P18/P18_01.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P18/P18_02.MP4" "$outputPath/videos/test/P18" "videos/test/P18/P18_02.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P18/P18_03.MP4" "$outputPath/videos/test/P18" "videos/test/P18/P18_03.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P18/P18_04.MP4" "$outputPath/videos/test/P18" "videos/test/P18/P18_04.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P18/P18_05.MP4" "$outputPath/videos/test/P18" "videos/test/P18/P18_05.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P18/P18_06.MP4" "$outputPath/videos/test/P18" "videos/test/P18/P18_06.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P18/P18_07.MP4" "$outputPath/videos/test/P18" "videos/test/P18/P18_07.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P18/P18_08.MP4" "$outputPath/videos/test/P18" "videos/test/P18/P18_08.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P18/P18_09.MP4" "$outputPath/videos/test/P18" "videos/test/P18/P18_09.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P18/P18_10.MP4" "$outputPath/videos/test/P18" "videos/test/P18/P18_10.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P18/P18_11.MP4" "$outputPath/videos/test/P18" "videos/test/P18/P18_11.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P18/P18_12.MP4" "$outputPath/videos/test/P18" "videos/test/P18/P18_12.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P19/P19_05.MP4" "$outputPath/videos/test/P19" "videos/test/P19/P19_05.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P19/P19_06.MP4" "$outputPath/videos/test/P19" "videos/test/P19/P19_06.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P20/P20_05.MP4" "$outputPath/videos/test/P20" "videos/test/P20/P20_05.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P20/P20_06.MP4" "$outputPath/videos/test/P20" "videos/test/P20/P20_06.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P20/P20_07.MP4" "$outputPath/videos/test/P20" "videos/test/P20/P20_07.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P21/P21_02.MP4" "$outputPath/videos/test/P21" "videos/test/P21/P21_02.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P22/P22_01.MP4" "$outputPath/videos/test/P22" "videos/test/P22/P22_01.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P22/P22_02.MP4" "$outputPath/videos/test/P22" "videos/test/P22/P22_02.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P22/P22_03.MP4" "$outputPath/videos/test/P22" "videos/test/P22/P22_03.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P22/P22_04.MP4" "$outputPath/videos/test/P22" "videos/test/P22/P22_04.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P23/P23_05.MP4" "$outputPath/videos/test/P23" "videos/test/P23/P23_05.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P24/P24_09.MP4" "$outputPath/videos/test/P24" "videos/test/P24/P24_09.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P25/P25_06.MP4" "$outputPath/videos/test/P25" "videos/test/P25/P25_06.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P25/P25_07.MP4" "$outputPath/videos/test/P25" "videos/test/P25/P25_07.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P25/P25_08.MP4" "$outputPath/videos/test/P25" "videos/test/P25/P25_08.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P26/P26_30.MP4" "$outputPath/videos/test/P26" "videos/test/P26/P26_30.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P26/P26_31.MP4" "$outputPath/videos/test/P26" "videos/test/P26/P26_31.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P26/P26_32.MP4" "$outputPath/videos/test/P26" "videos/test/P26/P26_32.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P26/P26_33.MP4" "$outputPath/videos/test/P26" "videos/test/P26/P26_33.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P26/P26_34.MP4" "$outputPath/videos/test/P26" "videos/test/P26/P26_34.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P26/P26_35.MP4" "$outputPath/videos/test/P26" "videos/test/P26/P26_35.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P26/P26_36.MP4" "$outputPath/videos/test/P26" "videos/test/P26/P26_36.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P26/P26_37.MP4" "$outputPath/videos/test/P26" "videos/test/P26/P26_37.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P26/P26_38.MP4" "$outputPath/videos/test/P26" "videos/test/P26/P26_38.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P26/P26_39.MP4" "$outputPath/videos/test/P26" "videos/test/P26/P26_39.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P26/P26_40.MP4" "$outputPath/videos/test/P26" "videos/test/P26/P26_40.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P26/P26_41.MP4" "$outputPath/videos/test/P26" "videos/test/P26/P26_41.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P27/P27_05.MP4" "$outputPath/videos/test/P27" "videos/test/P27/P27_05.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P28/P28_15.MP4" "$outputPath/videos/test/P28" "videos/test/P28/P28_15.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P28/P28_16.MP4" "$outputPath/videos/test/P28" "videos/test/P28/P28_16.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P28/P28_17.MP4" "$outputPath/videos/test/P28" "videos/test/P28/P28_17.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P28/P28_18.MP4" "$outputPath/videos/test/P28" "videos/test/P28/P28_18.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P28/P28_19.MP4" "$outputPath/videos/test/P28" "videos/test/P28/P28_19.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P28/P28_20.MP4" "$outputPath/videos/test/P28" "videos/test/P28/P28_20.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P28/P28_21.MP4" "$outputPath/videos/test/P28" "videos/test/P28/P28_21.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P28/P28_22.MP4" "$outputPath/videos/test/P28" "videos/test/P28/P28_22.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P28/P28_23.MP4" "$outputPath/videos/test/P28" "videos/test/P28/P28_23.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P28/P28_24.MP4" "$outputPath/videos/test/P28" "videos/test/P28/P28_24.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P28/P28_25.MP4" "$outputPath/videos/test/P28" "videos/test/P28/P28_25.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P28/P28_26.MP4" "$outputPath/videos/test/P28" "videos/test/P28/P28_26.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P29/P29_05.MP4" "$outputPath/videos/test/P29" "videos/test/P29/P29_05.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P29/P29_06.MP4" "$outputPath/videos/test/P29" "videos/test/P29/P29_06.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P30/P30_07.MP4" "$outputPath/videos/test/P30" "videos/test/P30/P30_07.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P30/P30_08.MP4" "$outputPath/videos/test/P30" "videos/test/P30/P30_08.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P30/P30_09.MP4" "$outputPath/videos/test/P30" "videos/test/P30/P30_09.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P31/P31_10.MP4" "$outputPath/videos/test/P31" "videos/test/P31/P31_10.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P31/P31_11.MP4" "$outputPath/videos/test/P31" "videos/test/P31/P31_11.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P31/P31_12.MP4" "$outputPath/videos/test/P31" "videos/test/P31/P31_12.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P32/P32_01.MP4" "$outputPath/videos/test/P32" "videos/test/P32/P32_01.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P32/P32_02.MP4" "$outputPath/videos/test/P32" "videos/test/P32/P32_02.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P32/P32_03.MP4" "$outputPath/videos/test/P32" "videos/test/P32/P32_03.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P32/P32_04.MP4" "$outputPath/videos/test/P32" "videos/test/P32/P32_04.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P32/P32_05.MP4" "$outputPath/videos/test/P32" "videos/test/P32/P32_05.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P32/P32_06.MP4" "$outputPath/videos/test/P32" "videos/test/P32/P32_06.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P32/P32_07.MP4" "$outputPath/videos/test/P32" "videos/test/P32/P32_07.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P32/P32_08.MP4" "$outputPath/videos/test/P32" "videos/test/P32/P32_08.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P32/P32_09.MP4" "$outputPath/videos/test/P32" "videos/test/P32/P32_09.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/test/P32/P32_10.MP4" "$outputPath/videos/test/P32" "videos/test/P32/P32_10.MP4"

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### All done!"
echo -e "\n### ------------------------------------------------------- ###\n"