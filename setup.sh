#!/bin/bash

echo "Downloading raw dictionary files ..."
echo

curl -L \
    http://sudachi.s3-website-ap-northeast-1.amazonaws.com/sudachidict-raw/20240716/small_lex.zip > small_lex.zip

curl -L \
    http://sudachi.s3-website-ap-northeast-1.amazonaws.com/sudachidict-raw/20240716/core_lex.zip > core_lex.zip

curl -L \
    http://sudachi.s3-website-ap-northeast-1.amazonaws.com/sudachidict-raw/20240716/notcore_lex.zip > notcore_lex.zip

unzip -j small_lex.zip -d small_lex
unzip -j core_lex.zip -d core_lex
unzip -j notcore_lex.zip -d notcore_lex

mv small_lex/small_lex.csv resources/small_lex.csv
mv core_lex/core_lex.csv resources/core_lex.csv
mv notcore_lex/notcore_lex.csv resources/notcore_lex.csv

rm -rf small_lex.zip small_lex core_lex.zip core_lex notcore_lex.zip notcore_lex

echo
echo "Placed raw dictionary files to \`resources\` ."

echo
echo "Downloading matrix definition files ..."

curl -L \
    http://sudachi.s3-website-ap-northeast-1.amazonaws.com/sudachidict-raw/matrix.def.zip > matrix_def.zip

unzip -j matrix_def.zip -d matrix_def

mv matrix_def/matrix.def resources/matrix.def

rm -rf matrix_def.zip matrix_def

echo
echo "Placed matrix definition files to \`resources\` ."

DICT_VERSION=${1:-"latest"}
DICT_TYPE=${2:-"full"}

DICT_NAME="sudachi-dictionary-${DICT_VERSION}-${DICT_TYPE}"

echo
echo "Downloading a dictionary file \`${DICT_NAME}\` ..."
echo

curl -L \
    https://d2ej7fkh96fzlu.cloudfront.net/sudachidict/${DICT_NAME}.zip \
    > ${DICT_NAME}.zip

unzip -j ${DICT_NAME}.zip -d ${DICT_NAME}

mv ${DICT_NAME}/system_${DICT_TYPE}.dic resources/system_full.dic

rm -rf ${DICT_NAME}.zip ${DICT_NAME}

echo
echo "Placed a dictionary file to \`resources/system_full.dic\` ."