jq . << EOF > controller-nodes.json
{
  "nodes": [
    {
      "name": "overcloud-controller-0",
      "pm_type": "ipmi",
      "pm_addr": "192.168.122.1",
      "pm_user": "admin",
      "pm_password": "password",
      "pm_port": 6001,
      "ports": [
        {
          "address": "$(sed -n 1p hw.txt)",
          "pxe": true
        }
      ],
      "cpu": 2,
      "memory": 4000,
      "disk": 60,
      "arch": "x86_64"
    },
    {
      "name": "overcloud-controller-1",
      "pm_type": "ipmi",
      "pm_addr": "192.168.122.1",
      "pm_user": "admin",
      "pm_password": "password",
      "pm_port": 6002,
      "ports": [
        {
          "address": "$(sed -n 2p hw.txt)",
          "pxe": true
        }
      ],
      "cpu": 2,
      "memory": 4000,
      "disk": 60,
      "arch": "x86_64"
    },
    {
      "name": "overcloud-controller-2",
      "pm_type": "ipmi",
      "pm_addr": "192.168.122.1",
      "pm_user": "admin",
      "pm_password": "password",
      "pm_port": 6003,
      "ports": [
        {
          "address": "$(sed -n 3p hw.txt)",
          "pxe": true
        }
      ],
      "cpu": 2,
      "memory": 4000,
      "disk": 60,
      "arch": "x86_64"
    }
  ]
}
EOF
