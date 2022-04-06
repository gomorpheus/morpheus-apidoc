# Instances

Instances are sets of containers or vms (<%= application_name %> API represents a vm as a container attached to a server) of various types that can be provisioned across the <%= application_name %> stack and offer a wide range of services. MySQL, Redis, ElasticSearch, PostgreSQL, Tomcat, nginx, Confluence, Jenkins, and more. There are a few important concept differentiators between what <%= application_name %> calls an instance and what amazon calls an instance. In <%= application_name %> an isntance can represent many vms or containers that are of a set. For example. If you wanted to spin up a Mongo sharded replicaset, that requires 7 virtual machines or 7 docker containers. <%= application_name %> represents this as a singular instance with a specified layout and then represents all the associated services running within that instance as containers. If, a container record is a docker container then the `serverId` it belongs to is representative of the Docker Host it was provisioned onto. If the container is a virtual machine then the serverId represents the compute resource it was provisioned onto, (i.e. the virtual machine).

## Get All Instances

```shell
curl "<%= curl_url %>/api/instances?max=3"
  -H "Authorization: BEARER <%= curl_token %>"
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
      "servers": [
        2
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
      "servers": [
        2
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
      "servers": [
        3
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
      "owner": {
        "id": 1,
        "username": "admin"
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
    "max": 25,
    "size": 3,
    "total": 21
  }
}

```

This endpoint retrieves a paginated list of instances. 

### HTTP Request

`GET <%= api_url %>/api/instances`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
name |  | Filter by name
phrase |  | Filter by wildcard search of name and description
instanceType |  | Filter by instance type code
lastUpdated |  | Date filter, restricts query to only load instances updated  timestamp is more recent or equal to the date specified
createdBy |  | Filter by Created By (User) ID. Accepts multiple values.
agentInstalled | | Filter instances by if agent is installed or not on the associated servers.
status |  | Filter by instance status
environment |  | Filter by environment code
showDeleted | false | If true, includes instances in pending removal status.
deleted |  | If true, only instances in pending removal status are returned.
expireDate |  | Filter by expireDate less than equal to specified date
expireDateMin |  | Filter expireDate greater than or equal to the specified date
expireDays |  | Filter by expireDays less than or equal to the specified value
expireDaysMin |  | Filter by expireDays greater than or equal to the specified value
shutdownDate |  | Filter by shutdownDate less than equal to the specified date
shutdownDateMin |  | Filter by shutdownDate greater than or equal to the specified date
shutdownDays |  | Filter by shutdownDays less than or equal to the specified value
shutdownDaysMin |  | Filter by shutdownDays greater than or equal to the specified value
labels |  | Filter by label(s).
tags |  | Filter by tags (metadata). This allows filtering by arbitrary tag names and values like this `tags.foo=bar`.
metadata |  | Alias for `tags`. 
details | false | Include `details=true` to return more details about the instance, ie. `containerDetails`. Available in api version 5.2.8/5.3.2.


<aside class="info">
<b>Deprecation notice.</b> The property <code>metadata</code> was renamed to <code>tags</code>. The previous <code>tags</code> property was renamed to <code>labels</code>. 
API versions older than 4.2.5/5.2.1 still use the old property names: Tags as <code>metadata</code> and Labels as <code>tags</code>
</aside>

## Get a Specific Instance


