#!/bin/bash

BASE="${PWD}/nup715-apostila";

cd ~;
mkdir -p "${BASE}/data";
cd "${BASE}/data";
wget -O - https://codeload.github.com/bioinfonupeb/nup715/tar.gz/main | tar -xz --strip=2 "nup715-main/data";

mkdir -p "${BASE}/backup";
cd "${BASE}/backup";
wget -O - https://codeload.github.com/bioinfonupeb/nup715/tar.gz/main | tar -xz --strip=2 "nup715-main/backup";

mkdir -p "${BASE}/useless-folder";
cd "${BASE}/useless-folder";
wget -O - https://codeload.github.com/bioinfonupeb/nup715/tar.gz/main | tar -xz --strip=2 "nup715-main/useless-folder";
