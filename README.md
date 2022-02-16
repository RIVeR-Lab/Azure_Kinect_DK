# Azure Kinect DK Guide


## Setup and Installation
Currently, Azure Kinect DK is only officially released for Ubuntu 18.04, however the binary for 18.04 can be installed on 20.04 without noticable issue. 
More information can be found [here](https://github.com/microsoft/Azure-Kinect-Sensor-SDK/issues/1263).

To install the drivers, we prepared a bash script `install_lib4a.sh` and a udev rule file in the repos.

Download the bash file and run `./install_lib4a.sh` to install all the packages automatically.

After the installation, copy the `99-k4a.rules` to `/etc/udev/rules.d` and run

`udevadm control --reload-rules && udevadm trigger`  


Lastly, verify the drivers were set up correctly by launching the camera viewer.  
`k4aviewer`  

Sidenote: Make sure the camera is connected to the computer via a USB 3.0 port.

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


## Additional Resources

### Azure Kinect ROS Driver
Microsoft's Kinect ROS Driver can be found here: https://github.com/microsoft/Azure_Kinect_ROS_Driver  

Usage guide: https://github.com/microsoft/Azure_Kinect_ROS_Driver/blob/melodic/docs/usage.md

**If a cmake error regarding the Kinect's SDK version numbers having 3 components when 2 were requested is encountered while building the driver**, edit 
`/usr/lib/cmake/k4abt/k4abtConfig.cmake` and change `find_dependency(k4a 1.3 REQUIRED)` to `find_dependency(k4a 1.3.0 REQUIRED)`
refer to this link: https://github.com/microsoft/Azure_Kinect_ROS_Driver/issues/143  

### Body Tracking
The Azure Kinect offers support for body tracking, both through the normal and ROS SDK. The quickstart guide can be found here:
https://docs.microsoft.com/en-us/azure/kinect-dk/body-sdk-setup

### Python Support
Additional 3rd party repositories for working with the Kinect exclusively in Python are available here:    
pyKinectAzure: https://github.com/ibaiGorordo/pyKinectAzure  
pyk4a: https://github.com/etiennedub/pyk4a  


