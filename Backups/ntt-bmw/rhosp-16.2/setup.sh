sudo subscription-manager release --set=8.4
sudo subscription-manager repos --disable=*

sudo subscription-manager repos --enable=rhel-8-for-x86_64-baseos-rpms --enable=rhel-8-for-x86_64-appstream-rpms --enable=rhel-8-for-x86_64-highavailability-rpms --enable=ansible-2.9-for-rhel-8-x86_64-rpms --enable=openstack-16.2-for-rhel-8-x86_64-rpms --enable=fast-datapath-for-rhel-8-x86_64-rpms 

sudo dnf module reset container-tools -y
sudo dnf module enable -y container-tools:3.0
sudo dnf update -y
