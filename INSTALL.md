# Prerequisites

This project is only tested in WSL2.

# Installation

To set up the repository:

	git clone https://github.com/jellees/mlss
	git clone https://github.com/jiangzhengwenjz/agbcc

	cd ./agbcc
    git checkout new_newlib_pret
	./build.sh
	./install.sh ../mlss

	cd ../mlss

To build run

    make

# Notes

For this project I opted to use `jiangzhengwenjz/agbcc` for the debug_line fix. This project should also compile matching with `pret/agbcc`.