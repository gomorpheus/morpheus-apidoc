# Instances

Instances are sets of containers or vms (morpheus API represents a vm as a container attached to a server) of various types that can be provisioned across the Morpheus stack and offer a wide range of services. MySQL, Redis, ElasticSearch, PostgreSQL, Tomcat, nginx, Confluence, Jenkins, and more. There are a few important concept differentiators between what morpheus calls an instance and what amazon calls an instance. In morpheus an isntance can represent many vms or containers that are of a set. For example. If you wanted to spin up a Mongo sharded replicaset, that requires 7 virtual machines or 7 docker containers. Morpheus represents this as a singular instance with a specified layout and then represents all the associated services running within that instance as containers. If, a container record is a docker container then the `serverId` it belngs to is representative of the Docker Host it was provisioned onto. If the container is a virtual machine then the serverId represents the compute resource it was provisioned onto, (i.e. the virtual machine).

## Get All Instances

```shell
curl "https://api.gomorpheus.com/api/instances?max=3"
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "instances": [
    {
      "id": 1530,
      "accountId": 1,
      "instanceType": {
        "id": 35,
        "code": "ubuntu",
        "category": "os",
        "name": "Ubuntu"
      },
      "group": {
        "id": 3,
        "name": "Demo"
      },
      "cloud": {
        "id": 6,
        "name": "San Mateo VMware"
      },
      "containers": [
        1798
      ],
      "connectionInfo": [
        {
          "ip": "192.168.162.59",
          "port": 22
        }
      ],
      "layout": {
        "id": 105
      },
      "plan": {
        "id": 12,
        "code": "vm-2048"
      },
      "name": "ah-San Mateo VMware-ubuntu",
      "description": null,
      "config": {
        "createBackup": true,
        "evars": {
          "UBUNTU_HOST": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_HOST",
            "value": "container1798"
          },
          "UBUNTU_IP": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_IP",
            "value": "192.168.162.59"
          },
          "UBUNTU_PORT": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_PORT",
            "value": 22
          },
          "UBUNTU_PORT_22_TCP": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_PORT_22_TCP",
            "value": "tcp://192.168.162.59:22"
          },
          "UBUNTU_PORT_22_TCP_ADDR": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_PORT_22_TCP_ADDR",
            "value": "192.168.162.59"
          },
          "UBUNTU_PORT_22_TCP_PORT": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_PORT_22_TCP_PORT",
            "value": 22
          },
          "UBUNTU_PORT_22_TCP_PROTO": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_PORT_22_TCP_PROTO",
            "value": "tcp"
          }
        }
      },
      "instanceVersion": null,
      "dateCreated": "2017-01-31T21:30:49+0000",
      "lastUpdated": "2017-02-07T22:58:26+0000",
      "hostName": "ah-San-Mateo-VMware-ubuntu",
      "domainName": null,
      "environmentPrefix": null,
      "firewallEnabled": true,
      "networkLevel": "container",
      "autoScale": false,
      "instanceContext": "production",
      "currentDeployId": null,
      "status": "running",
      "statusMessage": null,
      "errorMessage": null,
      "statusDate": "2017-01-31T21:34:07+0000",
      "statusPercent": null,
      "statusEta": null,
      "userStatus": null,
      "createdBy": {
        "id": 38
      }
    },
    {
      "id": 1653,
      "accountId": 1,
      "instanceType": {
        "id": 35,
        "code": "ubuntu",
        "category": "os",
        "name": "Ubuntu"
      },
      "group": {
        "id": 3,
        "name": "Demo"
      },
      "cloud": {
        "id": 6,
        "name": "San Mateo VMware"
      },
      "containers": [
        1945
      ],
      "connectionInfo": [
        {
          "ip": "192.168.163.55",
          "port": 22
        }
      ],
      "layout": {
        "id": 105
      },
      "plan": {
        "id": 11,
        "code": "vm-1024"
      },
      "name": "ah-San Mateo VMware-ubuntu-PDNStest",
      "description": null,
      "config": {
        "createBackup": false,
        "evars": {
          "UBUNTU_HOST": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_HOST",
            "value": "container1945"
          },
          "UBUNTU_IP": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_IP",
            "value": "192.168.163.55"
          },
          "UBUNTU_PORT": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_PORT",
            "value": 22
          },
          "UBUNTU_PORT_22_TCP": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_PORT_22_TCP",
            "value": "tcp://192.168.163.55:22"
          },
          "UBUNTU_PORT_22_TCP_ADDR": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_PORT_22_TCP_ADDR",
            "value": "192.168.163.55"
          },
          "UBUNTU_PORT_22_TCP_PORT": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_PORT_22_TCP_PORT",
            "value": 22
          },
          "UBUNTU_PORT_22_TCP_PROTO": {
            "export": true,
            "masked": false,
            "name": "UBUNTU_PORT_22_TCP_PROTO",
            "value": "tcp"
          }
        }
      },
      "instanceVersion": null,
      "dateCreated": "2017-02-10T14:27:42+0000",
      "lastUpdated": "2017-02-10T14:31:19+0000",
      "hostName": "ah-san-mateo-vmware-ubuntu-pdnstest",
      "domainName": null,
      "environmentPrefix": null,
      "firewallEnabled": true,
      "networkLevel": "container",
      "autoScale": false,
      "instanceContext": "dev",
      "currentDeployId": null,
      "status": "running",
      "statusMessage": null,
      "errorMessage": null,
      "statusDate": "2017-02-10T14:30:43+0000",
      "statusPercent": null,
      "statusEta": null,
      "userStatus": null,
      "createdBy": {
        "id": 38
      }
    },
    {
      "id": 1624,
      "accountId": 1,
      "instanceType": {
        "id": 21,
        "code": "apache",
        "category": "web",
        "name": "Apache"
      },
      "group": {
        "id": 163,
        "name": "snow-approvals"
      },
      "cloud": {
        "id": 6,
        "name": "San Mateo VMware"
      },
      "containers": [
        1912
      ],
      "connectionInfo": [
        {
          "ip": "192.168.163.28",
          "port": 10009
        }
      ],
      "layout": {
        "id": 48
      },
      "plan": {
        "id": 3,
        "code": "container-256"
      },
      "name": "approval-snow-test",
      "description": null,
      "config": {
        "createBackup": true,
        "evars": {
          "APACHE_HOST": {
            "export": true,
            "masked": false,
            "name": "APACHE_HOST",
            "value": "container1912"
          },
          "APACHE_IP": {
            "export": true,
            "masked": false,
            "name": "APACHE_IP",
            "value": "192.168.163.28"
          },
          "APACHE_PORT_443_TCP": {
            "export": true,
            "masked": false,
            "name": "APACHE_PORT_443_TCP",
            "value": "tcp://192.168.163.28:10010"
          },
          "APACHE_PORT_443_TCP_ADDR": {
            "export": true,
            "masked": false,
            "name": "APACHE_PORT_443_TCP_ADDR",
            "value": "192.168.163.28"
          },
          "APACHE_PORT_443_TCP_PORT": {
            "export": true,
            "masked": false,
            "name": "APACHE_PORT_443_TCP_PORT",
            "value": 10010
          },
          "APACHE_PORT_443_TCP_PROTO": {
            "export": true,
            "masked": false,
            "name": "APACHE_PORT_443_TCP_PROTO",
            "value": "tcp"
          },
          "APACHE_PORT_80_TCP": {
            "export": true,
            "masked": false,
            "name": "APACHE_PORT_80_TCP",
            "value": "tcp://192.168.163.28:10009"
          },
          "APACHE_PORT_80_TCP_ADDR": {
            "export": true,
            "masked": false,
            "name": "APACHE_PORT_80_TCP_ADDR",
            "value": "192.168.163.28"
          },
          "APACHE_PORT_80_TCP_PORT": {
            "export": true,
            "masked": false,
            "name": "APACHE_PORT_80_TCP_PORT",
            "value": 10009
          },
          "APACHE_PORT_80_TCP_PROTO": {
            "export": true,
            "masked": false,
            "name": "APACHE_PORT_80_TCP_PROTO",
            "value": "tcp"
          },
          "APACHE_PORT_HTTP": {
            "export": true,
            "masked": false,
            "name": "APACHE_PORT_HTTP",
            "value": 10009
          },
          "APACHE_PORT_HTTPS": {
            "export": true,
            "masked": false,
            "name": "APACHE_PORT_HTTPS",
            "value": 10010
          }
        },
        "loadBalancerProxyProtocol": "HTTP"
      },
      "instanceVersion": null,
      "dateCreated": "2017-02-09T06:45:30+0000",
      "lastUpdated": "2017-02-09T06:53:20+0000",
      "hostName": "approval-snow-test",
      "domainName": null,
      "environmentPrefix": null,
      "firewallEnabled": true,
      "networkLevel": "container",
      "autoScale": false,
      "instanceContext": null,
      "currentDeployId": null,
      "status": "running",
      "statusMessage": null,
      "errorMessage": null,
      "statusDate": "2017-02-09T06:53:20+0000",
      "statusPercent": null,
      "statusEta": null,
      "userStatus": null,
      "createdBy": {
        "id": 25
      }
    }
  ],
  "stats": {
    "1530": {
      "usedStorage": 6776664064,
      "maxStorage": 21067075584,
      "usedMemory": 1909739520,
      "maxMemory": 2098315264,
      "usedCpu": 1.0926682792
    },
    "1653": {
      "usedStorage": 2662801408,
      "maxStorage": 10499452928,
      "usedMemory": 935444480,
      "maxMemory": 1041350656,
      "usedCpu": 0.1501000667
    },
    "1624": {
      "usedStorage": 4829184,
      "maxStorage": 3103539200,
      "usedMemory": 9113600,
      "maxMemory": 268435456,
      "usedCpu": 0
    }
  },
  "loadBalancers": [],
  "meta": {
    "offset": 0,
    "max": "3",
    "size": 3,
    "total": 21
  }
}

```