```shell
curl "<%= curl_url %>/api/instances/1216" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "instance": {
    "id": 392,
    "uuid": "6ccf1fa9-da1f-4318-841e-7bf30c4522c6",
    "accountId": 1,
    "tenant": {
      "id": 1,
      "name": "<%= company_name %>"
    },
    "instanceType": {
      "id": 6,
      "code": "apache",
      "category": "web",
      "name": "Apache"
    },
    "group": {
      "id": 1,
      "name": "dev"
    },
    "cloud": {
      "id": 39,
      "name": "amazon"
    },
    "containers": [
      945
    ],
    "servers": [
      4002
    ],
    "connectionInfo": [
      {
        "ip": "10.100.1.8",
        "port": 80
      }
    ],
    "layout": {
      "id": 31,
      "name": "Amazon Apache on Ubuntu 14.04",
      "provisionTypeCode": "amazon"
    },
    "plan": {
      "id": 1,
      "code": "amazon-t2.nano",
      "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory"
    },
    "name": "sa-apache-1",
    "description": "new description",
    "environment": null,
    "config": {
      "createUser": true,
      "isEC2": false,
      "isVpcSelectable": true,
      "noAgent": null,
      "availabilityId": null,
      "securityId": null,
      "publicIpType": "subnet",
      "instanceProfile": null,
      "resourcePoolId": "173",
      "poolProviderType": null,
      "name": "${userInitials}-apache-${sequence}",
      "hostName": "${userInitials}-apache-${sequence}",
      "instanceType": {
        "code": null
      },
      "site": {
        "id": 1,
        "name": "dev"
      },
      "environmentPrefix": null,
      "layout": {
        "id": 31,
        "code": "apache-amazon-2.4-single"
      },
      "type": "apache",
      "memoryDisplay": "MB",
      "securityGroups": [
        {
          "id": "sg-21dd8144"
        }
      ],
      "customOptions": {
        "isPrimary": "on",
        "inventoryName": "DB12"
      },
      "createBackup": true,
      "backup": {
        "createBackup": true,
        "jobAction": "new",
        "jobRetentionCount": "3",
        "veeamManagedServer": "",
        "backupRepository": 1,
        "jobSchedule": 2,
        "target": 37006
      },
      "layoutSize": 1,
      "lbInstances": [

      ]
    },
    "configGroup": null,
    "configId": null,
    "configRole": null,
    "volumes": [
      {
        "controllerId": null,
        "datastoreId": null,
        "displayOrder": 0,
        "id": 177034,
        "maxIOPS": null,
        "maxStorage": 10737418240,
        "name": "root",
        "shortName": "root",
        "resizeable": true,
        "rootVolume": true,
        "size": 10,
        "storageType": 5,
        "unitNumber": null,
        "controllerMountPoint": null
      }
    ],
    "controllers": [

    ],
    "interfaces": [
      {
        "id": "365",
        "network": {
          "id": 365,
          "group": null,
          "subnet": null,
          "dhcpServer": true,
          "name": "labs1",
          "pool": null
        },
        "ipAddress": null,
        "networkInterfaceTypeId": null,
        "ipMode": ""
      }
    ],
    "customOptions": {
      "isPrimary": "on",
      "inventoryName": "DB12"
    },
    "instanceVersion": "2.4",
    "labels": [
      "foo",
      "bar"
    ],
    "tags": [
      {
        "id": 70539,
        "name": "Morpheus Id",
        "value": "945"
      },
      {
        "id": 70541,
        "name": "Morpheus Instance Id",
        "value": "392"
      },
      {
        "id": 70538,
        "name": "Morpheus Labels",
        "value": "foo,bar"
      },
      {
        "id": 70540,
        "name": "Morpheus Server Id",
        "value": "4002"
      },
      {
        "id": 70530,
        "name": "abc",
        "value": "123"
      }
    ],
    "evars": [
      {
        "name": "APACHE_IP",
        "value": "10.100.1.8",
        "export": true,
        "masked": false
      },
      {
        "name": "APACHE_HOST",
        "value": "container945",
        "export": true,
        "masked": false
      },
      {
        "name": "APACHE_PORT_HTTP",
        "value": 80,
        "export": true,
        "masked": false
      },
      {
        "name": "APACHE_PORT_80_TCP_PORT",
        "value": 80,
        "export": true,
        "masked": false
      },
      {
        "name": "APACHE_PORT_80_TCP_PROTO",
        "value": "tcp",
        "export": true,
        "masked": false
      },
      {
        "name": "APACHE_PORT_80_TCP_ADDR",
        "value": "10.100.1.8",
        "export": true,
        "masked": false
      },
      {
        "name": "APACHE_PORT_80_TCP",
        "value": "tcp://10.100.1.8:80",
        "export": true,
        "masked": false
      },
      {
        "name": "APACHE_PORT_HTTPS",
        "value": 443,
        "export": true,
        "masked": false
      },
      {
        "name": "APACHE_PORT_443_TCP_PORT",
        "value": 443,
        "export": true,
        "masked": false
      },
      {
        "name": "APACHE_PORT_443_TCP_PROTO",
        "value": "tcp",
        "export": true,
        "masked": false
      },
      {
        "name": "APACHE_PORT_443_TCP_ADDR",
        "value": "10.100.1.8",
        "export": true,
        "masked": false
      },
      {
        "name": "APACHE_PORT_443_TCP",
        "value": "tcp://10.100.1.8:443",
        "export": true,
        "masked": false
      }
    ],
    "maxMemory": 536870912,
    "maxStorage": 10737418240,
    "maxCores": 1,
    "coresPerSocket": 1,
    "maxCpu": 1,
    "hourlyCost": 0.0086816667,
    "hourlyPrice": 0.0086816667,
    "instancePrice": {
      "price": 6.2508,
      "cost": 6.2508,
      "currency": "USD",
      "unit": "month"
    },
    "dateCreated": "2020-11-02T16:36:32Z",
    "lastUpdated": "2021-06-21T21:00:01Z",
    "hostName": "sa-apache-1",
    "domainName": null,
    "environmentPrefix": null,
    "firewallEnabled": true,
    "networkLevel": "container",
    "autoScale": false,
    "instanceContext": null,
    "currentDeployId": null,
    "locked": false,
    "status": "running",
    "statusMessage": null,
    "errorMessage": null,
    "statusDate": "2020-11-02T16:38:12Z",
    "statusPercent": null,
    "statusEta": null,
    "userStatus": null,
    "expireDays": null,
    "renewDays": null,
    "expireCount": 0,
    "expireDate": null,
    "expireWarningDate": null,
    "expireWarningSent": false,
    "shutdownDays": null,
    "shutdownRenewDays": null,
    "shutdownCount": 0,
    "shutdownDate": null,
    "shutdownWarningDate": null,
    "shutdownWarningSent": false,
    "removalDate": null,
    "createdBy": {
      "id": 1,
      "username": "admin"
    },
    "owner": {
      "id": 1,
      "username": "admin"
    },
    "notes": null,
    "stats": {
      "usedStorage": 0,
      "maxStorage": 10737418240,
      "usedMemory": 233500000,
      "maxMemory": 500212000,
      "usedCpu": 0.0667445352,
      "cpuUsage": 0.0667445352,
      "cpuUsagePeak": 0.0667445352,
      "cpuUsageAvg": 0.0667445352
    },
    "powerSchedule": null,
    "isScalable": true,
    "instanceThreshold": null,
    "isBusy": false,
    "apps": [

    ],
    "currentLoadBalancerInstances": [

    ],
    "currentLoadBalancerContainersIn": 0,
    "currentLoadBalancerContainersOut": 0,
    "lastDeploy": null,
    "containerDetails": [
      {
        "id": 945,
        "uuid": "c19f7209-df3a-443c-93a8-ccefacb3783c",
        "name": "sa-apache-1_945",
        "ip": "10.100.1.8",
        "internalIp": "10.100.1.8",
        "internalHostname": "container945",
        "externalHostname": "sa-apache-1",
        "externalDomain": "localdomain",
        "externalFqdn": "sa-apache-1.localdomain",
        "accountId": 1,
        "instance": {
          "id": 392,
          "name": "sa-apache-1"
        },
        "containerType": {
          "id": 31,
          "code": "apache-amazon-2.4",
          "category": "apache",
          "name": "Apache 2.4"
        },
        "containerTypeSet": {
          "id": 31,
          "code": "apache-amazon-2.4-set",
          "category": "apache"
        },
        "server": {
          "id": 4002,
          "uuid": "fbf4234d-cd25-47b5-bdd1-49a9132d2871",
          "externalId": "i-033fbb2f1a9c2c225",
          "internalId": null,
          "externalUniqueId": null,
          "name": "sa-apache-1",
          "externalName": "sa-apache-1",
          "hostname": "sa-apache-1",
          "accountId": 1,
          "account": {
            "id": 1,
            "name": "<%= company_name %>"
          },
          "owner": {
            "id": 1,
            "username": "admin"
          },
          "zone": {
            "id": 39,
            "name": "amazon"
          },
          "plan": {
            "id": 1,
            "code": "amazon-t2.nano",
            "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory"
          },
          "computeServerType": {
            "id": 45,
            "code": "amazonVm",
            "name": "Amazon Instance",
            "managed": true,
            "externalDelete": true
          },
          "visibility": "private",
          "description": null,
          "zoneId": 39,
          "siteId": 1,
          "resourcePoolId": 173,
          "folderId": null,
          "sshHost": null,
          "sshPort": 22,
          "externalIp": null,
          "internalIp": "10.100.1.8",
          "platform": "ubuntu",
          "platformVersion": "14.04",
          "dateCreated": "2020-11-02T16:36:32Z",
          "lastUpdated": "2021-06-22T18:06:32Z",
          "stats": {
            "ts": "2021-06-22T18:06:28+0000",
            "freeMemory": 266712000,
            "usedMemory": 233500000,
            "freeSwap": 0,
            "usedSwap": 0,
            "cpuIdleTime": 692815380,
            "cpuSystemTime": 224850,
            "cpuUserTime": 382640,
            "cpuTotalTime": 693422870,
            "cpuUsage": 0.06674528121948242,
            "maxStorage": 10737418240,
            "usedStorage": 1568661504,
            "reservedStorage": 10423046144,
            "netTxUsage": 27,
            "netRxUsage": 23,
            "networkBandwidth": 0
          },
          "status": "provisioned",
          "statusMessage": null,
          "errorMessage": null,
          "statusDate": "2020-11-02T16:36:50Z",
          "statusPercent": null,
          "statusEta": null,
          "powerState": "on",
          "agentInstalled": true,
          "lastAgentUpdate": "2021-06-22T18:06:32Z",
          "agentVersion": "2.0.0",
          "maxCores": 1,
          "coresPerSocket": 1,
          "maxMemory": 536870912,
          "maxStorage": 10737418240,
          "maxCpu": null,
          "hourlyCost": 0.0086816667,
          "hourlyPrice": 0.0086816667,
          "sourceImage": {
            "id": 22,
            "code": "amazon.ec2.image.morpheus.apache.2.4",
            "name": "ubuntu-14_04-apache-2_4-morph.0.1"
          },
          "serverOs": {
            "id": 5,
            "code": "ubuntu.14.04.64",
            "name": "ubuntu 14 64-bit",
            "description": null,
            "vendor": "canonical",
            "category": "ubuntu",
            "osFamily": "debian",
            "osVersion": "14.04",
            "bitCount": 64,
            "platform": "linux"
          },
          "volumes": [
            {
              "id": 177034,
              "name": "root",
              "controllerId": null,
              "controllerMountPoint": null,
              "resizeable": true,
              "rootVolume": true,
              "unitNumber": null,
              "typeId": 5,
              "configurableIOPS": false,
              "datastoreId": null,
              "maxStorage": 10737418240,
              "displayOrder": 0,
              "maxIOPS": null
            }
          ],
          "controllers": [

          ],
          "interfaces": [
            {
              "id": 297842,
              "refType": null,
              "refId": null,
              "name": "eth0",
              "internalId": null,
              "externalId": "eni-0689d61ea999db573",
              "uniqueId": "morpheus-nic-392-945-0",
              "publicIpAddress": null,
              "publicIpv6Address": null,
              "ipAddress": "10.100.1.8",
              "ipv6Address": null,
              "ipSubnet": null,
              "ipv6Subnet": null,
              "description": "",
              "dhcp": true,
              "active": true,
              "poolAssigned": false,
              "primaryInterface": true,
              "network": {
                "id": 365,
                "name": "labs1"
              },
              "subnet": null,
              "networkGroup": null,
              "networkPosition": null,
              "networkPool": null,
              "networkDomain": null,
              "type": {
                "id": 1,
                "code": "standard",
                "name": "standard"
              },
              "ipMode": "",
              "macAddress": "06:92:59:62:73:a3"
            }
          ],
          "labels": [

          ],
          "tags": [
            {
              "id": 70536,
              "name": "Morpheus Id",
              "value": "945"
            },
            {
              "id": 70535,
              "name": "Morpheus Instance Id",
              "value": "392"
            },
            {
              "id": 70537,
              "name": "Morpheus Labels",
              "value": "foo,bar"
            },
            {
              "id": 70534,
              "name": "Morpheus Server Id",
              "value": "4002"
            },
            {
              "id": 70531,
              "name": "abc",
              "value": "123"
            }
          ],
          "enabled": true,
          "tagCompliant": null
        },
        "cloud": {
          "id": 39,
          "name": "amazon"
        },
        "ports": [
          {
            "id": 192,
            "index": 0,
            "external": 80,
            "internal": 80,
            "displayName": "Http",
            "primaryPort": false,
            "export": true,
            "visible": true,
            "exportName": "HTTP",
            "loadBalanceProtocol": null,
            "loadBalance": true,
            "protocol": "http",
            "link": true,
            "externalIp": null,
            "internalIp": null
          },
          {
            "id": 193,
            "index": 1,
            "external": 443,
            "internal": 443,
            "displayName": "Https",
            "primaryPort": false,
            "export": true,
            "visible": true,
            "exportName": "HTTPS",
            "loadBalanceProtocol": null,
            "loadBalance": true,
            "protocol": "https",
            "link": true,
            "externalIp": null,
            "internalIp": null
          }
        ],
        "plan": {
          "id": 1,
          "code": "amazon-t2.nano",
          "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory"
        },
        "configGroup": null,
        "configId": null,
        "configRole": null,
        "dateCreated": "2020-11-02T16:36:32Z",
        "lastUpdated": "2021-06-22T18:06:32Z",
        "statsEnabled": true,
        "status": "running",
        "userStatus": "running",
        "environmentPrefix": null,
        "stats": {
          "ts": "2021-06-22T18:06:28+0000",
          "running": true,
          "userCpuUsage": 0.0333722676,
          "systemCpuUsage": 0.0333722676,
          "usedMemory": 233500000,
          "maxMemory": 500212000,
          "cacheMemory": 190968000,
          "maxStorage": null,
          "usedStorage": 0,
          "readIOPS": 0,
          "writeIOPS": 0.2333333333,
          "totalIOPS": 0.2333333333,
          "iops": {
          },
          "netTxUsage": 27,
          "netRxUsage": 23
        },
        "runtimeInfo": {
        },
        "containerVersion": null,
        "repositoryImage": null,
        "planCategory": null,
        "hostname": "sa-apache-1",
        "domainName": null,
        "volumeCreated": false,
        "containerCreated": true,
        "maxStorage": 10737418240,
        "maxMemory": 536870912,
        "maxCores": 1,
        "coresPerSocket": 1,
        "maxCpu": 1,
        "hourlyCost": 0.0086816667,
        "hourlyPrice": 0.0086816667
      }
    ]
  }
}
```

