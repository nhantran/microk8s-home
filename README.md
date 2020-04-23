#### Reprequisites:
  * Vagrant 2.2.7
  * Following environment variables set:
    * __*HOST_NAME*__
    * __*HOST_MEM*__
    * __*HOST_CORE*__
    * __*HOST_DISK*__
    * __REGISTRY_ENDPOINT__ (optional)

#### Run
```
$ git clone https://github.com/nhantran/microk8s-home.git
$ cd microk8s-home && HOST_NAME=vm01 HOST_MEM=4G HOST_CORE=2 HOST_DISK=50G vagrant up
```