This endpoint retrieves all instances and their JSON encoded configuration attributes based on check type. Server data is encrypted in the database.

### HTTP Request

`GET https://api.gomorpheus.com/api/instances`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
lastUpdated | null | Date filter, restricts query to only load instances updated  timestamp is more recent or equal to the date specified

## Get a Specific Instance


```shell
curl "https://api.gomorpheus.com/api/instances/1216" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "instance": {
    "id": 1216,
    "accountId": 1,
    "instanceType": {
      "id": 7,
      "code": "tomcat",
      "category": "web",
      "name": "Tomcat"
    },
    "layout": {
      "id": 22,
      "code": "tomcat-7.0.62-single",
      "name": "Docker Tomcat",
      "description": "This will provision a single process with no redundancy",
      "sortOrder": 0
    },
    "plan": {
      "name": "Memory: 1GB Storage: 10GB",
      "id": 5,
      "code": "container-1024",
      "category": null,
      "description": "Memory: 1GB Storage: 10GB",
      "visibility": "public",
      "active": true,
      "upgradeable": false,
      "dateCreated": "2016-04-05T13:07:56Z",
      "lastUpdated": "2016-08-15T18:55:19Z",
      "internalId": null,
      "externalId": null,
      "configs": null,
      "serverType": null,
      "sortOrder": 3,
      "maxStorage": 10737418240,
      "maxMemory": 1073741824,
      "maxLog": null,
      "maxCpu": 0,
      "maxCores": 0,
      "maxDataStorage": 0,
      "minDisks": null,
      "maxDisks": null,
      "customCpu": false,
      "customCores": false,
      "customMaxStorage": false,
      "customMaxDataStorage": false,
      "customMaxMemory": false,
      "addVolumes": false,
      "memoryOptionSource": null,
      "cpuOptionSource": null,
      "internalCost": 0.2,
      "externalCost": 0.4,
      "provisionType": {
        "id": 1,
        "aclEnabled": true,
        "addVolumes": false,
        "argumentTypes": [
          {
            "id": 1
          }
        ],
        "backupType": null,
        "code": "docker",
        "containerService": "dockerContainerService",
        "controllerTypes": [],
        "createServer": false,
        "customOptionTypes": [
          {
            "id": 315
          },
          {
            "id": 316
          },
          {
            "id": 318
          },
          {
            "id": 320
          },
          {
            "id": 323
          },
          {
            "id": 322
          },
          {
            "id": 314
          },
          {
            "id": 317
          },
          {
            "id": 319
          },
          {
            "id": 321
          },
          {
            "id": 324
          }
        ],
        "customSupported": true,
        "customizeVolume": false,
        "description": null,
        "exportServer": false,
        "hasDatastore": false,
        "hasNetworks": null,
        "hasStorageControllers": false,
        "hostDiskMode": null,
        "hostNetwork": false,
        "hostType": "container",
        "lvmSupported": true,
        "managed": true,
        "mapPorts": true,
        "maxDisk": null,
        "maxNetworks": null,
        "minDisk": 0,
        "multiTenant": true,
        "name": "Docker",
        "networkTypes": [],
        "optionTypes": [],
        "pickServer": true,
        "provisionService": "dockerProvisionService",
        "reconfigureSupported": true,
        "resizeCopiesVolumes": false,
        "rootDiskCustomizable": true,
        "rootStorageTypes": [],
        "serverType": "morpheus-node",
        "storageTypes": [
          {
            "id": 1
          }
        ],
        "supportsAutoDatastore": false,
        "supportsCustomServicePlans": true,
        "viewSet": "dockerCustom"
      },
      "editable": true,
      "regionCode": null,
      "refType": null,
      "refId": null
    },
    "name": "Spud Marketing",
    "displayName": "Spud Marketing",
    "description": null,
    "dateCreated": "2016-12-15T15:22:17Z",
    "lastUpdated": "2017-02-01T19:46:00Z",
    "status": "running",
    "containerIds": [
      1414,
      1759
    ],
    "environmentPrefix": null
  },
  "loadBalancers": [
    {
      "instanceId": 1216,
      "lbs": [
        {
          "lb": {
            "id": 1,
            "account": {
              "id": 1
            },
            "adminPort": null,
            "apiPort": null,
            "config": null,
            "createdBy": null,
            "dateCreated": "2016-06-21T17:55:21Z",
            "description": "",
            "externalId": null,
            "externalIp": "12.96.81.103",
            "internalId": null,
            "internalInstance": {
              "id": 5
            },
            "internalIp": "192.168.163.233",
            "lastUpdated": "2016-06-21T17:55:21Z",
            "name": "LB1",
            "ports": [
              {
                "id": 1
              }
            ],
            "server": null,
            "sshHost": null,
            "sshPassword": null,
            "sshPort": null,
            "sshUsername": null,
            "sslCert": null,
            "sslEnabled": true,
            "type": {
              "id": 2
            },
            "visibility": "public",
            "zone": {
              "id": 1
            }
          },
          "port": {
            "id": 1,
            "config": null,
            "description": null,
            "internalId": null,
            "loadBalancer": {
              "id": 1
            },
            "loadBalancerInstances": [
              {
                "id": 173
              }
            ],
            "name": "morpheus80",
            "port": 80,
            "proxyProtocol": "HTTP",
            "sslCert": null,
            "sslEnabled": false
          }
        }
      ]
    }
  ]
}
```

