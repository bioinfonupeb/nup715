#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt autoremove
sudo apt autoclean

installers_folder="$HOME/programinstallers";
if [[ ! -e "${installers_folder}" ]]; then
	echo "Creating new folder: ${installers_folder}";
	mkdir -p "${installers_folder}";
fi

# ======= Make  =======
echo "=== Make  ===";
mycommand="make";
if ! command -v "${mycommand}" &> /dev/null
then
	echo "Command ${mycommand}: not found";
	echo "Install process begining: ${mycommand}";
	sudo apt install -y ${mycommand};
	echo "Install process ended: ${mycommand}";
	exit;
else
	echo "Command ${mycommand}: found";
fi


# ======= G++  =======
echo "=== G++  ===";
mycommand="g++";
if ! command -v "${mycommand}" &> /dev/null
then
	echo "Command ${mycommand}: not found";
	echo "Install process begining: ${mycommand}";
	# sudo apt-get install -y gcc-3.4 g++-3.4
	sudo apt install -y ${mycommand};n
	echo "Install process ended: ${mycommand}";
	exit;
else
	echo "Command ${mycommand}: found";
fi


# ======= CMake  =======
echo "=== CMake  ===";
mycommand="cmake";
if ! command -v "${mycommand}" &> /dev/null
then
	echo "Command ${mycommand}: not found";
	echo "Install process begining: ${mycommand}";
	sudo apt install -y ${mycommand};
	sudo apt-get install -y --reinstall pkg-config cmake-data
	echo "Install process ended: ${mycommand}";
	exit;
else
	echo "Command ${mycommand}: found";
fi


# ======= prinseq-lite =======
echo "=== prinseq-lite ===";
mycommand="prinseq-lite";
if ! command -v "${mycommand}" &> /dev/null
then
	echo "Command ${mycommand}: not found";
	echo "Install process begining: ${mycommand}";

	# Change to install folder
	cd "$installers_folder";
	# Copy prinseq-lite from source
	wget -N http://downloads.sourceforge.net/project/prinseq/standalone/prinseq-lite-0.20.4.tar.gz
	# Extract source
	tar -zxvf prinseq-lite-0.20.4.tar.gz
	# Copy binnary to system
	cp -puv prinseq-lite-0.20.4/prinseq-lite.pl /usr/local/bin/prinseq-lite && chmod +x /usr/local/bin/prinseq-lite
	cp -puv prinseq-lite-0.20.4/prinseq-graphs.pl /usr/local/bin/prinseq-graphs && chmod +x /usr/local/bin/prinseq-graphs
	# Cleanup
	rm prinseq-lite-0.20.4 -rf
	# Change to user folder
	cd ~

	echo "Install process ended: ${mycommand}";
	exit;
else
	echo "Command ${mycommand}: found";
fi


# ======= bowtie2  =======
echo "=== bowtie2  ===";
mycommand="bowtie2";
if ! command -v "${mycommand}" &> /dev/null
then
	echo "Command ${mycommand}: not found";
	echo "Install process begining: ${mycommand}";
	sudo apt install -y ${mycommand};
	echo "Install process ended: ${mycommand}";
	exit;
else
	echo "Command ${mycommand}: found";
fi


# ======= SAMtools =======
echo "=== SAMtools ===";
mycommand="samtools";
if ! command -v "${mycommand}" &> /dev/null
then
	echo "Command ${mycommand}: not found";
	echo "Install process begining: ${mycommand}";

	sudo apt install -y "${mycommand}"

	
	# Change to user folder
	cd ~
	echo "Install process ended: ${mycommand}";
	exit;
else
	echo "Command ${mycommand}: found";
fi


# ======= BCFtools =======
echo "=== BCFtools ===";
mycommand="bcftools";
if ! command -v "${mycommand}" &> /dev/null
then
	echo "Command ${mycommand}: not found";
	echo "Install process begining: ${mycommand}";

	sudo apt install -y "${mycommand}"

	
	# Change to user folder
	cd ~
	echo "Install process ended: ${mycommand}";
	exit;
else
	echo "Command ${mycommand}: found";
fi


# ======= COPY FILES FROM REPO =======
cd ~
mkdir -p "data"
cd "data"
wget -O - https://codeload.github.com/bioinfonupeb/nup715-2021/tar.gz/main | tar -xz --strip=2 "nup715-2021-main/data";
cd ..

mkdir -p "backup"
cd "backup"
wget -O - https://codeload.github.com/bioinfonupeb/nup715-2021/tar.gz/main | tar -xz --strip=2 "nup715-2021-main/backup";
cd ..

mkdir -p "tmp"
cd "tmp"
wget -O - https://codeload.github.com/bioinfonupeb/nup715-2021/tar.gz/main | tar -xz --strip=2 "nup715-2021-main/tmp";
cd ~


