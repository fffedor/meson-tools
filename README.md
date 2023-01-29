These command line utilities are supposed to be installed on servers dedicated to nodes. 


### Requirements
1. To run the scripts, sshpass is required. **Warning!** Connecting to a production server using sshpass is strongly **not** recommended, password to connect to the server can be disclosed! 
```
apt-get install sshpass
```
2. Each server in the list must have the same password
3. Nodes must be installed on the server under a root user

### Bulk installation of Meson node
1. Set the variables in the script:
```
SSH_PASSWORD=
MESON_TOKEN=
MESON_SSL_PORT=
MESON_CACHE=
```

2. Set up a list of IP addresses in array:
```
declare -a ADDRESS=(
IP_ADDRESS
IP_ADDRESS
IP_ADDRESS
IP_ADDRESS
)
```
3. Set execution permission and run the script
```
chmod +x meson_setup.sh
./meson_setup.sh
```

### Bulk installation of Gaga node
1. The script is divided into two parts - installation and configuration. Run in sequence.
2. Specify variables and IP addresses in the script similar to the Meson (see above).
3. Set execution permission and run the script
```
chmod +x gaga_install.sh
chmod +x gaga_configure.sh
./gaga_install.sh
./gaga_configure.sh
```
