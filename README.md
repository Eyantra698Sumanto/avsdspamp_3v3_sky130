# avsdspamp_3v3_sky130
This project focuses on design of a Sziklai Pair Amplifier using Google Skywater (sky130) Technology node with operating voltage of 1.8V and 3.3V. The project is build using Open Source Tools like Magic, Sky130PDK and eSim.

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
# Prelayout Simulation in eSim
Refer following manual to know how to operate eSim:
https://static.fossee.in/esim/manuals/eSim_Manual_2020_August.pdf

## Schematic:
![image](https://user-images.githubusercontent.com/58599984/129329373-0a1d559d-ea69-4e7b-a3be-fd6a4a94b39e.png)

## Adding Simulation parameters:
![image](https://user-images.githubusercontent.com/58599984/129331747-93d715c6-b459-4159-aa33-c40ed329a2fa.png)

## Adding Sky130 parameters
Add the sky130 devices and the library in .cir.out file

## Simulations in Ngspice
![input-output_plot](https://user-images.githubusercontent.com/58599984/129332107-9435e758-0385-41d4-bd6b-f4d35075cb35.png)
![frequency response](https://user-images.githubusercontent.com/58599984/129332147-d9cbb354-3b96-412e-b862-f02be457fc6c.png)
![output vs supply](https://user-images.githubusercontent.com/58599984/129332330-47d429b8-8518-4993-9fd2-36a5cee7bcb4.png)
![current gain vs output](https://user-images.githubusercontent.com/58599984/129332293-a3cb5dc9-5de1-4f3c-822d-fd3cca2c3879.png)

# Layout design in Magic

Copy and paste the sky130A.tech file and execute following command in terminal:
```
magic -T sky130A.tech
```
Layout:<br />
![spamplayout](https://user-images.githubusercontent.com/58599984/129332680-df117d8c-6ee7-43dc-9068-7c2a33f26044.PNG)

After designing the layout run following command in tkcon terminal:

![image](https://user-images.githubusercontent.com/58599984/129332999-55c4ed9f-474e-463f-b694-d3d45ea20841.png)
