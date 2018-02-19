# B-Hive Lab

## 1. Prerequisites
In order to get started with our FreeSWITCH and Linux lessons, you'll need to download and install
following softwares if you dont have them on your machine.

1. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [Vagrant](https://www.vagrantup.com/downloads.html)
3. If you're on Windows and don't have Git, please install Git client from [here](https://git-scm.com/download/win)
4. Editor of your choice, recommendations:
  * [Visual Studio Code](https://code.visualstudio.com)
  * [Sublime Text](https://www.sublimetext.com)
  
## 2. Checkout Git Repo
Please checkout this git repo on your machine by running. If you're on Windows and have installed Git from step 3 above,
you may use **Git Bash** for closning this repo.
```sh
git clone https://github.com/xbpio/bhive-lab.git
```

## 3. Run Your Instance
Please `cd` into your `bhive-lab` directory from your `terminal` of choice. If you're on Windows it's recommended to use
**Git Bash** installed in step 3 of prerequisites.

Once you're in the `bhive-lab` please run following command:
```sh
vagrant up
```

By running `vagrant up` it will download the `Debian 8` base image for you and installed **FreeSWITCH** and other required
softwares needed for our lessons.

Please note, this **Vagrant** image uses `bridge` network as opposed to private NATed network for the purpose of easier
testing and interop with our servers.

Once you run `vagrant up` it will ask you about which network interface you'd like to use for your instance, the prompt
is different based on your OS, but generally it would look like something like below:
```
==> default: Available bridged network interfaces:
1) en0: Wi-Fi (AirPort)
2) en3: Thunderbolt 1
3) en1: Thunderbolt 2
4) en4: Thunderbolt 3
5) en2: Thunderbolt 4
6) p2p0
7) awdl0
8) bridge0
9) vnic0
10) vnic1
11) en5: USB Ethernet(?)
```

All you need to do is to enter the interface number depending if you are on a wired or wireless network.

Please grab a coffee until the base image is downloaded and provisioned. Once the instance is up, you can connect
to the instance by running:
```sh
vagrant ssh
```

To become `root` after you've successfully logged into the instance you may run:
```sh
sudo su
```

## 4. Vagrant Cheat Sheet
### Starting Vagrant
```sh
vagrant up
```

### Connecting To Your Instance
```sh
vagrant ssh
```

### Stopping Vagrant
```sh
vagrant halt
```

### Destroying The Instance
```sh
vagrant destroy
```

### Re-provisioning The Instance
In case in future our [provision.sh](https://github.com/xbpio/bhive-lab/blob/master/provision.sh) changes, we would need to
re-provision our Vagrant instance with running following:
```sh
vagrant provision
```