This endpoint retrieves a specific instance.

### HTTP Request

`GET <%= api_url %>/api/instances/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
details | true | More details about the instance are returned by default, ie. `containerDetails`. Available in api version 5.2.8/5.3.2.

## Get Env Variables

```shell
curl "<%= curl_url %>/api/instances/1216/envs" \
  -H "Authorization: BEARER <%= curl_token %>"
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
      "value": "************"
    },
    "MYSQL_PASSWORD_2": {
      "export": true,
      "masked": true,
      "name": "MYSQL_PASSWORD",
      "value": "************"
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
    "MYSQL_USERNAME": "root",
    "MYSQL_USERNAME_2": "root"
  }
}
```

This gets all the environment variables associated with the instance.


### HTTP Request

`GET <%= api_url %>/api/instances/:id/envs`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Get Instance History

```shell
curl "<%= curl_url %>/api/instances/238/history" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "processes": [
    {
      "id": 250,
      "accountId": 1,
      "uniqueId": "cebc47ec-cb2f-417a-886e-dd60cf81db26",
      "processType": {
        "code": "provision",
        "name": "provision"
      },
      "description": null,
      "subType": null,
      "subId": null,
      "zoneId": 34,
      "integrationId": null,
      "instanceId": 238,
      "containerId": 240,
      "serverId": 601,
      "containerName": "apachetest",
      "displayName": "apachetest",
      "timerCategory": "vmware",
      "timerSubCategory": "28",
      "status": "failed",
      "reason": null,
      "percent": 100.0,
      "statusEta": 348246,
      "message": null,
      "output": null,
      "error": null,
      "startDate": "2018-09-28T19:10:56+0000",
      "endDate": "2018-09-28T20:21:49+0000",
      "duration": 4253127,
      "dateCreated": "2018-09-28T19:10:56+0000",
      "lastUpdated": "2018-09-28T20:21:49+0000",
      "createdBy": {
        "username": "admin",
        "displayName": "Admin"
      },
      "updatedBy": {
        "username": "admin",
        "displayName": "Admin"
      },
      "events": [

      ]
    }
  ],
  "meta": {
    "size": 1,
    "total": 1,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves the process history for a specific instance. 

Alternatively, the [Process History](#get-all-processes) endpoint can be used to get the same information.

### HTTP Request

`GET <%= api_url %>/api/instances/:id/history`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
phrase |  | If specified will return a partial match on displayName, message or output
containerId |  | Filter by container id(s)
serverId |  | Filter by server id(s)
zoneId |  | Filter by zone id(s)

## Get Container Details

```shell
curl "<%= curl_url %>/api/instances/1216/containers" \
  -H "Authorization: BEARER <%= curl_token %>"
```
> The above command returns JSON structured like this:

```json
{
  "containers": [
    {
      "id": 292,
      "accountId": 1,
      "instance": {
        "id": 294,
        "name": "nginxtest"
      },
      "containerType": {
        "id": 187,
        "code": "nginx-vmware-1.9",
        "category": "nginx",
        "name": "NGINX 1.9"
      },
      "containerTypeSet": {
        "id": 193,
        "code": "nginx-vmware-1.9-set",
        "category": "nginx"
      },
      "server": {
        "id": 653,
        "name": "nginxtest"
      },
      "cloud": {
        "id": 34,
        "name": "myvmware"
      },
      "name": "nginxtest_292",
      "ip": "10.30.20.50",
      "internalIp": "10.30.20.50",
      "internalHostname": "container292",
      "externalHostname": "nginxtest",
      "externalDomain": "localdomain",
      "externalFqdn": "nginxtest.localdomain",
      "ports": [
        {
          "index": 0,
          "external": 80,
          "internal": 80,
          "primaryPort": true,
          "displayName": "Http",
          "export": true,
          "visible": true,
          "loadBalance": true,
          "link": true,
          "exportName": "HTTP",
          "protocol": "http",
          "code": "nginx.80"
        },
        {
          "index": 1,
          "external": 443,
          "internal": 443,
          "primaryPort": false,
          "displayName": "Https",
          "export": true,
          "visible": true,
          "loadBalance": true,
          "link": true,
          "exportName": "HTTPS",
          "protocol": "https",
          "code": "nginx.443"
        }
      ],
      "plan": {
        "id": 76,
        "code": "vm-1024",
        "name": "1 CPU, 1GB Memory"
      },
      "dateCreated": "2019-02-20T18:29:05+0000",
      "lastUpdated": "2019-02-27T21:07:35+0000",
      "statsEnabled": true,
      "status": "running",
      "userStatus": "running",
      "environmentPrefix": null,
      "stats": {
        "ts": "2019-02-27T21:07:31+0000",
        "running": true,
        "userCpuUsage": 0.1504010695,
        "systemCpuUsage": 0.1838235294,
        "usedMemory": 317256000,
        "maxMemory": 1017032000,
        "cacheMemory": 404236000,
        "maxStorage": 10499452928,
        "usedStorage": 3700285440,
        "readIOPS": 0,
        "writeIOPS": 0.35,
        "totalIOPS": 0.35,
        "iops": {
        },
        "netTxUsage": 114,
        "netRxUsage": 2198
      },
      "runtimeInfo": {
      },
      "containerVersion": null,
      "repositoryImage": null,
      "planCategory": null,
      "hostname": "nginxtest",
      "domainName": null,
      "volumeCreated": true,
      "containerCreated": false,
      "maxStorage": 10737418240,
      "maxMemory": 1073741824,
      "maxCores": 1,
      "coresPerSocket": 1,
      "maxCpu": 1,
      "availableActions": [
        {
          "code": "nginx-1.9-remove-node",
          "name": "Remove Nginx Node"
        }
      ]
    }
  ]
}
```

This can be valuable for evaluating the details of the compute server(s) running on an instance

### HTTP Request

`GET <%= api_url %>/api/instances/:id/containers`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

<!--
# Instance Types
-->

## Get All Instance Types for Provisioning

```shell
curl "<%= curl_url %>/api/instance-types"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this

```json
{
  "instanceTypes": [
    {
      "id": 12,
      "name": "ActiveMQ",
      "code": "activemq",
      "category": "messaging",
      "active": true,
      "versions": [
        "5.11"
      ],
      "instanceTypeLayouts": [
        {
          "id": 14,
          "code": "activemq-5.11",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/}
        }
      ]
    },
    {
      "id": 13,
      "name": "Cassandra",
      "code": "cassandra",
      "category": "nosql",
      "active": true,
      "versions": [
        "2.1"
      ],
      "instanceTypeLayouts": [
        {
          "id": 15,
          "code": "cassandra-2.1-single",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        }
      ]
    },
    {
      "id": 10,
      "name": "Confluence",
      "code": "confluence",
      "category": "utils",
      "active": true,
      "versions": [
        "5.7"
      ],
      "instanceTypeLayouts": [
        {
          "id": 12,
          "code": "confluence-5.7",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        }
      ]
    },
    {
      "id": 5,
      "name": "Elastic Search",
      "code": "elasticsearch",
      "category": "nosql",
      "active": true,
      "versions": [
        "1.5"
      ],
      "instanceTypeLayouts": [
        {
          "id": 3,
          "code": "elasticsearch-1.5-single",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        },
        {
          "id": 4,
          "code": "elasticsearch-1.5-cluster",
          "name": "Cluster",
          "description": "This will provision two nodes, in multi master cluster",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        }
      ]
    },
    {
      "id": 7,
      "name": "Jenkins",
      "code": "jenkins",
      "category": "utils",
      "active": true,
      "versions": [
        "1.596"
      ],
      "instanceTypeLayouts": [
        {
          "id": 8,
          "code": "jenkins-1.596",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        }
      ]
    },
    {
      "id": 2,
      "name": "Memcached",
      "code": "memcached",
      "category": "cache",
      "active": true,
      "versions": [
        "1.4"
      ],
      "instanceTypeLayouts": [
        {
          "id": 11,
          "code": "memcached-1.4-single",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        }
      ]
    },
    {
      "id": 4,
      "name": "Mongo",
      "code": "mongo",
      "category": "nosql",
      "active": true,
      "versions": [
        "3.0"
      ],
      "instanceTypeLayouts": [
        {
          "id": 16,
          "code": "mongo-3.0-rs",
          "name": "ReplicaSet",
          "description": "This will provision a 3 node replicaSet",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        },
        {
          "id": 6,
          "code": "mongo-3.0-single",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        }
      ]
    },
    {
      "id": 3,
      "name": "MySQL",
      "code": "mysql",
      "category": "sql",
      "active": true,
      "versions": [
        "5.6"
      ],
      "instanceTypeLayouts": [
        {
          "id": 5,
          "code": "mysql-5.6-single",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        }
      ]
    },
    {
      "id": 8,
      "name": "Nexus",
      "code": "nexus",
      "category": "utils",
      "active": true,
      "versions": [
        "2.11"
      ],
      "instanceTypeLayouts": [
        {
          "id": 9,
          "code": "nexus-2.11",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        }
      ]
    },
    {
      "id": 14,
      "name": "Nginx",
      "code": "nginx",
      "category": "web",
      "active": true,
      "versions": [
        "1.9"
      ],
      "instanceTypeLayouts": [
        
      ]
    },
    {
      "id": 11,
      "name": "Postgres",
      "code": "postgres",
      "category": "sql",
      "active": true,
      "versions": [
        "9.4"
      ],
      "instanceTypeLayouts": [
        {
          "id": 13,
          "code": "postgres-9.4-single",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        }
      ]
    },
    {
      "id": 9,
      "name": "RabbitMQ",
      "code": "rabbitmq",
      "category": "utils",
      "active": true,
      "versions": [
        "3.5"
      ],
      "instanceTypeLayouts": [
        {
          "id": 10,
          "code": "rabbitmq-3.5",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        }
      ]
    },
    {
      "id": 1,
      "name": "Redis",
      "code": "redis",
      "category": "cache",
      "active": true,
      "versions": [
        "3.0"
      ],
      "instanceTypeLayouts": [
        {
          "id": 1,
          "code": "redis-3.0-single",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        },
        {
          "id": 2,
          "code": "redis-3.0-master-slave",
          "name": "Master\/Slave",
          "description": "This will provision 2 containers, one master and 1 slave.",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        }
      ]
    },
    {
      "id": 6,
      "name": "Tomcat",
      "code": "tomcat",
      "category": "web",
      "active": true,
      "versions": [
        "7.0.62"
      ],
      "instanceTypeLayouts": [
        {
          "id": 7,
          "code": "tomcat-7.0.62-single",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy",
          "provisionType": { /* see provision types */ },
          "optionTypes": { /** see option types **/ }
        }
      ]
    }
  ]
}
```

Fetch the list of available instance types. These can vary in range from database containers, to web containers, to custom containers.

### HTTP Request

`GET <%= api_url %>/api/instance-types`


## Get Specific Instance Type for Provisioning

```shell
curl "<%= curl_url %>/api/instance-types/12"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this

```json
{
  "success": true,
  "instanceType": {
    "id": 12,
    "name": "ActiveMQ",
    "code": "activemq",
    "category": "messaging",
    "active": true,
    "versions": [
      "5.11"
    ],
    "instanceTypeLayouts": [
      {
        "id": 14,
        "code": "activemq-5.11",
        "name": "Single Process",
        "description": "This will provision a single process with no redundancy",
        "provisionType": { /* see provision types */ },
        "optionTypes": { /** see option types **/ }
      }
    ]
  }
}
```

Fetch an instance type by ID.

### HTTP Request

`GET <%= api_url %>/api/instance-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance type


## Get Available Service Plans for an Instance

```shell
curl -XGET "<%= curl_url %>/api/instances/service-plans?zoneId=1&layoutId=75" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "plans": [
    {
      "id": 75,
      "name": "1 CPU, 512MB Memory",
      "value": 75,
      "code": "vm-512",
      "maxStorage": 10737418240,
      "maxMemory": 536870912,
      "maxCpu": 1,
      "maxCores": 1,
      "customCpu": false,
      "customMaxMemory": false,
      "customMaxStorage": true,
      "customMaxDataStorage": true,
      "customCoresPerSocket": false,
      "coresPerSocket": 1,
      "storageTypes": [
        {
          "id": 1,
          "editable": false,
          "optionTypes": [

          ],
          "displayOrder": 1,
          "code": "standard",
          "volumeType": "disk",
          "minStorage": null,
          "deletable": false,
          "defaultType": true,
          "createDatastore": null,
          "resizable": false,
          "storageType": null,
          "allowSearch": true,
          "volumeOptionSource": null,
          "displayName": "Disk",
          "minIOPS": null,
          "maxIOPS": null,
          "hasDatastore": true,
          "customSize": true,
          "autoDelete": true,
          "name": "Standard",
          "configurableIOPS": false,
          "customLabel": true,
          "enabled": true,
          "description": "Standard",
          "volumeCategory": "disk",
          "externalId": null,
          "maxStorage": null
        }
      ],
      "rootStorageTypes": [
        {
          "id": 1,
          "editable": false,
          "optionTypes": [

          ],
          "displayOrder": 1,
          "code": "standard",
          "volumeType": "disk",
          "minStorage": null,
          "deletable": false,
          "defaultType": true,
          "createDatastore": null,
          "resizable": false,
          "storageType": null,
          "allowSearch": true,
          "volumeOptionSource": null,
          "displayName": "Disk",
          "minIOPS": null,
          "maxIOPS": null,
          "hasDatastore": true,
          "customSize": true,
          "autoDelete": true,
          "name": "Standard",
          "configurableIOPS": false,
          "customLabel": true,
          "enabled": true,
          "description": "Standard",
          "volumeCategory": "disk",
          "externalId": null,
          "maxStorage": null
        }
      ],
      "addVolumes": true,
      "customizeVolume": true,
      "rootDiskCustomizable": true,
      "noDisks": false,
      "hasDatastore": true,
      "minDisk": 0,
      "maxDisk": null,
      "lvmSupported": true,
      "datastores": {
        "cluster": [
          {
            "id": 54,
            "name": "demo-qnap - 4.3TB Free"
          }
        ],
        "store": [
          {
            "id": 50,
            "name": "datastore1 - 463.4GB Free"
          }
        ]
      },
      "supportsAutoDatastore": true,
      "autoOptions": [
        {
          "id": "autoCluster",
          "name": "Auto - Cluster"
        },
        {
          "id": "auto",
          "name": "Auto - Datastore"
        }
      ],
      "cpuOptions": [

      ],
      "coreOptions": [

      ],
      "memoryOptions": [

      ],
      "rootCustomSizeOptions": {
      },
      "customSizeOptions": {
      },
      "customCores": false,
      "maxDisks": null,
      "memorySizeType": "MB"
    }
  ]
}
```

This endpoint retrieves all the [Service Plans](#service-plans) available for the specified cloud and instance layout. The response includes details about the plans and their configuration options. It may be used to get the list of available plans when creating a new instance or resizing an existing instance.

### HTTP Request

`GET <%= api_url %>/api/instances/service-plans?zoneId=:zoneId&layoutId=:layoutId&siteId=:siteId`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
zoneId | Y | The ID of the [Cloud](#clouds)
layoutId | Y | The ID of the [Instance Layout](#layouts)
siteId | N | The ID of the [Group](#groups)

## Create an Instance

```shell
curl -X POST "<%= api_url %>/api/instances" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "zoneId": 6,
  "instance": {
    "name": "api-testing2",
    "site": {
      "id": 3
    },
    "instanceType": {
      "code": "Ubuntu"
    },
    "layout": {
      "id": 105
    },
    "plan": {
      "id": 75
    }
  },
  "volumes": [
    {
      "id": -1,
      "rootVolume": true,
      "name": "root",
      "size": 10,
      "sizeId": null,
      "storageType": 1,
      "datastoreId": "autoCluster"
    },
    {
      "id": -1,
      "rootVolume": false,
      "name": "data",
      "size": 5,
      "sizeId": null,
      "storageType": 1,
      "datastoreId": "auto"
    }
  ],
  "servicePlanOptions": {
    "maxCores": 1,
    "coresPerSocket": 1,
    "maxMemory": 536870912
  },
  "networkInterfaces": [
    {
      "network": {
        "id": 5
      },
      "networkInterfaceTypeId": 4
    }
  ],
  "config": {
    "publicKeyId": 14,
    "vmwareResourcePoolId": "resgroup-56",
    "hostId": null,
    "vmwareUsr": "apiuser",
    "vmwarePwd": "password",
    "vmwareDomainName": null,
    "vmwareCustomSpec": null
  },
  "evars": [
    {"name": "MY_APP_VAR1", "value": "VALUE1"},
    {"name": "MY_APP_VAR2", "value": "VALUE2"}
  ],
  "labels": [
    "foo", "bar"
  ],
  "tags": [
    {"name": "hello", "value": "world"},
    {"name": "flash", "value": "bang"}
  ]
}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single instance