This endpoint retrieves a specific instance.

### HTTP Request

`GET https://api.gomorpheus.com/api/instances/:id`

## Get env variables 

```shell
curl "https://api.gomorpheus.com/api/instances/1216/envs" \
  -H "Authorization: BEARER access_token"
```
> The above command returns JSON structured like this:

```json
{
  "envs": [
    {
      "export": false,
      "masked": false,
      "name": "DATABASE_NAME",
      "value": "spud_marketing"
    }
  ],
  "readOnlyEnvs": {
    "TOMCAT_HOST": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_HOST",
      "value": "container1414"
    },
    "TOMCAT_HOST_2": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_HOST_2",
      "value": "container1759"
    },
    "TOMCAT_IP": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_IP",
      "value": "192.168.163.232"
    },
    "TOMCAT_IP_2": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_IP_2",
      "value": "192.168.163.233"
    },
    "TOMCAT_PORT": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_PORT",
      "value": 10017
    },
    "TOMCAT_PORT_2": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_PORT_2",
      "value": 10017
    },
    "TOMCAT_PORT_8080_TCP": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_PORT_8080_TCP",
      "value": "tcp://192.168.163.232:10017"
    },
    "TOMCAT_PORT_8080_TCP_2": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_PORT_8080_TCP_2",
      "value": "tcp://192.168.163.233:10017"
    },
    "TOMCAT_PORT_8080_TCP_ADDR": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_PORT_8080_TCP_ADDR",
      "value": "192.168.163.232"
    },
    "TOMCAT_PORT_8080_TCP_ADDR_2": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_PORT_8080_TCP_ADDR_2",
      "value": "192.168.163.233"
    },
    "TOMCAT_PORT_8080_TCP_PORT": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_PORT_8080_TCP_PORT",
      "value": 10017
    },
    "TOMCAT_PORT_8080_TCP_PORT_2": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_PORT_8080_TCP_PORT_2",
      "value": 10017
    },
    "TOMCAT_PORT_8080_TCP_PROTO": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_PORT_8080_TCP_PROTO",
      "value": "tcp"
    },
    "TOMCAT_PORT_8080_TCP_PROTO_2": {
      "export": true,
      "masked": false,
      "name": "TOMCAT_PORT_8080_TCP_PROTO_2",
      "value": "tcp"
    }
  },
  "importedEnvs": {
    "MYSQL_HOST": {
      "export": true,
      "masked": false,
      "name": "MYSQL_HOST",
      "value": "container1413"
    },
    "MYSQL_HOST_2": {
      "export": true,
      "masked": false,
      "name": "MYSQL_HOST_2",
      "value": "container1756"
    },
    "MYSQL_IP": {
      "export": true,
      "masked": false,
      "name": "MYSQL_IP",
      "value": "192.168.163.232"
    },
    "MYSQL_IP_2": {
      "export": true,
      "masked": false,
      "name": "MYSQL_IP_2",
      "value": "192.168.163.233"
    },
    "MYSQL_MASTER": {
      "export": true,
      "masked": false,
      "name": "MYSQL_HOST",
      "value": "container1413"
    },
    "MYSQL_PASSWORD": {
      "export": true,
      "masked": true,
      "name": "MYSQL_PASSWORD",
      "value": "morpheus"
    },
    "MYSQL_PASSWORD_2": {
      "export": true,
      "masked": true,
      "name": "MYSQL_PASSWORD",
      "value": "morpheus"
    },
    "MYSQL_PORT": {
      "export": true,
      "masked": false,
      "name": "MYSQL_PORT",
      "value": 10016
    },
    "MYSQL_PORT_2": {
      "export": true,
      "masked": false,
      "name": "MYSQL_PORT_2",
      "value": 10016
    },
    "MYSQL_PORT_3306_TCP": {
      "export": true,
      "masked": false,
      "name": "MYSQL_PORT_3306_TCP",
      "value": "tcp://192.168.163.232:10016"
    },
    "MYSQL_PORT_3306_TCP_2": {
      "export": true,
      "masked": false,
      "name": "MYSQL_PORT_3306_TCP_2",
      "value": "tcp://192.168.163.233:10016"
    },
    "MYSQL_PORT_3306_TCP_ADDR": {
      "export": true,
      "masked": false,
      "name": "MYSQL_PORT_3306_TCP_ADDR",
      "value": "192.168.163.232"
    },
    "MYSQL_PORT_3306_TCP_ADDR_2": {
      "export": true,
      "masked": false,
      "name": "MYSQL_PORT_3306_TCP_ADDR_2",
      "value": "192.168.163.233"
    },
    "MYSQL_PORT_3306_TCP_PORT": {
      "export": true,
      "masked": false,
      "name": "MYSQL_PORT_3306_TCP_PORT",
      "value": 10016
    },
    "MYSQL_PORT_3306_TCP_PORT_2": {
      "export": true,
      "masked": false,
      "name": "MYSQL_PORT_3306_TCP_PORT_2",
      "value": 10016
    },
    "MYSQL_PORT_3306_TCP_PROTO": {
      "export": true,
      "masked": false,
      "name": "MYSQL_PORT_3306_TCP_PROTO",
      "value": "tcp"
    },
    "MYSQL_PORT_3306_TCP_PROTO_2": {
      "export": true,
      "masked": false,
      "name": "MYSQL_PORT_3306_TCP_PROTO_2",
      "value": "tcp"
    },
    "MYSQL_USERNAME": "morpheus",
    "MYSQL_USERNAME_2": "morpheus"
  }
}
```

