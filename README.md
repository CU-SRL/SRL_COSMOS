![SRL Logo](https://www.colorado.edu/studentgroups/cobra/sites/default/files/styles/slider/public/slider/logo_crop.png?itok=jh4F9ZcZ)

# SRL_COSMOS
#### Table of contents
1. [Introduction](#Introduction)
    - [Contributors](#Contributors)
2. [Compilation Instructions](#Compilation-Instructions)
    - [Instructions for installing COSMOS](#Instructions-for-installing-COSMOS)
3. [Usage Instructions](#Usage-Instructions)
4. [Code Version Notes](#Code-Version-Notes)

## Introduction
This is the Ball Aerospace COSMOS repository for the Avionics team of the [Sounding Rocket Laboratory](https://www.colorado.edu/studentgroups/cobra/ "CU Sounding Rocket Laboratory Website") at the University of Colorado, Boulder. This specific branch is for new members to get comfortable coding with COSMOS/cFS.

COSMOS is a ground station framework designed to be used with vehicles of any caliber from Satellite to Rockets to UAVs. The CU Sounding Rocket Laboratory uses this framework as the basis for the ground software that is one the receiving end of the CUSRL CFS Flight Software.

**NOTE: Development and Compilation of COSMOS can happen on any of the supported systems outlined by the [Ball Aerospace COSMOS documentation](https://cosmosrb.com "COSMOS")**

### Contributors
* [Zoe Roy](https://github.com/zroy33 "zroy33")
* [Jason Popich](https://github.com/japopich "japopich")
* [Andrew Lee](https://github.com/anle7157 "anle7157")

---
## Compilation Instructions

    bash <(\curl -sSL https://raw.githubusercontent.com/BallAerospace/COSMOS/cosmos4/vendor/installers/linux_mac/INSTALL_COSMOS.sh)

### Instructions for installing COSMOS

---

#### Installing via Docker (Mac OS)
1. Make sure you have xquartz by running xclock, it should pop up then exit xclock.
2. Install Docker Desktop from https://www.docker.com/get-started
3. Clone the SRL_COSMOS Repository into your ~ folder
4. Open a terminal inside the ~/SRL_COSMOS directory delete the Gemfile.lock file
5. rm -rf Gemfile.lock
6. Then install the cosmos container, inside a terminal type docker pull ballaerospace/cosmos , then let it do it’s thing
7. In xquartz, go to Preferences -> Settings and Check the Allow Network Clients, then restart xquartz

From this point on you have to do this everytime you want to start Cosmos, unless you create an alias

1. **MAKE SURE XQUARTZ IS STARTED**
2. Then in the terminal do xhost + 127.0.0.1
3. Then to start SRL COSMOS use the following command,  docker run --rm -e DISPLAY=host.docker.internal:0 -e QT_X11_NO_MITSHM=1 -p 1234:1234/udp -p 1235:1235/udp -v ~/SRL_COSMOS:/cosmos ballaerospace/cosmos
4. And SRL_COSMOS should now work! :D

---

#### Installing via Docker (Linux)
1. Install Docker using https://docs.docker.com/engine/install/ubuntu/ , if you have a different distro the  side panel has other instructions for them
2. Then clone the SRL_COSMOS Repository into your ~ folder
3. Open a terminal inside the ~/SRL_COSMOS directory delete the Gemfile.lock file
4. rm -rf Gemfile.lock
5. Then install the cosmos container, inside a terminal type docker pull ballaerospace/cosmos , then let it do it’s thing
6. Finally execute SRL COSMOS with the following command: docker run --net=host --rm -e DISPLAY -e QT_X11_NO_MITSHM=1 -v ~/SRL_COSMOS:/cosmos ballaerospace/cosmos
7. And SRL_COSMOS should come up! :D

---

#### Installing via Docker (Windows)
1. Cry…
2. Install Docker using https://www.docker.com/get-started
3. Install MobaXterm https://mobaxterm.mobatek.net
4. Then clone the SRL_COSMOS Repository into your home folder
5. Delete the Gemfile.lock file in SRL_COSMOS
6. Launch MobaXterm, go to Settings -> Configuration -> X11 and set X11 Remote Access to Full, then click Ok
7. Then open a new terminal and take note of the Your DISPLAY is set to X.X.X.X:X0 line and more specifically the ip that is in places of those X’s…
8. Then in the terminal do: set DISPLAY=<My XServer's IP Address ie 10.0.0.1:0.0> where you put the ip address from the DISPLAY line.
9. Then run SRL_COSMOS: docker run --rm -e DISPLAY -e QT_X11_NO_MITSHM=1 -v C:/Users/<user>/SRL_COSMOS:/cosmos ballaerospace/cosmos
10. And it should run! :D

---
## Usage Instructions

** TO DO **