### HTTP Request

`POST <%= api_url %>/api/instances`

### JSON Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
instance  | Y | n/a | Key for name, site, instanceType layout, and plan
instance.name | Y |  | Name of the instance to be created
instance.site.id | Y |  | The Group ID to provision the instance into
instance.instanceType.code | Y |  | The type of instance by code we want to fetch
instance.layout.id |  Y |  | The layout id for the instance type that you want to provision. i.e. single process or cluster
instance.plan.id | Y |  | The id for the memory and storage option pre-configured within <%= application_name %>. See [Available Service Plans](#get-available-service-plans-for-an-instance)
zoneId | Y |  | The Cloud ID to provision the instance onto
evars | N | [] | Environment Variables, an array of objects that have name and value.
copies | N | 1 | Number of copies to provision
layoutSize | N | 1 | Apply a multiply factor of containers/vms within the instance
servicePlanOptions | N |  | Map of custom options depending on selected service plan.
servicePlanOptions.maxCores | N |  | Core Count
servicePlanOptions.coresPerSocket | N |  | Cores Per Socket
servicePlanOptions.maxMemory | N |  | Memory in bytes **For backwards compatability, values less than 1048576 are treated as being in MB and will be converted to bytes**
securityGroups | N |  | Key for security group configuration. It should be passed as an array of objects containing the id of the security group to assign the instance to
volumes | N |  | Key for volume configuration, see [Volumes](#volumes)
networkInterfaces | N |  | Key for network configuration, see [Network Interfaces](#network-interfaces)
config | Y |  | Key for specific type configuration, see [Config](#config)
labels | N |  | Array of strings (keywords)
tags | N |  | Metadata tags, Array of objects having a name and value.
metadata | N |  | Alias for `tags`
ports | N |  | Array of port objects, see [Exposed Ports](#exposed-ports)
taskSetId | N |  | The Workflow ID to execute.
taskSetName | N |  | The Workflow Name to execute.

#### Volumes

The (optional) `volumes` parameter is for LV configuration, can create additional LVs at provision
It should be passed as an array of Objects with the following attributes:

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
id | N | -1 | The id for the LV configuration being created
rootVolume | N | true | If set to false then a non-root LV will be created
name | Y | root | Name/type of the LV being created
size | N | [from service plan] | Size of the LV to be created in GBs
sizeId | N |  | Can be used to select pre-existing LV choices from <%= application_name %>
storageType | N |  | Identifier for LV type
datastoreId | Y |  | The ID of the specific datastore. Auto selection can be specified as `auto` or `autoCluster` (for clusters).

#### Network Interfaces

The `networkInterfaces` parameter is for network configuration.

The Options API `/api/options/zoneNetworkOptions?zoneId=5&provisionTypeId=10` can be used to see which options are available.

It should be passed as an array of Objects with the following attributes:

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
network.id | Y | n/a | id of the network to be used. A network group can be specified instead by prefixing its ID  with `networkGroup-`.
networkInterfaceTypeId | Y | n/a | The id of type of the network interface.
ipAddress | Y | n/a | The ip address. Not applicable when using DHCP or IP Pools.
id | N | n/a | The interface id. Applicable when resizing and you want to identify an interface to update that already exists.

#### Exposed Ports

The `ports` parameter is for port configuration.

The layout may have default ports, which are defined in node types, that are always configured. This parameter will be for additional custom ports to be opened.

It should be passed as an array of Objects with the following attributes:

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
port | Y | n/a | port number. eg. `8080`
name | N | n/a | A name for the port eg. `web`
lb | N |  | The load balancer protocol. `HTTP`, `HTTPS`, or `TCP`. Default is none.

#### Config

The `config` parameter is for configuration options that are specific to each Provision Type.
The Provision Types api can be used to see which options are available.

##### JSON Config Parameters for VMware
Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
publicKeyId | N |  | ID of a public key to add to the instance
resourcePoolId | Y |  | External ID of the resource group to use for instance
hostId | N |  | Specific host to deploy to if so desired
vmwareUsr | N |  | Additional user to provision to instance
vmwarePwd | N |  | Password for additional user
vmwareDomainName | N |  | Domain name to be given to instance
vmwareCustomSpec | N |  | Customization spec ID


##### JSON Config Parameters for Docker
Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
provisionServerId | N |  | Specific host to deploy to if so desired
resourcePoolId | Y |  | External ID of the resource group to use for instance

##### JSON Config Parameters for Kubernetes
Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
resourcePoolId | Y |  | ID of the resource group (kubernetes cluster) to use for instance

#### Metadata
This is specific to AWS Metadata tags.  Name-Values pairs can be anything you like and are added to the instance JSON as an array of n-v pairs per the example to the right:

```shell
-d '{
  "zoneId": 6,
  "instance": {
    ...
  }
  ...
  "tags": [
    {
      "name": "Tag Name",
      "value": "Sample Value"
    },
    {
      "name": "BusinessUnit",
      "value": "QualityAssurance"
    }
  ]
  ...
}
```


There can be additional properties to apply to the instance. For example mysql provisioning requires a set of initial credentials. You can get a list of what these input options are by fetching the instance-types list via the `instance-types` api and getting available layouts as well as the provision type option types associated with the layout. Currently these input options are available from the option-types map. These however, can be overridden in the event a config options map exists on the layout object within. **NOTE**: See the API Document on OptionTypes for figuring out how to build property maps from them.

## Updating an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "instance": {
      "description": "my new redis",
        "addTags": [
          {"name": "hello", "value": "world"},
          {"name": "flash", "value": "bang"}
        ],
        "removeTags": [
          {"name": "oldTag"}
        ]
    },
    "config": {
      "customOptions": {
        "dbfoldername": "data"
      }
    }
  }'
```

> The above command returns a similar JSON structure when submitting a GET request for a single instance

### HTTP Request

`PUT <%= api_url %>/api/instances/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### JSON Instance Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Unique name scoped to your account for the instance
description |  | Optional description field
instanceContext |  | Environment
labels |  | Array of strings (keywords)
tags |  | Metadata tags, Array of objects having a name and value, this adds or updates the specified tags and removes any tags not specified.
addTags |  | Add or update value of Metadata tags, Array of objects having a name and value
removeTags |  | Remove Metadata tags, Array of objects having a name and an optional value. If value is passed, it must match to be removed.
powerScheduleType |  | Power Schedule ID
site.id |  | Group ID
ownerId  |  | [User](#users) ID, can be used to change instance owner.
config.customOptions  |  | Custom Option Type settings object containing name value pairs to be updated.

## Stop an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1/stop" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will stop all containers running within an instance.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/stop`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Start an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1/start" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will start all containers running within an instance.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/start`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Restart an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1/restart" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will restart all containers running within an instance. This includes rebuilding the environment variables and applying settings to the docker containers.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/restart`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Suspend an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1/suspend" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will suspend all containers in the instance.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/suspend`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Eject an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1/eject" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will eject any ISO media on all containers in the instance.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/eject`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Resize an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1/resize" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "instance": {
    "id": 1,
    "plan": {
      "id": 15
    }
  },
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
  "deleteOriginalVolumes": true,
  "servicePlanOptions": {
    "maxCores": 1,
    "coresPerSocket": 1,
    "maxMemory": 536870912
  },
  "networkInterfaces": [
    {
      "id": 534,
      "name": "eth0",
      "network": {
        "id": "network-20"
      }
    },
    {
      "name": "eth1",
      "network": {
        "id": "network-20"
      }
    }
  ]
}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

It is possible to resize containers within an instance by increasing their memory plan or storage limit. This is done by assigning a new service plan to the container. This endpoint also allows for NIC reconfiguration by passing a new array of `networkInterfaces`.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/resize`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### JSON Parameters

Parameter   | Required | Default | Description
---------   | -------- | ------- | -----------
instance.plan.id | N | null    | The map containing the id of the service plan you wish to apply to the containers in this instance
servicePlanOptions | N |  | Map of custom options depending on selected service plan.
servicePlanOptions.maxCores | N |  | Core Count
servicePlanOptions.coresPerSocket | N |  | Cores Per Socket
servicePlanOptions.maxMemory | N |  | Memory in bytes **For backwards compatability, values less than 1048576 are treated as being in MB and will be converted to bytes**
volumes | no | defaults to plan config | Can be used to grow just the logical volume of the instance instead of choosing a plan, see [Volumes](#volumes).
deleteOriginalVolumes | no | false | Delete the original volumes after resizing. (Amazon only)
networkInterfaces | N |  | Key for network configuration, see [Network Interfaces](#network-interfaces). Include `id` to update an existing interface. The existing interfaces and their `id` can be retrieved with the [hosts](#get-a-specific-host) API.

## Run Workflow on an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1/workflow?workflowId=99" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -d '{ "taskSet": {
    "customOptions": {"foo":"bar"}
    }}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will run a provisioning workflow on all containers in an instance. 

For operational workflows, see [Execute a Workflow](#execute-a-workflow).

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/workflow`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### Query Parameters

Parameter | Description
--------- | -----------
workflowId | ID of the workflow to execute
workflowName | Name of the workflow to execute

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
taskSet      |  | Object containing workflow configuration parameters
taskSet.customOptions      |  | Object containing any custom option type configuration parameters

## Clone an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1/clone" \
  -H "Authorization: BEARER <%= curl_token %>" \
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

`PUT <%= api_url %>/api/instances/:id/clone`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
group       | null    | the map containing the id of the server group you would like to clone into.
group       | null    | the map containing the id of the server group you would like to clone into.
name        | null    | A name for the new cloned instance. If none is specified the existing name will be duplicated with the 'clone' suffix added.

This endpoint also supports all of the same parameters as [Create and Instance](#create-an-instance), so you can override any configuration options when provisioning the clone.

## Backup an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1773/backup" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure that looks like this:

```json
{
    "success": true
}
```

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/backup`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Get list of backups for an Instance

```shell
curl "<%= curl_url %>/api/instances/1773/backups" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure that looks like this:

```json
{
    "instance": {
      "id": 1773
    },
    "backups": [
    ]
}
```

### HTTP Request

`GET <%= api_url %>/api/instances/:id/backups`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Get list of snapshots for an Instance

```shell
curl "<%= curl_url %>/api/instances/1773/snapshots" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure that looks like this:

```json
{
    "snapshots": [
    ]
}
```

### HTTP Request

`GET <%= api_url %>/api/instances/:id/snapshots`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance


## Get a Specific Snapshot


```shell
curl "<%= curl_url %>/api/snapshots/1216" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
    "snapshot": {
        "id": 59,
        "name": "auto-apache-114-2022-01-14T12:57:17.981Z",
        "description": null,
        "externalId": "snapshot-56466",
        "status": "complete",
        "state": null,
        "snapshotType": "vm",
        "snapshotCreated": "2022-01-14T12:57:38Z",
        "zone": {
            "id": 2,
            "name": "ld-vmware"
        },
        "datastore": null,
        "parentSnapshot": null,
        "currentlyActive": true,
        "dateCreated": "2022-01-14T12:57:20Z"
    }
}
```

This endpoint retrieves a specific snapshot.

### HTTP Request

`GET <%= api_url %>/api/snapshots/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the snapshot



## Snapshot an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1773/snapshot" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{ "snapshot": {
    "name": "snapshot-test",
    "description": "A snapshot created via the <%= application_name %> api",
  }
}'
```

> The above command returns JSON structure that looks like this:

```json
{
    "success": true
}
```

This endpoint will create a snapshot of an instance. This is done asychronously, so the ID of the snapshot is not returned.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/snapshot`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### JSON Snapshot Parameters