This gets all the environment variables associated with the instance.


### HTTP Request

`GET https://api.gomorpheus.com/api/instances/:id/envs`

## Get Security Groups

```shell
curl "https://api.gomorpheus.com/api/instances/1666/security-groups" \
  -H "Authorization: BEARER access_token"
```
> The above command returns JSON like this:

```json
{
  "success": true,
  "firewallEnabled": true,
  "securityGroups": [
    {
      "id": 43,
      "accountId": 1,
      "name": "api-tom-test",
      "description": "Test Security Group"
    }
  ]
}
```
This gets information about the security groups the instance has setup.

### HTTP Request

`GET https://api.gomorpheus.com/api/instances/:id/security-groups`

## Enable security-groups

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1666/security-groups/enable" \
  -H "Authorization: BEARER access_token"
```
> The above command returns JSON like this:

```json
{
  "success": true
}
```
This action enables a security group assigned to an instance

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/security-groups/enable`

## Disable security-groups

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1666/security-groups/disable" \
  -H "Authorization: BEARER access_token"
```
> The above command returns JSON like this:

```json
{
  "success": true
}
```
### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/security-groups/disable`

## Get container details

```shell
curl "https://api.gomorpheus.com/api/instances/1216/containers" \
  -H "Authorization: BEARER access_token"
```
> The above command returns JSON structured like this:

