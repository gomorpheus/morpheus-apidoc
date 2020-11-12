# Instances

Instances are sets of containers or vms (morpheus API represents a vm as a container attached to a server) of various types that can be provisioned across the Morpheus stack and offer a wide range of services. MySQL, Redis, ElasticSearch, PostgreSQL, Tomcat, nginx, Confluence, Jenkins, and more. There are a few important concept differentiators between what morpheus calls an instance and what amazon calls an instance. In morpheus an isntance can represent many vms or containers that are of a set. For example. If you wanted to spin up a Mongo sharded replicaset, that requires 7 virtual machines or 7 docker containers. Morpheus represents this as a singular instance with a specified layout and then represents all the associated services running within that instance as containers. If, a container record is a docker container then the `serverId` it belongs to is representative of the Docker Host it was provisioned onto. If the container is a virtual machine then the serverId represents the compute resource it was provisioned onto, (i.e. the virtual machine).

## Get All Instances

```shell
curl "$MORPHEUS_API_URL/api/instances?max=3"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

`GET https://api.gomorpheus.com/api/instances`

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
status |  | Filter by instance type status
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
label |  | Filter by label(s).
tags |  | Filter by tags (metadata). This allows filtering by arbitrary tag names and values like this `tags.foo=bar`.
metadata |  | Alias for `tags`

## Get a Specific Instance


```shell
curl "$MORPHEUS_API_URL/api/instances/1216" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "instance": {
    "id": 1698,
    "accountId": 1,
    "instanceType": {
      "id": 44,
      "code": "redis",
      "category": "cache",
      "name": "Redis"
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
      19
    ],
    "servers": [
      2
    ],
    "connectionInfo": [
      {
        "ip": "10.211.55.11",
        "port": 10000
      }
    ],
    "layout": {
      "id": 221
    },
    "plan": {
      "id": 69,
      "code": "container-512"
    },
    "name": "redistest",
    "description": null,
    "instanceVersion": null,
    "labels": [
      "web"
    ],
    "tags": [
      ["id": 55, "name": "Category", "value": "Web"]
    ],
    "maxMemory": 536870912,
    "maxStorage": 5368709120,
    "maxCores": 0,
    "maxCpu": null,
    "dateCreated": "2016-10-25T15:12:06+0000",
    "lastUpdated": "2017-02-13T19:22:00+0000",
    "hostName": "redistest",
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
    "statusDate": "2016-10-25T15:12:41+0000",
    "statusPercent": null,
    "statusEta": null,
    "userStatus": null,
    "owner": {
      "id": 1,
      "username": "admin"
    }
  },
  "stats": {
    "usedStorage": 2951,
    "maxStorage": 1073741824,
    "usedMemory": 266240,
    "maxMemory": 268435456,
    "usedCpu": 0.0418375032
  }
}
```

This endpoint retrieves a specific instance.

### HTTP Request

`GET https://api.gomorpheus.com/api/instances/:id`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

## Get Env Variables

```shell
curl "$MORPHEUS_API_URL/api/instances/1216/envs" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

## Get Instance History

```shell
curl "$MORPHEUS_API_URL/api/instances/238/history" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

`GET https://api.gomorpheus.com/api/instances/:id/history`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
phrase |  | If specified will return a partial match on displayName, message or output
containerId |  | Filter by container id(s)
serverId |  | Filter by server id(s)
zoneId |  | Filter by zone id(s)

## Get Container Details

```shell
curl "$MORPHEUS_API_URL/api/instances/1216/containers" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

`GET https://api.gomorpheus.com/api/instances/:id/containers`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

<!--
# Instance Types
-->

## Get All Instance Types for Provisioning

```shell
curl "$MORPHEUS_API_URL/api/instance-types"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

`GET https://api.gomorpheus.com/api/instance-types`


## Get Specific Instance Type for Provisioning

```shell
curl "$MORPHEUS_API_URL/api/instance-types/12"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

`GET https://api.gomorpheus.com/api/instance-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance type


## Get Available Service Plans for an Instance

```shell
curl -XGET "https://api.gomorpheus.com/api/instances/service-plans?zoneId=1&layoutId=75" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

This returns a list of all of the service plans available for an instance type. The response includes details about the plans and their configuration options. The parameters *zoneId* and *layoutId* are required.

This endpoint can  be used to get the list of plans available for creating a new instance or resizing an existing instance.

### HTTP Request

`GET https://api.gomorpheus.com/api/instances/service-plans`

### Query Parameters

