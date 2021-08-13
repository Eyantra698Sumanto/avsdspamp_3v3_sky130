# avsdspamp_3v3_sky130
This project focuses on design of a Sziklai Pair Amplifier using Google Skywater (sky130) Technology node with operating voltage of 1.8V and 3.3V. The project is build using Open Source Tools like Magic, Sky130PDK and eSim.
- [Opensource Tools used:](#opensource-tools-used-)
- [Installation Instructions](#installation-instructions)
  * [eSim Installation:](#esim-installation-)
  * [Ngspice Installation:](#ngspice-installation-)
  * [Skywater Pdk Installation(Ubuntu):](#skywater-pdk-installation-ubuntu--)
  * [Magic Installation(Ubuntu):](#magic-installation-ubuntu--)
- [Prelayout Simulation in eSim and Ngspice](#prelayout-simulation-in-esim-and-ngspice)
  * [Schematic:](#schematic-)
  * [Adding Simulation parameters:](#adding-simulation-parameters-)
  * [Adding Sky130 parameters](#adding-sky130-parameters)
  * [Simulations in Ngspice](#simulations-in-ngspice)
      - [Output Vs. Input Plot:](#output-vs-input-plot-)
      - [Frequency Response Plot:](#frequency-response-plot-)
      - [Output Vs.Supply Plot](#output-vssupply-plot)
      - [Current Gain Vs. Output](#current-gain-vs-output)
- [Layout design in Magic](#layout-design-in-magic)
- [Post Layout Simulation](#post-layout-simulation)
  * [Output Vs. Input](#output-vs-input)
  * [Frequency Response Plot:](#frequency-response-plot--1)
  * [Output Vs.Supply Plot:](#output-vssupply-plot-)
  * [Current Gain Vs. Output Plot:](#current-gain-vs-output-plot-)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>


# Opensource Tools used:
1. eSim: eSim (previously known as Oscad / FreeEDA) is a free/libre and open source EDA tool for circuit design, simulation, analysis and PCB design developed by FOSSEE, IIT Bombay. It is an integrated tool    built using free/libre and open source software such as KiCad, Ngspice and GHDL. eSim is released under GPL. eSim offers similar capabilities and ease of use as any equivalent proprietary software for schematic creation, simulation and PCB design, without having to pay a huge amount of money to procure licenses. Hence it can be an affordable alternative to educational institutions and SMEs. It can serve as an alternative to commercially available/licensed software tools like OrCAD, Xpedition and HSPICE. For more info refer: https://esim.fossee.in/home

2. Ngspice: Ngspice is the open source spice simulator for electric and electronic circuits. Ngspice offers a wealth of device models for active, passive, analog, and digital elements. Model parameters are provided by the semiconductor manufacturers. The user add her circuits as a netlist, and the output is one or more graphs of currents, voltages and other electrical quantities or is saved in a data file. For more info refer: http://ngspice.sourceforge.net/

3. Skywater Pdk: The SkyWater Open Source PDK is a collaboration between Google and SkyWater Technology Foundry to provide a fully open source Process Design Kit and related resources, which can be used to create manufacturable designs at SkyWater’s facility. As of May 2020, this repository is targeting the SKY130 process node. If the SKY130 process node release is successful then in the future more advanced technology nodes may become available. For more info refer: https://github.com/google/skywater-pdk

4. Magic: Magic is a venerable VLSI layout tool, written in the 1980's at Berkeley by John Ousterhout, now famous primarily for writing the scripting interpreter language Tcl. Due largely in part to its liberal Berkeley open-source license, magic has remained popular with universities and small companies. The open-source license has allowed VLSI engineers with a bent toward programming to implement clever ideas and help magic stay abreast of fabrication technology. However, it is the well thought-out core algorithms which lend to magic the greatest part of its popularity. Magic is widely cited as being the easiest tool to use for circuit layout, even for people who ultimately rely on commercial tools for their product design flow. For more info refer: http://opencircuitdesign.com/magic/

# Installation Instructions

## eSim Installation:
 Refer the following websites for installation of eSim :
 - https://static.fossee.in/esim/installation-files/Install_eSim_on_Windows.pdf
 - https://github.com/FOSSEE/eSim/blob/master/INSTALL
 
## Ngspice Installation:
Ngspice gets installed alongwith eSim. If any other version ids to be installed refer: http://ngspice.sourceforge.net/download.html

## Skywater Pdk Installation(Ubuntu):
Open the terminal and follow these steps:
```
git clone git://opencircuitdesign.com/open_pdks
cd open_pdks
./configure --enable-sky130-pdk
make
sudo make install
```
## Magic Installation(Ubuntu):
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
#### Output Vs. Input Plot:
![image](https://user-images.githubusercontent.com/58599984/129341595-c651022b-e348-40f2-9c79-d18f0bd81222.png)
#### Frequency Response Plot:
![image](https://user-images.githubusercontent.com/58599984/129341478-4a592d15-2104-48dc-961c-9352e0b7fd01.png)
#### Output Vs.Supply Plot
![image](https://user-images.githubusercontent.com/58599984/129341687-98aeffb1-518b-42dd-b6ce-bce8a91a4590.png)
#### Current Gain Vs. Output
![image](https://user-images.githubusercontent.com/58599984/129341346-f39001ab-e3de-4f7d-94dd-6a4f87938570.png)

# Layout design in Magic

Copy and paste the sky130A.tech file and execute following command in terminal:
```
magic -T sky130A.tech
```
Layout:<br />

![spamplayout](https://user-images.githubusercontent.com/58599984/129332680-df117d8c-6ee7-43dc-9068-7c2a33f26044.PNG)

(Note: Take care of the DRC errors while designing layout)

After designing the layout run following command in tkcon terminal:

![image](https://user-images.githubusercontent.com/58599984/129332999-55c4ed9f-474e-463f-b694-d3d45ea20841.png)

The spice code will get generated.

# Post Layout Simulation
Save the spice code as .cir file and add the simulation parameters and sky130 libraries.</br>
Run the following command:

![image](https://user-images.githubusercontent.com/58599984/129340189-c6730900-00c4-4efb-a987-c0902d854456.png)

The simulation waveforms are as follows:
## Output Vs. Input
![Input-Output_plot](https://user-images.githubusercontent.com/58599984/129340273-ab29acf6-76a5-4b94-ab42-199a5358779f.PNG)
## Frequency Response Plot:
![frequency response](https://user-images.githubusercontent.com/58599984/129340942-1f36ab3f-cd1b-4ed4-a36b-bee9fd49fc4e.PNG)
## Output Vs.Supply Plot:
![output vs supply](https://user-images.githubusercontent.com/58599984/129341127-6f559d94-f1e1-414b-b1ce-2f98c273af7e.PNG)
## Current Gain Vs. Output Plot:
![current gain vs output](https://user-images.githubusercontent.com/58599984/129341017-c50d77df-5ea1-4ca0-978f-01a8b12fa353.PNG)



