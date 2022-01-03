#!/bin/bash

set -euf

usage () {
    echo "USAGE: $0 PROJECT_NAME"
}

if [ "$#" != 1 ]; then
    usage
    exit 1
fi

PROJECT_NAME="$1"

sed -i "s/WEBPACK_PROJECT/$PROJECT_NAME/g" README.md package.json src/index.js
sed -i "/^package-lock.json/d" .gitignore
sed -i "5,$d" README.md

cat <<EOF
./initialize.sh completed for $PROJECT_NAME

To complete initialization and push your first commit:
- Run: git rm initialize.sh
- Run: npm install
- Run: git add .
- Run: git commit -m "Initialize $PROJECT_NAME"

Once done treat this as a regular webpack project
- Update README.md with whatever you like.
- Add project specific packages to package.json follwed by npm install to add them
- write javascript code in src/
EOF
