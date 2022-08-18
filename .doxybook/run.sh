#!/bin/bash
if [[ "$1" == "" ]]; then
	echo "Usage: $0 xml-path"
	exit
fi
ROOT_DIR=${0%/*}/..
doxybook2 -i $1 -o ${ROOT_DIR}/reference --summary-input ${ROOT_DIR}/.doxybook/SUMMARY.md.tmpl --summary-output ${ROOT_DIR}/SUMMARY.md --config ${ROOT_DIR}/.doxybook/config.json
sed -i "s/\(index_.*md\)/reference\/\1/" ${ROOT_DIR}/SUMMARY.md
sed -i "s/](Classes\//](reference\/Classes\//" ${ROOT_DIR}/SUMMARY.md
sed -i "s/](Namespaces\//](reference\/Namespaces\//" ${ROOT_DIR}/SUMMARY.md
sed -i "s/](Files\//](reference\/Files\//" ${ROOT_DIR}/SUMMARY.md
find ${ROOT_DIR}/reference -type f -exec sed -i "s/](Classes\//](/" {} \;
find ${ROOT_DIR}/reference -type f -exec sed -i "s/](Namespaces\//](/" {} \;
find ${ROOT_DIR}/reference -type f -exec sed -i "s/](Files\//](/" {} \;