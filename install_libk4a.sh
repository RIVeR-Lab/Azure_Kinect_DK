#! /usr/bin/env bash
hash lsb_release 2>/dev/null || { echo "ERROR: tool lsb_release needed for analysis"; exit 1; }
os=$(lsb_release -cs)

if [[ $os = "focal" || $os = "bionic" ]]; then
  # Retrieve deb file from 18.04 repository and install them locally without adding ppa
  if [[ "$(dpkg -s libk4a1.4-dev | grep Status | awk '{ print $4 }')" != "installed" ]]; then
	  echo "Retrieving azure kinect packages. Be patient..."
	  curl -sSL https://packages.microsoft.com/ubuntu/18.04/prod/pool/main/libk/libk4a1.4/libk4a1.4_1.4.1_amd64.deb > /tmp/libk4a1.4_1.4.1_amd64.deb
	  curl -sSL https://packages.microsoft.com/ubuntu/18.04/prod/pool/main/libk/libk4a1.4-dev/libk4a1.4-dev_1.4.1_amd64.deb > /tmp/libk4a1.4-dev_1.4.1_amd64.deb
      	  curl -sSL https://packages.microsoft.com/ubuntu/18.04/prod/pool/main/k/k4a-tools/k4a-tools_1.4.1_amd64.deb > /tmp/k4a-tools_1.4.1_amd64.deb
	#   echo 'libk4a1.4 libk4a1.4/accepted-eula-hash string 0f5d5c5de396e4fee4c0753a21fee0c1ed726cf0316204edda484f08cb266d76' | sudo debconf-set-selections
	#   echo 'libk4a1.4 libk4a1.4/accept-eula select true' | sudo debconf-set-selections
          echo 'libk4a packages downloaded under /tmp folder'
	  sudo dpkg -i /tmp/libk4a1.4_1.4.1_amd64.deb
	  sudo dpkg -i /tmp/libk4a1.4-dev_1.4.1_amd64.deb
	  sudo dpkg -i /tmp/k4a-tools_1.4.1_amd64.deb
  fi
else
  echo "Your Ubuntu should be either 18.04 or 20.04 to run this script."
fi