These parameters are passed under an object named `snapshot`.

Parameter   | Default | Description
---------   | ------- | -----------
name       | "{serverName}.{timestamp}"    | Optional name for the snapshot being created. 
description       |     | Optional description for the snapshot

## Import Snapshot of an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1/import-snapshot" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{ "storageProviderId": 1
  }'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

It is possible to import a snapshot of an instance. This creates a Virtual Image of the instance as it currently exists.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/import-snapshot`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
storageProviderId       | null    | Optional storage provider to use.


## Revert Instance to Snapshot

```shell
curl -X PUT "<%= api_url %>/api/instances/1/revert-snapshot/1835" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

It is possible to restore an Instance to a snapshot.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/revert-snapshot/:snapshotId`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance
:snapshotId | ID of the snapshot


## Delete Snapshot of Instance

```shell
curl -X DELETE "<%= api_url %>/api/snapshots/1835" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Delete snapshot of instance.

### HTTP Request

`DELETE <%= api_url %>/api/snapshots/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the snapshot

## Delete All Snapshots of Instance Container

```shell
curl -X DELETE "<%= api_url %>/api/instances/54/delete-container-snapshots/403" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Delete All Snapshots attached to Instance Container.

### HTTP Request

`DELETE <%= api_url %>/api/instances/:id/delete-container-snapshots/:containerId`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of instance
:containerId | ID of the instance container

