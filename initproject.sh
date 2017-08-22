#!/bin/bash

TEMPLATE_NAME=sublime-project
TEMPLATE=https://github.com/Straeng/sublime-project.git
PROJECT_NAME=$1

# the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"

# the temp directory used, within $DIR
WORK_DIR=`mktemp -d -p "$DIR"`

# check if tmp dir was created
if [[ ! "$WORK_DIR" || ! -d "$WORK_DIR" ]]; then
    echo "Could not create temp dir"
    exit 1
fi

# deletes the temp directory
function cleanup {
    rm -rf "$WORK_DIR"
    echo "Deleted temp working directory $WORK_DIR"
}

trap cleanup EXIT 

git clone $TEMPLATE $WORK_DIR

pushd $WORK_DIR
rm -rf .git
rm README.md
sed -i "s/${TEMPLATE_NAME}/${PROJECT_NAME}/g" CMakeLists.txt
popd

mkdir -p $DIR/$PROJECT_NAME
cp -r $WORK_DIR/. $DIR/$PROJECT_NAME

