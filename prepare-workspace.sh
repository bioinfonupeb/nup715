#!/bin/bash

cd ~;
BASE="${PWD}";

NEWDIR="${BASE}/data";
mkdir -p "${NEWDIR}";
cd "${NEWDIR}";
wget -O - https://codeload.github.com/bioinfonupeb/nup715/tar.gz/main | tar -xz --strip=2 "nup715-main/data";

NEWDIR="${BASE}/backup";
mkdir -p "${NEWDIR}";
cd "${NEWDIR}";
wget -O - https://codeload.github.com/bioinfonupeb/nup715/tar.gz/main | tar -xz --strip=2 "nup715-main/backup";

NEWDIR="${BASE}/useless-folder";
mkdir -p "${NEWDIR}";
cd "${NEWDIR}";
wget -O - https://codeload.github.com/bioinfonupeb/nup715/tar.gz/main | tar -xz --strip=2 "nup715-main/useless-folder";

cd "${BASE}";