## Delete All Snapshots of Instance

```shell
curl -X DELETE "<%= api_url %>/api/instances/54/delete-all-snapshots" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Delete All Snapshots attached to Instance.

### HTTP Request

`DELETE <%= api_url %>/api/instances/:id/delete-all-snapshots`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Create Linked Clone of Instance Snapshot

```shell
curl -X PUT "<%= api_url %>/api/instances/1/linked-clone/1835" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

It is possible to create a linked clone of an Instance Snapshot.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/linked-clone/:snapshotId`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance
:snapshotId | ID of the snapshot


## Clone to Image

```shell
curl -X PUT "<%= api_url %>/api/instances/1/clone-image" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{ "templateName": "Example Image", "zoneFolder": "group-v81" }'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This endpoint allows creating an image template from an existing instance.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/clone-image`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
templateName |    | Image Template Name. Default is server name + timestamp.
zoneFolder |    | Zone Folder externalId. *This is required for VMware*


## Lock an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1/lock" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will lock the instance. While locked, instances may not be removed.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/lock`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Unlock an Instance

```shell
curl -X PUT "<%= api_url %>/api/instances/1/unlock" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will unlock the instance.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/unlock`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance


## Get Security Groups for an Instance

```shell
curl -XGET "<%= curl_url %>/api/instances/1/security-groups" \
  -H "Authorization: BEARER <%= curl_token %>"
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

`GET <%= api_url %>/api/instances/:id/security-groups`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Set Security Groups for an Instance

```shell
curl -X POST "<%= api_url %>/api/instances/1/security-groups" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{ "securityGroupIds": [19, 2] }'
```

> The above command returns JSON structure similar to the 'get' of security groups.

### HTTP Request

`POST <%= api_url %>/api/instances/:id/security-groups`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
securityGroupIds |  | List of all security groups ids which should be applied.  If no security groups should apply, pass '[]'

This defines the list of all the security groups applied to an instance.

## Delete an Instance

```shell
curl -XDELETE "<%= curl_url %>/api/instances/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete an instance and all associated monitors and backups.