```json
{
  "success": true,
  "containers": [
    {
      "id": 1414,
      "name": "tomcat_1414",
      "configs": "{\"evars\":{},\"hosts\":{\"container1414\":\"127.0.0.1\",\"container1759\":\"192.168.163.233\"},\"maxMemory\":1073741824,\"maxStorage\":10737418240,\"mounts\":[{\"containerPath\":\"/morpheus/data\",\"hostPath\":\"/morpheus/container_1414/data\",\"type\":\"data\"},{\"containerPath\":\"/morpheus/logs\",\"hostPath\":\"/morpheus/container_1414/logs\",\"type\":\"logs\"},{\"containerPath\":\"/morpheus/config\",\"hostPath\":\"/morpheus/container_1414/config\",\"type\":\"config\"}],\"ports\":[{\"displayName\":\"Http\",\"export\":true,\"exportName\":null,\"external\":10017,\"index\":0,\"internal\":8080,\"link\":true,\"loadBalance\":true,\"protocol\":\"http\",\"visible\":true}],\"priviligedContainer\":null,\"vm\":false}",
      "containerType": {
        "id": 23,
        "name": "Tomcat 7.0.62"
      },
      "lastStats": "{\"ts\":\"2017-02-11T17:54:30+0000\",\"maxStorage\":10434699264,\"usedStorage\":290037760,\"running\":true,\"userCpuUsage\":0,\"systemCpuUsage\":0.0062528659,\"usedMemory\":770224128,\"maxMemory\":1073741824,\"cacheMemory\":275013632,\"readIOPS\":0,\"writeIOPS\":0,\"totalIOPS\":0,\"netTxUsage\":0,\"netRxUsage\":0}",
      "environmentPrefix": null,
      "status": "running",
      "dateCreated": "2016-12-15T15:22:17Z",
      "ip": "12.96.81.102",
      "externalIp": "12.96.81.102",
      "internalIp": "192.168.163.232",
      "ports": [
        {
          "displayName": "Http",
          "export": true,
          "exportName": null,
          "external": 10017,
          "index": 0,
          "internal": 8080,
          "link": true,
          "loadBalance": true,
          "protocol": "http",
          "visible": true
        }
      ]
    },
    {
      "id": 1759,
      "name": "tomcat_1759",
      "configs": "{\"evars\":{},\"hosts\":{\"container1414\":\"192.168.163.232\",\"container1759\":\"127.0.0.1\"},\"maxMemory\":1073741824,\"maxStorage\":10737418240,\"mounts\":[{\"containerPath\":\"/morpheus/data\",\"hostPath\":\"/morpheus/container_1759/data\",\"type\":\"data\"},{\"containerPath\":\"/morpheus/logs\",\"hostPath\":\"/morpheus/container_1759/logs\",\"type\":\"logs\"},{\"containerPath\":\"/morpheus/config\",\"hostPath\":\"/morpheus/container_1759/config\",\"type\":\"config\"}],\"networkInterfaces\":null,\"ports\":[{\"code\":\"tomcat.8080\",\"displayName\":\"Http\",\"export\":true,\"exportName\":null,\"external\":10017,\"index\":0,\"internal\":8080,\"link\":true,\"loadBalance\":true,\"protocol\":\"http\",\"visible\":true}],\"priviligedContainer\":null,\"serverId\":null,\"storageController\":null,\"vm\":false,\"volumes\":null}",
      "containerType": {
        "id": 23,
        "name": "Tomcat 7.0.62"
      },
      "lastStats": "{\"ts\":\"2017-02-11T17:53:39+0000\",\"maxStorage\":10434699264,\"usedStorage\":288571392,\"running\":true,\"userCpuUsage\":0.0062526053,\"systemCpuUsage\":0.008336807,\"usedMemory\":790220800,\"maxMemory\":1073741824,\"cacheMemory\":190226432,\"readIOPS\":0,\"writeIOPS\":0,\"totalIOPS\":0,\"netTxUsage\":0,\"netRxUsage\":0}",
      "environmentPrefix": null,
      "status": "running",
      "dateCreated": "2017-01-27T19:29:39Z",
      "ip": "12.96.81.103",
      "externalIp": "12.96.81.103",
      "internalIp": "192.168.163.233",
      "ports": [
        {
          "code": "tomcat.8080",
          "displayName": "Http",
          "export": true,
          "exportName": null,
          "external": 10017,
          "index": 0,
          "internal": 8080,
          "link": true,
          "loadBalance": true,
          "protocol": "http",
          "visible": true
        }
      ]
    }
  ]
}
```

