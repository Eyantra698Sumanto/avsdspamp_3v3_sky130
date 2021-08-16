# avsdspamp_3v3_sky130
This project focuses on design of a Sziklai Pair Amplifier using Google Skywater (sky130) Technology node with operating voltage of 1.8V and 3.3V. The project is build using Open Source Tools like Magic, Sky130PDK and eSim. Refer following website for more details on Sziklai Amplifier: https://en.wikipedia.org/wiki/Sziklai_pair.
# Table of Contents
- [Opensource Tools used:](#opensource-tools-used-)
- [Performance Specifications](#performance-specifications)
- [Block Diagram](#block-diagram)
- [Cloning the Project](#cloning-the-project)
- [Installation Instructions](#installation-instructions)
  * [eSim Installation](#esim-installation)
  * [Ngspice Installation](#ngspice-installation)
  * [Skywater Pdk Installation(Ubuntu)](#skywater-pdk-installation-ubuntu-)
  * [Magic Installation(Ubuntu)](#magic-installation-ubuntu-)
- [Prelayout Simulation in eSim and Ngspice](#prelayout-simulation-in-esim-and-ngspice)
  * [Schematic:](#schematic-)
  * [Adding Simulation parameters:](#adding-simulation-parameters-)
  * [Adding Sky130 parameters](#adding-sky130-parameters)
  * [Simulations in Ngspice](#simulations-in-ngspice)
      - [Output Vs. Input Plot](#output-vs-input-plot)
      - [Frequency Response Plot](#frequency-response-plot)
      - [Output Vs.Supply Plot](#output-vssupply-plot)
      - [Current Gain Vs. Output](#current-gain-vs-output)
- [Layout design in Magic](#layout-design-in-magic)
- [Post Layout Simulation](#post-layout-simulation)
  * [Output Vs. Input](#output-vs-input)
  * [Frequency Response Plot](#frequency-response-plot-1)
  * [Output Vs.Supply Plot](#output-vssupply-plot-1)
  * [Current Gain Vs. Output Plot](#current-gain-vs-output-plot)
- [Differences between Prelayout and Postlayout and Why?](#differences-between-prelayout-and-postlayout-and-why-)
- [Future Scope](#future-scope)
- [Contributor](#contributor)
- [Acknowledgments](#acknowledgments)




# Opensource Tools used:
1. eSim: eSim (previously known as Oscad / FreeEDA) is a free/libre and open source EDA tool for circuit design, simulation, analysis and PCB design developed by FOSSEE, IIT Bombay. It is an integrated tool    built using free/libre and open source software such as KiCad, Ngspice and GHDL. eSim is released under GPL. eSim offers similar capabilities and ease of use as any equivalent proprietary software for schematic creation, simulation and PCB design, without having to pay a huge amount of money to procure licenses. Hence it can be an affordable alternative to educational institutions and SMEs. It can serve as an alternative to commercially available/licensed software tools like OrCAD, Xpedition and HSPICE. For more info refer: https://esim.fossee.in/home

2. Ngspice: Ngspice is the open source spice simulator for electric and electronic circuits. Ngspice offers a wealth of device models for active, passive, analog, and digital elements. Model parameters are provided by the semiconductor manufacturers. The user add her circuits as a netlist, and the output is one or more graphs of currents, voltages and other electrical quantities or is saved in a data file. For more info refer: http://ngspice.sourceforge.net/

3. Skywater Pdk: The SkyWater Open Source PDK is a collaboration between Google and SkyWater Technology Foundry to provide a fully open source Process Design Kit and related resources, which can be used to create manufacturable designs at SkyWater’s facility. As of May 2020, this repository is targeting the SKY130 process node. If the SKY130 process node release is successful then in the future more advanced technology nodes may become available. For more info refer: https://github.com/google/skywater-pdk, https://skywater-pdk.readthedocs.io/en/latest/

4. Magic: Magic is a venerable VLSI layout tool, written in the 1980's at Berkeley by John Ousterhout, now famous primarily for writing the scripting interpreter language Tcl. Due largely in part to its liberal Berkeley open-source license, magic has remained popular with universities and small companies. The open-source license has allowed VLSI engineers with a bent toward programming to implement clever ideas and help magic stay abreast of fabrication technology. However, it is the well thought-out core algorithms which lend to magic the greatest part of its popularity. Magic is widely cited as being the easiest tool to use for circuit layout, even for people who ultimately rely on commercial tools for their product design flow. For more info refer: http://opencircuitdesign.com/magic/
# Performance Specifications
![image](https://user-images.githubusercontent.com/58599984/129461331-68a6f874-a4e8-4cdd-95be-a9c0a43c6c28.png)
# Block Diagram
![image](https://user-images.githubusercontent.com/58599984/129461713-bb5363ce-ae54-424c-925a-35917d350eec.png)
# Cloning the Project

Clone this repository using the commands:
```
$ sudo apt install -y git
$ git clone https://github.com/Eyantra698Sumanto/avsdspamp_3v3_sky130
```
# Installation Instructions

## eSim Installation
 Refer the following websites for installation of eSim :
 - https://static.fossee.in/esim/installation-files/Install_eSim_on_Windows.pdf
 - https://github.com/FOSSEE/eSim/blob/master/INSTALL
 
## Ngspice Installation
Ngspice gets installed alongwith eSim. If any other version ids to be installed refer: http://ngspice.sourceforge.net/download.html

## Skywater Pdk Installation(Ubuntu)
Open the terminal and follow these steps:
```
git clone git://opencircuitdesign.com/open_pdks
cd open_pdks
./configure --enable-sky130-pdk
make
sudo make install
```
## Magic Installation(Ubuntu)
Open the terminal and follow these steps:
```
git clone git://opencircuitdesign.com/magic
cd magic
sudo ./configure
sudo make
sudo make install
```
# Prelayout Simulation in eSim and Ngspice
Refer following manual to know how to operate eSim:
https://static.fossee.in/esim/manuals/eSim_Manual_2020_August.pdf

## Schematic:
![image](https://user-images.githubusercontent.com/58599984/129329373-0a1d559d-ea69-4e7b-a3be-fd6a4a94b39e.png)

## Adding Simulation parameters:
![image](https://user-images.githubusercontent.com/58599984/129331747-93d715c6-b459-4159-aa33-c40ed329a2fa.png)

## Adding Sky130 parameters
Add the sky130 devices and the libraries in .cir.out file

## Simulations in Ngspice
Check here how to run Ngspice: http://ngspice.sourceforge.net/ngspice-tutorial.html

#### Output Vs. Input Plot
Run the following commands in the terminal:
```
$cd avsdspamp_3v3_sky130/Prelayout/simulations
$ngspice spamp_tran.cir
```
![image](https://user-images.githubusercontent.com/58599984/129341595-c651022b-e348-40f2-9c79-d18f0bd81222.png)
#### Frequency Response Plot
Run the following commands in the terminal:
```
$cd avsdspamp_3v3_sky130/Prelayout/simulations
$ngspice spamp_ac.cir
```
![image](https://user-images.githubusercontent.com/58599984/129341478-4a592d15-2104-48dc-961c-9352e0b7fd01.png)
#### Output Vs.Supply Plot
Run the following commands in the terminal:
```
$cd avsdspamp_3v3_sky130/Prelayout/simulations
$ngspice spamp_supplyana.cir
```
![image](https://user-images.githubusercontent.com/58599984/129341687-98aeffb1-518b-42dd-b6ce-bce8a91a4590.png)
#### Current Gain Vs. Output
Run the following commands in the terminal:
```
$cd avsdspamp_3v3_sky130/Prelayout/simulations
$ngspice spamp_current.cir
```
![image](https://user-images.githubusercontent.com/58599984/129341346-f39001ab-e3de-4f7d-94dd-6a4f87938570.png)

# Layout design in Magic

Copy and paste the sky130A.tech file and execute following command in terminal:
```
magic -T sky130A.tech
```
Layout:<br />

![spamplayout](https://user-images.githubusercontent.com/58599984/129605210-0f8d863e-2740-4376-a675-8a4d60a56a17.PNG)


(Note: Take care of the DRC errors while designing layout)

After designing the layout run following command in tkcon terminal:

![image](https://user-images.githubusercontent.com/58599984/129332999-55c4ed9f-474e-463f-b694-d3d45ea20841.png)

The spice code will get generated.

# Post Layout Simulation
Save the spice code as .cir file and add the simulation parameters and sky130 libraries.</br>

The simulation waveforms are as follows:
## Output Vs. Input
Run the following commands in the terminal:
```
$cd avsdspamp_3v3_sky130/Post_Layout_Simulations
$ngspice spamp_tran.cir
```
![Input-Output_plot](https://user-images.githubusercontent.com/58599984/129573537-8856f582-f0d5-4b7b-8e0b-c4343ee0f1a3.PNG)
## Frequency Response Plot
Run the following commands in the terminal:
```
$cd avsdspamp_3v3_sky130/Post_Layout_Simulations
$ngspice spamp_ac.cir
```
![frequency response](https://user-images.githubusercontent.com/58599984/129573572-36b7d75c-da73-4a3a-b7ba-f1e22e4d8858.PNG)
## Output Vs.Supply Plot
Run the following commands in the terminal:
```
$cd avsdspamp_3v3_sky130/Post_Layout_Simulations
$ngspice spamp_supplyana.cir
```
![output vs supply](https://user-images.githubusercontent.com/58599984/129573604-6fd3df2b-f6e0-431b-8828-87e0958f5e75.PNG)
## Current Gain Vs. Output Plot
Run the following commands in the terminal:
```
$cd avsdspamp_3v3_sky130/Post_Layout_Simulations
$ngspice spamp_current.cir
```
![current gain vs output](https://user-images.githubusercontent.com/58599984/129573451-5e2de215-94d5-4e3c-8ad3-052ffaac67da.PNG)



# Differences between Prelayout and Postlayout and Why?
1. There is a fall in the gain and changes in other plots as well of postlayout simulation due to various reasons like very high resistances in order of MegaOhms and GigaOhms is difficult to achieve as the length of the resistor is very high for these ranges.
2. There is a change in frequency response  as high value of capacitance of order of micro and milli Farad is difficult to achieve as the size increases. There are various other reasons like substrate capacitance and various other stray capacitances.
3. Also at high values of resistors and capacitors, accurately calculating the sizes becomes a important facors. Slight variation results in errors.

# Future Scope
More accurate responses can be achieved if the above drawbacks can be considered. Any other material for the layout of resistors and capacitors can also be used for better results.

# Contributor
Sumanto Kar</br>
Contact: jeetsumanto123@gmail.com</br>

Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalghosh@gmail.com

# Acknowledgments
Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalghosh@gmail.com