### HTTP Request

`DELETE <%= api_url %>/api/instances/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
preserveVolumes | off | Preserve Volumes
keepBackups | off | Preserve copy of backups
releaseEIPs | on | Release EIPs
force | off | Force Delete

## Cancel Expiration of an Instance

```shell
curl -XPUT "<%= curl_url %>/api/instances/2/cancel-expiration" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This operation will cancel the expiration of an instance.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/cancel-expiration`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Extend Expiration of an Instance

```shell
curl -XPUT "<%= curl_url %>/api/instances/2/extend-expiration" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This operation will extend the expiration of an instance. The period of time it is extended is equal to the number of renewal days in the expiration policy.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/extend-expiration`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Cancel Shutdown of an Instance

```shell
curl -XPUT "<%= curl_url %>/api/instances/2/cancel-shutdown" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This operation will cancel the shutdown of an instance.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/cancel-shutdown`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Extend Shutdown of an Instance

```shell
curl -XPUT "<%= curl_url %>/api/instances/2/extend-shutdown" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This operation will extend the shutdown of an instance.  The period of time it is extended is equal to the number of renewal days in the expiration policy.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/extend-shutdown`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Cancel Removal of an Instance

```shell
curl -XPUT "<%= curl_url %>/api/instances/2/cancel-removal" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structured like getting a single instance.

