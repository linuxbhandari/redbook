for i in `openstack baremetal node list -f value | awk '{print $1}'`;do openstack baremetal node set --property capabilities='profile:control,boot_option:local' $i;done
openstack overcloud profiles list
