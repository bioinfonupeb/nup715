#!/bin/bash

# ======= COPY FILES FROM REPO =======
cd ~
mkdir -p "~/nup715-apostila/data"
cd "~/nup715-apostila/data"
wget -O - https://codeload.github.com/bioinfonupeb/nup715/tar.gz/main | tar -xz --strip=2 "nup715-main/data";

mkdir -p "~/nup715-apostila/backup"
cd "~/nup715-apostila/backup"
wget -O - https://codeload.github.com/bioinfonupeb/nup715/tar.gz/main | tar -xz --strip=2 "nup715-main/backup";

mkdir -p "~/nup715-apostila/useless-folder"
cd "~/nup715-apostila/useless-folder"
wget -O - https://codeload.github.com/bioinfonupeb/nup715/tar.gz/main | tar -xz --strip=2 "nup715-main/useless-folder";
cd ~
