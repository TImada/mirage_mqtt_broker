# MirageOS Unikernel based MQTT broker
This is prototype implementation of an MQTT broker written for MirageOS Unikernel.

## Usage
1. Modify IP setting in `./config.ml` so that your unikernel can run on your network environment
2. Compile this program and execute it as usual.  
(eg. `mirage configure -t hvt; make; sudo solo5-hvt --net=tap0 ./dist/mqb.hvt` for solo5-hvt)