This operation will undo the delete of an instance that is pending removal.

### HTTP Request

`PUT <%= api_url %>/api/instances/:id/cancel-removal`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Get State of an Instance

```shell
curl -XGET "<%= curl_url %>/api/instances/:id/state" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "workloads": [
    {
      "refType": "Instance",
      "refId": 19324,
      "refName": "dev-tf",
      "subRefName": null,
      "stateDate": "2022-04-04T17:35:01Z",
      "status": "ok",
      "iacDrift": false
    }
  ],
  "iacDrift": false,
  "planResources": [

  ],
  "specs": [
    {
      "id": 9,
      "name": "tf-example",
      "template": null,
      "isolated": false
    }
  ],
  "stateData": "{\n    \"format_version\": \"1.0\",\n    \"terraform_version\": \"1.1.7\",\n    ....",
  "planData": "vsphere_virtual_machine.vm: Refreshing state... [id=422da4c7-2fdb-cb01-e65c-0c07e17903a8]\n\nNo changes. Your infrastructure matches the configuration.\n\nTerraform has compared your real infrastructure against your configuration\nand found no differences, so no changes are needed.\n",
  "input": {
    "variables": [
      {
        "name": "environment",
        "value": "dev",
        "sensitive": false,
        "type": "string"
      },
      {
        "name": "instanceName",
        "value": "tf-example",
        "sensitive": false,
        "type": "string"
      }
    ],
    "providers": [
      {
        "name": "vsphere"
      }
    ],
    "data": [
      {
        "key": "dc",
        "name": "labs-qa",
        "type": "vsphere_datacenter"
      },
      {
        "key": "datastore",
        "name": "ESXi-LUN1",
        "type": "vsphere_datastore"
      },
      {
        "key": "pool",
        "name": "QA",
        "type": "vsphere_resource_pool"
      },
      {
        "key": "network",
        "name": "VLAN0002",
        "type": "vsphere_network"
      },
      {
        "key": "template",
        "name": "Morpheus Ubuntu 20.04.1 v1",
        "type": "vsphere_virtual_machine"
      }
    ]
  },
  "output": {
    "outputs": [

    ]
  }
}
```

This endpoint provides a way to view the state of an instance. The response includes output and resource planning information from the template provider software such as Terraform.
This action only applies to Terraform, CloudFormation and ARM and will return an HTTP 400 error for other types.

### HTTP Request

`GET <%= api_url %>/api/instances/:id/state`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Refresh State of an Instance

```shell
curl -XPOST "<%= curl_url %>/api/instances/:id/refresh" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint provides a way to refresh the state of an instance.
This action only applies to Terraform, CloudFormation and ARM and will return an HTTP 400 error for other types.

### HTTP Request

`POST <%= api_url %>/api/instances/:id/refresh`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

## Prepare To Apply an Instance

```shell
curl -XGET "<%= curl_url %>/api/instances/:id/prepare-apply" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "data": {
    "templateParameter": {
      "environment": "dev",
      "instanceName": "tf-example"
    }
  }
}
```

This endpoint provides a way to view the current instance configuration and `templateParameter` variables available to [apply](#apply-state-of-an-app).
This action only applies to Terraform, CloudFormation and ARM and will return an HTTP 400 error for other types.

### HTTP Request

`GET <%= api_url %>/api/instances/:id/prepare-apply`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app

## Validate Apply State for an Instance

```shell
curl -XPOST "<%= curl_url %>/api/instances/:id/validate-apply" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "templateParameter": {
      "instanceName": "example-tf",
      "greeting": "Hello World"
    }
  }'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "executionId": "23e55735-3b6e-4183-861c-01a12eae2f9f"
}
```

This endpoint provides a way to validate instance configuration and `templateParameter` variables before executing the [apply](#apply-state-of-an-instance). This only validates the configuration to see any planned changes and it does not actually [apply](#apply-state-of-an-app) the changes.
This action only applies to Terraform, CloudFormation and ARM and will return an HTTP 400 error for other types.

### HTTP Request

`POST <%= api_url %>/api/instances/:id/validate-apply`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
templateParameter |    | Template Parameter object. A map of key-value pairs that correspond to the template variables i.e. `tfvars`

## Apply State of an Instance

```shell
curl -XPOST "<%= curl_url %>/api/instances/:id/apply" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "templateParameter": {
      "instanceName": "tf-example",
      "greeting": "Hello World"
    }
  }'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint provides a way to apply the state of an instance.
This action only applies to Terraform, CloudFormation and ARM and will return an HTTP 400 error for other types.

### HTTP Request

`POST <%= api_url %>/api/instances/:id/apply`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the instance

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
templateParameter |    | Template Parameter object. A map of key-value pairs that correspond to the template variables i.e. `tfvars`