This can be valuable for evaluating the details of the compute server(s) running on an instance

### HTTP Request

`GET https://api.gomorpheus.com/api/instances/:id/containers`

## Provision an Instance

```shell
curl -X POST "https://api.gomorpheus.com/api/instances" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{
  "servicePlanId": 5,
  "zoneId": 6,
  "instance": {
    "name": "api-test",
    "site": {
      "id": 3
    },
    "instanceType": {
      "code": "Ubuntu"
    },
    "layout": {
      "id": 104
    }
  },
  "volumes": [
    {
      "id": -1,
      "rootVolume": true,
      "name": "root",
      "size": 10,
      "sizeId": null,
      "storageType": null,
      "datastoreId": null
    }
  ],
  "servicePlanOptions": {
  }
}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single check 

### HTTP Request

`POST https://api.gomorpheus.com/api/instances`

### JSON Instance Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
instance  | Y | n/a | Key for name, site, instanceType and layout
name | Y | null | Name of the instance to be created
site | Y | null | The group ID to provision the instance into
instanceType | Y | null | The type of instance by code we want to fetch
servicePlanId | Y | null | Service plans designate layout and capacity
layout |  Y | null | The layout id for the instance type that you want to provision. i.e. single process or cluster
servicePlan | Y | null | The id for the memory and storage option pre-configured within Morpheus
zoneId | Y | null | The Cloud ID to provision the instance onto
volumes | N | n/a | Key for additional LV configuration, can create additional LVs at provision
id | N | -1 | The id for the LV configuration being created
rootVolume | N | true | If set to false then a non-root LV will be created
name | N | root | Name of the LV being created
size | N | servicePlan size | Size of the LV to be created in GBs
sizeId | N | null | Can be used to select pre-existing LV choices from Morpheus
storageType | N | null | Identifier for LV type (e.g. Local, S3, etc...)
datastoreId | N | null | The ID of the specific datastore
servicePlanOptions | N | null | Map of custom options depending on selected service plan . An example would be `maxMemory`, or `maxCores`.


