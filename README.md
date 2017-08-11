After years of using VirtualBox (VB) I decided to switch to KVM. In this
repository I keep my Vagrant file.

To convert any Vagrant VB box to KVM on Debian
==============================================

Required packages:
------------------
vagrant-libvirt vagrant-mutate

Download VB box and make it KVM-friendly
----------------------------------------
Download fresh box
```bash
vagrant box add debian/jessie64
```
Make the box KVM friendly
```bash
vagrant mutate debian/jessie64 libvirt
```

In case of error
----------------
In case you get the following error follow the github link I provide
bellow.
There was error while creating libvirt storage pool: Call to virStoragePoolDefineXML failed: operation failed: pool 'default' already exists with uuid b42ad740-e642-4f67-b6c7-ab0d6dd59c2c

The sollution:
https://github.com/vagrant-libvirt/vagrant-libvirt/issues/499