Parameter | Description
--------- | -----------
zoneId | The ID of the [Cloud](#compute-zones)
layoutId | The ID of the instance layout

## Create an Instance

```shell
curl -X POST "https://api.gomorpheus.com/api/instances" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
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
    "vmwareUsr": "morpheus-api",
    "vmwarePwd": "password",
    "vmwareDomainName": null,
    "vmwareCustomSpec": null
  },
  "evars": [
    {"name": "MY_APP_VAR1", "value": "VALUE1"},
    {"name": "MY_APP_VAR2", "value": "VALUE2"}
  ],
}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single instance

### HTTP Request

`POST https://api.gomorpheus.com/api/instances`

### JSON Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
instance  | Y | n/a | Key for name, site, instanceType layout, and plan
instance.name | Y |  | Name of the instance to be created
instance.site.id | Y |  | The Group ID to provision the instance into
instance.instanceType.code | Y |  | The type of instance by code we want to fetch
instance.layout.id |  Y |  | The layout id for the instance type that you want to provision. i.e. single process or cluster
instance.plan.id | Y |  | The id for the memory and storage option pre-configured within Morpheus. See [Available Service Plans](##get-available-service-plans-for-an-instance)
zoneId | Y |  | The Cloud ID to provision the instance onto
evars | N | [] | Environment Variables, an array of objects that have name and value.
copies | N | 1 | Number of copies to provision
layoutSize | N | 1 | Apply a multiply factor of containers/vms within the instance
servicePlanOptions | N |  | Map of custom options depending on selected service plan . An example would be `maxMemory`, or `maxCores`.
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
sizeId | N |  | Can be used to select pre-existing LV choices from Morpheus
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
  "metadata": [
    {
      "name": "SampleName",
      "value": "SampleValue"
    }
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
curl -X PUT "https://api.gomorpheus.com/api/instances/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "instance": {
  "description": "my new redis",
  "addTags": [
    {"name": "hello", "value": "world"},
    {"name": "flash", "value": "bang"}
  ],
  "removeTags": [
    {"name": "oldTag"}
  ]
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single instance

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

### JSON Instance Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Unique name scoped to your account for the instance
description |  | Optional description field
instanceContext |  | Environment
labels | N |  | Array of strings (keywords)
tags |  | Metadata tags, Array of objects having a name and value, this adds or updates the specified tags and removes any tags not specified.
addTags |  | Add or update value of Metadata tags, Array of objects having a name and value
removeTags |  | Remove Metadata tags, Array of objects having a name and an optional value. If value is passed, it must match to be removed.
powerScheduleType |  | Power Schedule ID
site.id |  | Group ID
ownerId  |  | [User](#users) ID, can be used to change instance owner.

## Stop an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1/stop" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

## Start an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1/start" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

## Restart an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1/restart" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

## Suspend an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1/suspend" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will suspend all containers in the instance.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/suspend`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

## Eject an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1/eject" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will eject any ISO media on all containers in the instance.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/eject`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

## Resize an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1/resize" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
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

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

### JSON Parameters

Parameter   | Required | Default | Description
---------   | -------- | ------- | -----------
instance.plan.id | no | null    | The map containing the id of the service plan you wish to apply to the containers in this instance
volumes | no | defaults to plan config | Can be used to grow just the logical volume of the instance instead of choosing a plan
deleteOriginalVolumes | no | false | Delete the original volumes after resizing. (Amazon only)

## Run Workflow on an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1/workflow?workflowId=99" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
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

`PUT https://api.gomorpheus.com/api/instances/:id/workflow`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

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
curl -X PUT "https://api.gomorpheus.com/api/instances/1/clone" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
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

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
group       | null    | the map containing the id of the server group you would like to clone into.
group       | null    | the map containing the id of the server group you would like to clone into.
name        | null    | A name for the new cloned instance. If none is specified the existing name will be duplicated with the 'clone' suffix added.

This endpoint also supports all of the same parameters as [Create and Instance][#create-an-instance], so you can override any configuration options when provisioning the clone.

## Backup an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1773/backup" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure that looks like this:

```json
{
    "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/backup`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

## Get list of backups for an Instance

```shell
curl "$MORPHEUS_API_URL/api/instances/1773/backups" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

`GET https://api.gomorpheus.com/api/instances/:id/backups`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

## Get list of snapshots for an Instance

```shell
curl "$MORPHEUS_API_URL/api/instances/1773/snapshots" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure that looks like this:

```json
{
    "snapshots": [
    ]
}
```

### HTTP Request

`GET https://api.gomorpheus.com/api/instances/:id/snapshots`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

## Snapshot an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1773/snapshot" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "snapshot": {
    "name": "snapshot-test",
    "description": "A snapshot created via the morpheus api",
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

`PUT https://api.gomorpheus.com/api/instances/:id/snapshot`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

### JSON Snapshot Parameters

These parameters are passed under an object named `snapshot`.

Parameter   | Default | Description
---------   | ------- | -----------
name       | "{serverName}.{timestamp}"    | Optional name for the snapshot being created. 
description       |     | Optional description for the snapshot

## Import Snapshot of an Instance

```shell
curl -X PUT "https://api.gomorpheus.com/api/instances/1/import-snapshot" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
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

`PUT https://api.gomorpheus.com/api/instances/:id/import-snapshot`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
storageProviderId       | null    | Optional storage provider to use.

## Get Security Groups

```shell
curl -XGET "https://api.gomorpheus.com/api/instances/1/security-groups" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

## Set Security Groups

```shell
curl -X POST "https://api.gomorpheus.com/api/instances/1/security-groups" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "securityGroupIds": [19, 2] }'
```

> The above command returns JSON structure similar to the 'get' of security groups.

### HTTP Request

`POST https://api.gomorpheus.com/api/instances/:id/security-groups`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
securityGroupIds |  | List of all security groups ids which should be applied.  If no security groups should apply, pass '[]'

This defines the list of all the security groups applied to an instance.

## Delete an Instance

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/instances/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
preserveVolumes | off | Preserve Volumes
keepBackups | off | Preserve copy of backups
releaseEIPs | on | Release EIPs
force | off | Force Delete

## Undo Delete of an Instance

```shell
curl -XPUT "$MORPHEUS_API_URL/api/instances/2/cancel-removal" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structured like getting a single instance.

This operation will undo the delete of an instance that is pending removal.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/cancel-removal`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the instance