There can be additional properties to apply to the instance. For example mysql provisioning requires a set of initial credentials. You can get a list of what these input options are by fetching the instance-types list via the `instance-types` api and getting available layouts as well as the provision type option types associated with the layout. Currently these input options are available from the option-types map. These however, can be overridden in the event a config options map exists on the layout object within. **NOTE**: See the API Document on OptionTypes for figuring out how to build property maps from them.

## Updating an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{ "instance": {
  "name": "my new redis",
  "description": "my new redis"
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single check 

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id`

### JSON Instance Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      | null | Unique name scoped to your account for the instance
description | null | Optional description field

## Stop an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1/stop" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will stop all containers running within an instance.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/stop`

## Start an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1/start" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will start all containers running within an instance.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/start`

## Restart an Instance

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1/restart" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will restart all containers running within an instance. This includes rebuilding the environment variables and applying settings to the docker containers.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/restart`

## Resize an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1/resize" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{
  "servicePlanId": 6,
  "volumes": [
    {
      "id": "-1",
      "rootVolume": true,
      "name": "root",
      "size": 20,
      "sizeId": null,
      "storageType": null,
      "datastoreId": null
    }
  ],
  "deleteOriginalVolumes": true
}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

It is possible to resize containers within an instance by increasing their memory plan or storage limit. This is done by assigning a new service plan to the container.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/resize`

### JSON Parameters

Parameter   | Required | Default | Description
---------   | -------- | ------- | -----------
servicePlanId | no | null    | The map containing the id of the service plan you wish to apply to the containers in this instance
volumes | no | defaults to plan config | Can be used to grow just the logical volume of the instance instead of choosing a plan
servicePlan (v2.9 and earlier) | no | null | Equivalent to servicePlanId for earlier Morpheus versions


## Clone an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1/clone" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{ "name": "New Name",
    "group": {
      "id": 1
  }}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

One can easily clone an instance and all containers within that instance. The containers are backed up via the backup services and used as a snapshot to produce a clone of the instance. It is possible to clone this app instance into an entirely different availability zone.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/clone`

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
group       | null    | the map containing the id of the server group you would like to clone into.
name        | null    | A name for the new cloned instance. If none is specified the existing name will be duplicated with the 'clone' suffix added.

