# Azure Kinect DK Guide

## Specifications
A detailed summary of the technical specifications can be found here: https://docs.microsoft.com/en-us/azure/kinect-dk/hardware-specification

### Color Camera
The color camera supports 2 aspect ratios: 16:9 and 4:3<br>
| RGB Camera Resolution (HxV) | Aspect Ratio | Frame Rates (FPS) | Nominal FOV (HxV) (post-processed) |
| ----- | ----- | ----- | ----- |
| 3840x2160 | 16:9 | 0, 5, 15, 30 | 90°x59° |
| 2560x1440 | 16:9 | 0, 5, 15, 30 | 90°x59° |
| 1920x1080 | 16:9 | 0, 5, 15, 30 | 90°x59° |
| 1280x720 | 16:9 | 0, 5, 15, 30 | 90°x59° |
| 4096x3072 | 4:3 | 0, 5, 15 | 90°x74.3° |
| 2048x1536 | 4:3 | 0, 5, 15, 30 | 90°x74.3° |

### Depth Camera
The depth camera has NFOV (Narrow Field of View) and WFOV (Wide field of View) support
| Mode                  | Resolution	| FoI       |	FPS	          | Operating range* | Exposure time |
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| NFOV unbinned	        | 640x576     |	75°x65°   |	0, 5, 15, 30  |	0.5 - 3.86m | 12.8 ms | 
| NFOV 2x2 binned (SW)  | 320x288     | 75°x65°	  | 0, 5, 15, 30  | 0.5 - 5.46m | 12.8 ms | 
| WFOV 2x2 binned	      | 512x512	    | 120°x120° | 0, 5, 15, 30  | 0.25 - 2.88m | 12.8 ms |
| WFOV unbinned	        | 1024x1024   | 120°x120°	| 0, 5, 15      | 0.25 - 2.21 m | 20.3 ms |
| Passive IR            | 1024x1024   | N/A	      | 0, 5, 15, 30  | N/A | 1.6 ms |

## Setup and Installation
Currently, Azure Kinect DK is only supported on Ubuntu 18.04. However, the drivers can still be installed by adding Microsoft's 18.04 repo keys to apt.  

First, add the necessary keys to apt:  
`curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -`  
`sudo apt-add-repository https://packages.microsoft.com/ubuntu/18.04/prod`  
`curl -sSL https://packages.microsoft.com/config/ubuntu/18.04/prod.list | sudo tee /etc/apt/sources.list.d/microsoft-prod.list`  
`curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -`  

Then, update the apt list and install the necessary drivers
`sudo apt-get update`  
`sudo apt install libk4a1.3-dev`  
`sudo apt install libk4abt1.0-dev`  
`sudo apt install k4a-tools=1.3.0`  

Lastly, verify the drivers were set up correclty by launching the camer viewer  
`sudo k4aviewer`  

Links
ROS Driver repo
Pyk3a
