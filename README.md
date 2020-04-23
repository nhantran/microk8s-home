#### Reprequisites:
  * Vagrant 2.2.7
  * Following environment variables set:
    * __*HOST_NAME*__
    * __*HOST_MEM*__
    * __*HOST_CORE*__
    * __*HOST_DISK*__
    * __*REGISTRY_ENDPOINT*__

#### Run
```
wget https://raw.githubusercontent.com/nhantran/microk8s-home/master/Vagrantfile && \
HOST_NAME=vm01 \
HOST_MEM=4096 \
HOST_CORE=2 \
HOST_DISK=50GB \
REGISTRY_ENDPOINT=192.168.0.101:5000 \
vagrant up
```
