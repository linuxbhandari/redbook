#!/bin/bash

ssh manish@192.168.122.1 sudo virsh domiflist overcloud-controller-0 | awk '$3 == "provisioning" {print $5};' > hw.txt
ssh manish@192.168.122.1 sudo virsh domiflist overcloud-controller-1 | awk '$3 == "provisioning" {print $5};' >> hw.txt
ssh manish@192.168.122.1 sudo virsh domiflist overcloud-controller-2 | awk '$3 == "provisioning" {print $5};' >> hw.txt
ssh manish@192.168.122.1 sudo virsh domiflist overcloud-compute-0 | awk '$3 == "provisioning" {print $5};' >> hw.txt
