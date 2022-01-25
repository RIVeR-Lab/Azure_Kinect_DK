# Azure Kinect DK Guide

## Specifications
A detailed summary of the technical specifications can be found here: https://docs.microsoft.com/en-us/azure/kinect-dk/hardware-specification

### Color Camera
The color camera supports 2 aspect ratios: 16:9 and 4:3<br>
The 16:9 aspect ratio has 4 native resolutions with a FOV of 90°x59°:
- 1280x720, 1920x1080, 2560x1440, and 3840x2160

The 4:3 aspect ratio has 2 native resolutions with a FOV of 90°x74.3°:
- 2048x1536, 4096x3072

### Depth Camera
The depth camera has NFOV (Narrow Field of View) and WFOV (Wide field of View) support
| Mode                  | Resolution	| FoI       |	FPS	          | Operating range* | Exposure time |
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| NFOV unbinned	        | 640x576     |	75°x65°   |	0, 5, 15, 30  |	0.5 - 3.86m | 12.8 ms | 
| NFOV 2x2 binned (SW)  | 320x288     | 75°x65°	  | 0, 5, 15, 30  | 0.5 - 5.46m | 12.8 ms | 
| WFOV 2x2 binned	      | 512x512	    | 120°x120° | 0, 5, 15, 30  | 0.25 - 2.88m | 12.8 ms |
| WFOV unbinned	        | 1024x1024   | 120°x120°	| 0, 5, 15      | 0.25 - 2.21 m | 20.3 ms |
| Passive IR            | 1024x1024   | N/A	      | 0, 5, 15, 30  | N/A | 1.6 ms |

Specs of DK - important numbers
link to spec sheet

Installation steps for Ubuntu 20.04

Links
ROS Driver repo
Pyk3a
