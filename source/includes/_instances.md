# Instances

Instances are sets of containers of various types that can be provisioned across the Morpheus stack and offer a wide range of services. MySQL, Redis, ElasticSearch, PostgreSQL, Tomcat, nginx, Confluence, Jenkins, and more.

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
curl "https://api.gomorpheus.com/api/instances/1" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "instance": {
    "id": 4,
    "accountId": 1,
    "instanceType": {
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
          "description": "This will provision a single process with no redundancy"
        }
      ]
    },
    "layout": {
      "id": 7,
      "code": "tomcat-7.0.62-single",
      "name": "Single Process",
      "description": "This will provision a single process with no redundancy"
    },
    "plan": null,
    "name": "My Tomcat",
    "description": null,
    "dateCreated": "2015-06-09T20:59:17Z",
    "lastUpdated": "2015-06-09T21:00:19Z",
    "status": "running"
    "containerIds": [
      4
    ]
  }
}
```

This endpoint retrieves a specific instance.

## Provision an Instance

```shell
curl -X POST "https://api.gomorpheus.com/api/instances" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{ "instance": {
  "name": "myRedis",
  "description": "dre-matrix-3",
  "instanceType": {"code":'redis'},
  "layout": {"id": 1},
  "site": {"id": 1}
  },
  "servicePlan": 1
  }
```

> The above command returns a similar JSON structure when submitting a GET request for a single check 

### HTTP Request

`POST https://api.gomorpheus.com/api/instances`

### JSON Instance Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      | null | Unique name scoped to your account for the instance
description | null | Optional description field
instanceType | null | The type of instance by code we want to fetch
servicePlan | null | service plans designate layout and capacity
layout | null | the layout id for the instance type that you want to provision. i.e. single process or cluster
site   | null | The Group Id for which server group to provision into. (can be acquired using the /api/groups API)

There can be additional properties to apply to the instance. For example mysql provisioning requires a set of initial credentials. You can get a list of what these input options are by fetching the instance-types list via the `instance-types` api and getting available layouts. Currently these input options are available in the `instanceType.config.options` map. These however, can be overridden in the event a config options map exists on the layout object within. **NOTE**: Custom options belong outside of the `instance` object block in the JSON Post just like the servicePlan argument does as well.

## Updating an Instance

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1" \
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
curl -XPUT "https://api.gomorpheus.com/api/instances/1/stop" \
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
curl -XPUT "https://api.gomorpheus.com/api/instances/1/start" \
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
curl -XPUT "https://api.gomorpheus.com/api/instances/1/resize" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{ "servicePlan": {
    "id": 1
  }}'
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

Parameter   | Default | Description
---------   | ------- | -----------
servicePlan | null    | the map containing the id of the service plan you wish to apply to the containers in this instance

## Clone an Instance

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1/clone" \
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