## Upgrade an Instance

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1/upgrade" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{ "upgrade": {
      "id": 1
  }}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

It is possible to perform certain upgrade options for an instance. See the section on getting a list of upgrade options for a particular instance. Depending on the instance type these could include adding a replica, adding a a tomcat node, adding a mysql save, or master. Entirely depends.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/upgrade`

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
upgrade       | null    | the map containing the id of the instance type upgrade you would like to perform.

## Delete an Instance

```shell
curl -XDELETE "https://api.gomorpheus.com/api/instances/1" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete an instance and all associated monitors and backups.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/instances/:id`

## Get Security Groups

```shell
curl -XGET "https://api.gomorpheus.com/api/instances/1/security-groups" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
  "firewallEnabled": true,
  "securityGroups": [
    {
      "id": 19,
      "accountId": 1,
      "name": "All Tomcat Access",
      "description": "Allow everyone to access Tomcat"
    }
  ]
}
```

This returns a list of all of the security groups applied to an instance and whether the firewall is enabled.

### HTTP Request

`GET https://api.gomorpheus.com/api/instances/:id/security-groups`


## Set Security Groups

```shell
curl -XPOST "https://api.gomorpheus.com/api/instances/1/security-groups" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{ "securityGroupIds": [19, 2] }'
```

> The above command returns JSON structure similar to the 'get' of security groups.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/security-groups`

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
securityGroupIds | null | List of all security groups ids which should be applied.  If no security groups should apply, pass '[]'

## Disable the firewall

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1/security-groups/disable" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will disable the firewall.  Any configured security groups will not be applied.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/security-groups/disable`

## Enable the firewall

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1/security-groups/enable" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will enable the firewall.  Any configured security groups will be applied.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/security-groups/enable`
