# Clusters

Clusters is for creating and managing Kubernetes Clusters, <%= application_name %> managed Docker Clusters, KVM Clusters, or Cloud specific Kubernetes services such as EKS. The `Triforce` Cluster is a combination Kubernetes, KVM and Functions* Cluster, with all nodes supporting all three provision types. 

A Cluster may also be referred to as an *Server Group* or *serverGroup*.

## Get All Clusters

```shell
curl "<%= curl_url %>/api/clusters" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
    "clusters": [
        {
            "id": 1,
            "name": "cluster-1",
            "code": null,
            "category": null,
            "visibility": "public",
            "description": null,
            "location": null,
            "enabled": false,
            "serviceUrl": null,
            "serviceHost": null,
            "servicePath": null,
            "serviceHostname": null,
            "servicePort": 22,
            "serviceUsername": null,
            "servicePassword": null,
            "serviceToken": null,
            "serviceAccess": null,
            "serviceCert": null,
            "serviceConfig": null,
            "serviceVersion": null,
            "searchDomains": null,
            "enableInternalDns": false,
            "internalId": null,
            "externalId": null,
            "datacenterId": null,
            "status": "provisioning",
            "statusDate": "2019-08-14T04:42:22+0000",
            "statusMessage": null,
            "inventoryLevel": "full",
            "lastSync": "2019-08-09T23:32:04+0000",
            "nextRunDate": "2019-08-14T04:47:22+0000",
            "lastSyncDuration": 138,
            "dateCreated": "2019-07-29T20:34:27+0000",
            "lastUpdated": "2019-08-14T04:42:22+0000",
            "serviceEntry": null,
            "createdBy": {
                "id": 1,
                "username": "root"
            },
            "userGroup": null,
            "layout": {
                "id": 3,
                "name": "Amazon Docker Host",
                "provisionTypeCode": "amazon"
            },
            "owner": {
                "id": 1,
                "name": "Stubby Toes Inc."
            },
            "servers": [
                {
                    "id": 1,
                    "name": "cluster-1",
                    "typeSet": {
                        "id": 5,
                        "code": "kubernetes-amazon-ubuntu-16.04-set",
                        "name": "kubernetes master"
                    },
                    "computeServerType": {
                        "id": 99,
                        "code": "amazonLinux",
                        "nodeType": "morpheus-node"
                    }
                }
            ],
            "accounts": [

            ],
            "integrations": [

            ],
            "site": {
                "id": 2,
                "name": "stubby toes aws group"
            },
            "type": {
                "id": 2,
                "name": "Docker Cluster"
            },
            "zone": {
                "id": 3,
                "name": "stubby toes aws cloud",
                "zoneType": {
                    "id": 12
                }
            },
            "config": null,
            "workers": [
                {
                    "id": 7,
                    "name": "cluster-1",
                    "status": "provisioning",
                    "powerState": "on"
                }
            ],
            "workerCount": 1,
            "workerStats": {
                "usedStorage": 0,
                "maxStorage": 21474836480,
                "usedMemory": 0,
                "maxMemory": 536870912,
                "usedCpu": 0.0,
                "cpuUsage": 0.0,
                "cpuUsagePeak": 0.0,
                "cpuUsageAvg": 0.0
            }
        }
    ],
    "meta": {
        "size": 5,
        "total": 5,
        "max": 25,
        "offset": 0
    }
}
```

This endpoint retrieves all clusters and a list of clusters associated with the zone by id.

### HTTP Request

`GET <%= api_url %>/api/clusters`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name or serviceUrl filter, restricts query to only load clusters which contain the phrase specified
name |  | Name filter, restricts query to only load clusters matching the name specified
zoneId |  | Zone filter, restricts query to only load clusters of a specified zone
typeId |  | Type filter, restricts query to only load clusters of a specified cluster type

## Get a Specific Cluster

```shell
curl "<%= curl_url %>/api/clusters/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
    "cluster": {
        "id": 3,
        "name": "kubernetes-cluster",
        "code": null,
        "category": null,
        "visibility": "public",
        "description": null,
        "location": null,
        "enabled": false,
        "serviceUrl": null,
        "serviceHost": null,
        "servicePath": null,
        "serviceHostname": null,
        "servicePort": 22,
        "serviceUsername": null,
        "servicePassword": null,
        "serviceToken": null,
        "serviceAccess": null,
        "serviceCert": null,
        "serviceConfig": null,
        "serviceVersion": null,
        "searchDomains": null,
        "enableInternalDns": false,
        "apiKey": "xxxxx",
        "internalId": null,
        "externalId": null,
        "datacenterId": null,
        "status": "provisioning",
        "statusDate": "2019-07-29T23:44:34+0000",
        "statusMessage": null,
        "inventoryLevel": "full",
        "lastSync": null,
        "nextRunDate": "2019-08-14T04:47:22+0000",
        "lastSyncDuration": null,
        "dateCreated": "2019-07-29T23:40:56+0000",
        "lastUpdated": "2019-08-14T04:43:54+0000",
        "serviceEntry": null,
        "createdBy": {
            "id": 1,
            "username": "root"
        },
        "userGroup": null,
        "layout": {
            "id": 4,
            "name": "Kubernetes 1.14 Cluster on Ubuntu 16.04, Weave, OpenEBS",
            "provisionTypeCode": "amazon"
        },
        "owner": {
            "id": 1,
            "name": "Stubby Toes Inc."
        },
        "servers": [
            {
                "id": 14,
                "name": "kube1-worker-2",
                "computeServerType": {
                    "id": 192,
                    "code": "amazonKubeWorker",
                    "nodeType": "kube-worker"
                }
            },
            {
                "id": 12,
                "name": "kube1-master",
                "computeServerType": {
                    "id": 191,
                    "code": "amazonKubeMaster",
                    "nodeType": "kube-master"
                }
            },
            {
                "id": 13,
                "name": "kube1-worker-1",
                "computeServerType": {
                    "id": 192,
                    "code": "amazonKubeWorker",
                    "nodeType": "kube-worker"
                }
            },
            {
                "id": 15,
                "name": "kube1-worker-3",
                "computeServerType": {
                    "id": 192,
                    "code": "amazonKubeWorker",
                    "nodeType": "kube-worker"
                }
            }
        ],
        "accounts": [

        ],
        "integrations": [

        ],
        "site": {
            "id": 2,
            "name": "aws group"
        },
        "type": {
            "id": 1,
            "name": "Kubernetes Cluster"
        },
        "zone": {
            "id": 3,
            "name": "aws cloud",
            "zoneType": {
                "id": 12
            }
        },
        "config": "{\"initConfig\":\"\"}",
        "workerStats": {
            "usedStorage": 0,
            "maxStorage": 53687091200,
            "usedMemory": 0,
            "maxMemory": 2147483648,
            "usedCpu": 0.0,
            "cpuUsage": 0.0,
            "cpuUsagePeak": 0.0,
            "cpuUsageAvg": 0.0
        },
        "containersCount": 35,
        "servicesCount": 1,
        "deploymentsCount": 1,
        "podsCount": 33,
        "jobsCount": 1,
        "volumesCount": 2,
        "namespacesCount": 1,
        "workersCount": 4,
        "permissions": {
            "resourcePool": {
                "id": 12,
                "visibility": "public"
            },
            "resourcePermissions": {
                "allGroups": true,
                "defaultStore": false,
                "allPlans": false,
                "defaultTarget": false,
                "morpheusResourceType": "ComputeZonePool",
                "morpheusResourceId": 12,
                "canManage": false,
                "all": true,
                "account": {
                    "id": 1
                },
                "sites": [
                    {
                        "id": 2,
                        "name": "dans aws group",
                        "default": true
                    }
                ],
                "plans": [
                    {
                        "id": 88,
                        "name": "128MB Memory, 1GB Storage",
                        "default": false
                    }
                ]
            }
        }
    }
}
```

This endpoint retrieves a specific cluster.

### HTTP Request

`GET <%= api_url %>/api/clusters/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the cluster


## Create a Cluster

```shell
curl -XPOST "<%= curl_url %>/api/clusters" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"cluster": {
        "type": "docker-cluster",
        "name": "stubby toes docker cluster",
        "description": "cluster description",
        "group": {"id": 2},
        "cloud": {"id": 3},
        "layout": "docker-amazon-ubuntu-16.04-single",
        "server": {
            "config": {
                "resourcePool": "vpc-d673ebb3",
                "publicIpType": "subnet",
                "createUser": false
            },
            "name": "tippytoes",
            "plan": {
                "code": "amazon-t2.nano",
                "options": {
                    "maxMemory": 536870912,
                    "cpuCount": 1,
                    "coreCount": 1,
                    "coresPerSocket": 1
                }
            },
            "volumes": [
                {
                    "id": -1,
                    "rootVolume": true,
                    "name": "root",
                    "size": 10,
                    "sizeId": null,
                    "storageType": 10,
                    "datastoreId": null
                }
            ],
            "networkInterfaces": [
                {
                    "network": {
                        "id": "network-20"
                    }
                }
            ],
            "securityGroups": [
                "sg-052d3dacc2b663fdd"
            ],
            "visibility": "private",
            "userGroup": {
                "id": 1
            },
            "networkDomain": null,
            "hostname": null,
            "nodeCount": 3,
            "tags": [
              {
                "name": "Tag Name",
                "value": "Sample Value"
              },
              {
                "name": "BusinessUnit",
                "value": "QualityAssurance"
              }
            ],
            "labels": [
                "cool",
                "beans"
            ]
        }
    }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single check 

### HTTP Request

`POST <%= api_url %>/api/clusters`

### JSON Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
type  | Y | n/a | Type of cluster to be created
name | Y | n/a | Name of the cluster to be created
description | N |  | Description of the cluster to be created
group.id | Y | n/a | The Group ID to provision the cluster into
cloud.id | Y | n/a | The Cloud ID to provision the host into 
layout.id | Y | n/a | The Layout ID for the host type(s) that will be provisioned for the cluster 
server | Y | n/a | Key for server configuration, see [Server](#server)
        
#### Server

The `server` parameter is for server host configuration that are specific to each Provision Type.
The Provision Types api can be used to see which options are available.

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
config | Y |  | Key for specific host type configuration, see [Config](#config)
name | Y | n/a | Name to be used for host(s) created in the cluster
plan.id | Y |  | The id for the memory and storage option pre-configured within <%= application_name %>. 
plan.options | N |  | Map of custom options depending on selected service plan . An example would be `maxMemory`, or `maxCores`.
volumes | N |  | Key for volume configuration, see [Volumes](#volumes)  
networkInterfaces | N |  | Key for network configuration, see [Network Interfaces](#network-interfaces)
securityGroups | N |  | Key for security group configuration. It should be passed as an array of objects containing the id of the security group to assign the host to
visibility | N | private | Visibility for server host
userGroup.id | N |  | User Group ID for server host
hostname | N |  | Hostname for server host
nodeCount | N |  | Number of workers or hosts
labels | N |  | Array of strings (keywords)
tags | N |  | Metadata tags, Array of objects having a name and value. 

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

#### Config

The `config` parameter is for configuration options that are specific to each Provision Type.
The Provision Types api can be used to see which options are available.


## Update Cluster

```shell
curl -XPUT "<%= curl_url %>/api/clusters/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"cluster": {
       "name": "Cluster Name",
       "description": "Cluster Description",
       "enabled": true,
       "serviceUrl": "https://api-endpoint.com",
       "refresh": true
      }}' 
```

> The above command returns a similar JSON structure when submitting a GET request for a single cluster 

### HTTP Request

`PUT <%= api_url %>/api/clusters/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### JSON Cluster Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | Cluster name
description |  | Cluster description
enabled |  | Cluster enabled
serviceUrl |  | Cluster API Url
refresh |  | Queue cluster refresh

## Update Cluster Permissions

```shell
curl -XPUT "<%= curl_url %>/api/clusters/1/permissions" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"permissions": {
       "resourcePermissions": {
         "all": true,
         "sites": [{"id": 1, "default": true}],
         "allPlans": true,
         "plans": [{"id": 1, "default": false}]
       }
      }}' 
```

> The above command returns a similar JSON structure when submitting a GET request for a single cluster 

### HTTP Request

`PUT <%= api_url %>/api/clusters/:id/permissions`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### JSON Cluster Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
permissions | Y | n/a | Key for server configuration, see [Permissions](#permissions)

#### Permissions

The `permissions` parameter is for permissions for clusters and namespaces.

Parameter | Default | Description
--------- | ------- | -----------
resourcePool.visibility |  | Applicable to clusters only
resourcePermissions.all  |  | Pass true to allow access to all groups
resourcePermissions.sites  |  | Array of groups that are allowed access
resourcePermissions.allPlans |  | Pass true to allow access to all plans
resourcePermissions.plans |  | Array of plans that are allowed access
tenantPermissions.accounts  |  | Array of tenant account ids that are allowed access


## Delete a Cluster

```shell
curl -XDELETE "<%= curl_url %>/api/clusters/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a cluster and associated resources, hosts, volumes asynchronously 

### HTTP Request

`DELETE <%= api_url %>/api/clusters/:id`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
removeResources | on | Remove Infrastructure.
removeInstances | off | Remove Associated Hosts
preserveVolumes | off | Preserve Volumes
releaseEIPs | on | Release EIPs
force | off | Force Delete


## Get API Config

```shell
curl "<%= curl_url %>/api/clusters/1/api-config" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" 
```

> The above comand returns JSON structure like this:

```json
{
  "serviceUrl": null,
  "serviceHost": null,
  "servicePath": null,
  "serviceHostname": null,
  "servicePort": 22,
  "serviceUsername": null,
  "servicePassword": null,
  "serviceToken": null,
  "serviceAccess": null,
  "serviceCert": null,
  "serviceConfig": null,
  "serviceVersion": null
}
```

This endpoint retrieves the API configuration for a specified cluster. The configuration is cluster type specific, see [API Config Mappings](#api-config-mappings)

### API Config Mappings

See below for cluster type specific mappings

#### Kubernetes
Config | Purpose
------ | -------
serviceToken | API Token
serviceAccess | Kube Config

### HTTP Request

`GET <%= api_url %>/api/clusters/:id/api-config`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster


## List Namespaces (Kubernetes)

```shell
curl "<%= curl_url %>/api/clusters/:cluster_id/namespaces" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "namespaces": [
    {
      "id": 1,
      "name": "Namespace",
      "description": "Some details about namespace",
      "regionCode": null,
      "externalId": null,
      "status": "available",
      "active": true
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

### HTTP Request

`GET <%= api_url %>/api/clusters/:clusterId/namespaces`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster


## Get Namespace (Kubernetes)

```shell
curl "<%= curl_url %>/api/clusters/:clusterId/namespaces/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "namespace": {
    "id": 13,
    "visibility": "public",
    "name": "My Namespace",
    "description": "new description",
    "status": "available",
    "active": true,
    "permissions": {
      "resourcePermissions": {
        "allGroups": true,
        "defaultStore": false,
        "allPlans": true,
        "defaultTarget": false,
        "morpheusResourceType": "ComputeZonePool",
        "morpheusResourceId": 13,
        "canManage": false,
        "all": true,
        "account": {
          "id": 1
        },
        "sites": [
          {
            "id": 2,
            "name": "aws group",
            "default": false
          }
        ],
        "plans": [
          {
            "id": 88,
            "name": "128MB Memory, 1GB Storage",
            "default": true
          }
        ]
      }
    }
  }
}
```

This endpoint retrieves a specific namespace of a cluster

### HTTP Request

`GET <%= api_url %>/api/clusters/:clusterId/namespaces/:id`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the namespace


## Add Namespace (Kubernetes)

```shell
curl -XPOST "<%= curl_url %>/api/clusters/1/namespaces" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"namespace": {
       "name": "Namespace Name",
       "description": "Description",
       "active": true,
       "resourcePermissions": {
         "all": true,
         "allPlans": true,
         "sites": [{"id": 2,"default": true}],
         "plans": [{"id": 88,"default": false}]
       }
      }}'
```         

> The above command returns JSON structure like this:

```json
{
  "success": true,
  "namespace": {
    "id": 1,
    "name": "Namespace Name",
    "description": "Description",
    "regionCode": null,
    "externalId": null,
    "status": "available"
  }
}
```

### HTTP Request

`POST <%= api_url %>/api/clusters/:id/namespaces`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### JSON Cluster Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
name | Y |  | Namespace name
description | N |  | Namespace description
active | N | false | Namespace active
resourcePermissions | N |  | Key for resource permission configuration, see [Resource Permissions](#resource-permissions)  

#### Resource Permissions

The `resourcePermissions` parameter is a map for namespace group and service plan permissions.

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
all | N |  | Pass true to allow access to all groups
sites | N |  | Array of groups that are allowed access
allPlans | N |  | Pass true to allow access to all service plans
plans | N | n/a | Array of service plans that are allowed access


## Update Namespace (Kubernetes)

```shell
curl -XPUT "<%= curl_url %>/api/clusters/1/namespaces/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"namespace": {
       "description": "Description",
       "active": true,
       "permissions": {
         "resourcePermissions": {
           "all": true,
           "sites": [{"id": 1, "default": true}],
           "allPlans": true,
           "plans": [{"id": 1, "default": false}]
         }
       }  
      }}'
```         

> The above command returns same JSON structure as [Add Namespace](#add-namespace-kubernetes)

### HTTP Request

`PUT <%= api_url %>/api/clusters/:clusterId/namespaces/:id`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the namespace

### JSON Cluster Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
description | N |  | Namespace description
active | N | false | Namespace active
permissions | N |  | Key for resource permission configuration, see [Permissions](#permissions)  


## Delete a Namespace (Kubernetes)

```shell
curl -XDELETE "<%= curl_url %>/api/clusters/1/namespaces/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a namespace from the specified cluster

### HTTP Request

`DELETE <%= api_url %>/api/clusters/:clusterId/namespaces/:id`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the namespace to delete

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
force | off | Force Delete


## Add Worker

```shell
curl -XPOST "<%= curl_url %>/api/clusters/:id/servers" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"server": {
        "config": {
            "resourcePool": "vpc-d673ebb3",
            "publicIpType": "subnet",
            "createUser": false
        },
        "name": "tippytoes",
        "plan": {
            "code": "amazon-t2.nano",
            "options": {
                "maxMemory": 536870912,
                "cpuCount": 1,
                "coreCount": 1,
                "coresPerSocket": 1
            }
        },
        "volumes": [
            {
                "id": -1,
                "rootVolume": true,
                "name": "root",
                "size": 10,
                "sizeId": null,
                "storageType": 10,
                "datastoreId": null
            }
        ],
        "networkInterfaces": [
            {
                "network": {
                    "id": "network-20"
                }
            }
        ],
        "securityGroups": [
            "sg-052d3dacc2b663fdd"
        ],
        "visibility": "private",
        "userGroup": {
            "id": 1
        },
        "networkDomain": null,
        "hostname": null,
        "nodeCount": 1, 
        "taskSet": {
          "id": 2
        }       
    }}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

### HTTP Request

`POST <%= api_url %>/api/clusters/:id/servers`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### JSON Parameters

Parameter | Description
--------- | -----------
server | Key for server configuration, see [Server](#server)


## Get Workers

```shell
curl "<%= curl_url %>/api/clusters/:id/workers" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "workers": [
    {
      "id": 11,
      "externalId": "i-03a65f2d1d34f4d76",
      "internalId": null,
      "accountId": 1,
      "account": {
        "name": "Stubby Toes Inc."
      },
      "name": "kube-worker-1",
      "visibility": "public",
      "description": null,
      "zoneId": 3,
      "siteId": 2,
      "sshHost": null,
      "sshPort": 22,
      "externalIp": null,
      "internalIp": "172.31.7.195",
      "volumeId": null,
      "platform": null,
      "platformVersion": null,
      "sshUsername": "root",
      "sshPassword": "****",
      "osDevice": "/dev/sda",
      "dataDevice": "/dev/sdb",
      "lvmEnabled": false,
      "apiKey": "xxxxx",
      "softwareRaid": false,
      "dateCreated": "2019-07-29T23:41:19+0000",
      "lastUpdated": "2019-08-09T21:25:44+0000",
      "stats": {
        "usedStorage": null,
        "reservedStorage": 0,
        "maxStorage": 10737418240,
        "usedMemory": 0,
        "reservedMemory": 0,
        "maxMemory": 536870912
      },
      "status": "failed",
      "statusMessage": null,
      "errorMessage": null,
      "statusDate": null,
      "statusPercent": null,
      "statusEta": null,
      "powerState": "unknown",
      "computeServerType": {
        "id": 192,
        "code": "amazonKubeWorker",
        "name": "Amazon Kubernetes Worker",
        "managed": true,
        "externalDelete": true
      },
      "agentInstalled": false,
      "lastAgentUpdate": null,
      "agentVersion": null,
      "maxCores": 1,
      "maxMemory": 536870912,
      "maxStorage": 10737418240,
      "maxCpu": null,
      "serverOs": null,
      "enabled": true,
      "zone": {
        "id": 3,
        "name": "stubby toes aws cloud"
      },
      "plan": {
        "id": 1,
        "code": "amazon-t2.nano",
        "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory"
      },
      "containers": [

      ]
    }
  ]  
}
```

This endpoint retrieves workers of a specified cluster.

### HTTP Request

`GET <%= api_url %>/api/clusters/:id/workers`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
phrase |  | Name filter, restricts query to only load workers matching the name or display name


## Delete a Worker

```shell
curl -XDELETE "<%= curl_url %>/api/clusters/:clusterId/servers/:serverId" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This endpoint deletes a specified worker from a specified cluster.

### HTTP Request

`DELETE <%= api_url %>/api/clusters/:clusterId/servers/:serverId`


### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
serverId | The ID of the server (worker)

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
force | off | Force Delete

## Update Worker Count

```shell
curl -XPUT "<%= curl_url %>/api/clusters/:id/worker-count?workerCount=3" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This endpoint resizes a cluster to the specified number of worker nodes (only supports Azure AKS, Google GKE, and Amazon EKS clusters).

### HTTP Request

`PUT <%= api_url %>/api/clusters/:id/worker-count`


### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
workerCount | | The target number of worker nodes


## Get Masters (Kubernetes)

```shell
curl "<%= curl_url %>/api/clusters/:id/masters" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured similar to [Get Workers](#get-workers)

This endpoint retrieves masters of a specified kubernetes cluster.

### HTTP Request

`GET <%= api_url %>/api/clusters/:id/masters`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
phrase |  | Name filter, restricts query to only load workers matching the name or display name


## Get Volumes

```shell
curl "<%= curl_url %>/api/clusters/:id/volumes" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "volumes": [
    {
      "id": 123,
      "displayOrder": 0,
      "active": true,
      "usedStorage": 0,
      "resizeable": true,
      "online": true,
      "deviceDisplayName": "xvda",
      "name": "root",
      "externalId": "vol-076adc80392a1217a",
      "volumeType": "disk",
      "deviceName": "/dev/sda1",
      "removable": false,
      "readOnly": false,
      "zoneId": 3,
      "rootVolume": true,
      "category": "kubernetes.persistentVolumeClaim.cluster.3",
      "status": "provisioned",
      "maxStorage": 21474836480,
      "account": {
        "id": 1
      },
      "type": {
        "id": 10
      }
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

This endpoint retrieves volumes of a specified cluster.

### HTTP Request

`GET <%= api_url %>/api/clusters/:id/volumes`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
order | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name or internalId filter, restricts query to only load volumes which contain the phrase specified


## Delete a Volume

```shell
curl -XDELETE "<%= curl_url %>/api/clusters/:clusterId/volumes/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a volume from the specified cluster

### HTTP Request

`DELETE <%= api_url %>/api/clusters/:clusterId/volumes/:id`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the volume to delete

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
force | off | Force Delete

 
## Get Containers

```shell
curl "<%= curl_url %>/api/clusters/:id/containers" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "containers": [
    {
      "id": 14,
      "uuid": "",
      "accountId": 1,
      "instance": null,
      "containerType": {
        "id": 50,
        "code": "ubuntu-14.04.03",
        "category": null,
        "name": "Ubuntu 14.04"
      },
      "containerTypeSet": {
        "id": null,
        "code": null,
        "category": null
      },
      "server": {
        "id": 20,
        "name": "cluster 2"
      },
      "cloud": {
        "id": 3,
        "name": "aws cloud"
      },
      "name": "ubuntu_14",
      "ip": "172.31.0.197",
      "internalIp": "172.31.0.197",
      "internalHostname": "container14",
      "externalHostname": "container14",
      "externalDomain": "localdomain",
      "externalFqdn": "container14.localdomain",
      "ports": [

      ],
      "plan": {
        "id": null,
        "code": null,
        "name": null
      },
      "dateCreated": null,
      "lastUpdated": "2019-10-01T13:55:23+0000",
      "statsEnabled": false,
      "status": "unknown",
      "userStatus": "stopped",
      "environmentPrefix": null,
      "stats": {
      },
      "runtimeInfo": {
      },
      "containerVersion": null,
      "repositoryImage": null,
      "planCategory": null,
      "hostname": null,
      "domainName": null,
      "volumeCreated": false,
      "containerCreated": false,
      "maxStorage": null,
      "maxMemory": null,
      "maxCores": null,
      "maxCpu": null,
      "availableActions": [

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

This endpoint retrieves containers of a specified cluster.

### HTTP Request

`GET <%= api_url %>/api/clusters/:id/containers`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
order | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name or internalId filter, restricts query to only load containers which contain the phrase specified
resourceLevel |  | Resource level filter: app, system, storage, logging


## Get Deployments

```shell
curl "<%= curl_url %>/api/clusters/:id/deployments" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "deployments": [
    {
      "id": 4,
      "name": "test deployment display name",
      "code": "test_deployment_code",
      "description": null,
      "category": "kubernetes.deployment.cluster.3",
      "resourceLevel": "app",
      "resourceType": "deployment",
      "managed": false,
      "status": "starting",
      "lastUpdated": "2019-10-01T02:09:53+0000",
      "owner": {
        "id": 1
      },
      "totalCpuUsage": 0,
      "stats": {
      }
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

This endpoint retrieves deployments of a specified cluster.

### HTTP Request

`GET <%= api_url %>/api/clusters/:id/deployments`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
order | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name or internalId filter, restricts query to only load deployments which contain the phrase specified
resourceLevel |  | Resource level filter: app, system, storage, logging


## Get Jobs

```shell
curl "<%= curl_url %>/api/clusters/:id/jobs" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "jobs": [
    {
      "id": 5,
      "name": "Job 1",
      "type": "morpheus.task",
      "status": null,
      "namespace": null,
      "category": "kubernetes.job.cluster.3",
      "description": null,
      "enabled": true,
      "dateCreated": "2019-09-29T19:51:37+0000",
      "lastUpdated": "2019-09-29T20:00:58+0000",
      "lastRun": null,
      "createdBy": {
        "id": 1,
        "username": "root"
      }
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

This endpoint retrieves jobs of a specified cluster.

### HTTP Request

`GET <%= api_url %>/api/clusters/:id/jobs`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
order | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name or internalId filter, restricts query to only load jobs which contain the phrase specified


## Get Pods

```shell
curl "<%= curl_url %>/api/clusters/:id/pods" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "pods": [
    {
      "id": 30,
      "name": "test pod display name",
      "code": "test_pod_code",
      "description": null,
      "category": "kubernetes.pod.cluster.3",
      "resourceLevel": null,
      "resourceType": "pod",
      "managed": false,
      "status": "unknown",
      "lastUpdated": "2019-10-01T00:29:07+0000",
      "owner": {
        "id": 1
      },
      "totalCpuUsage": 0,
      "stats": {
      }
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

This endpoint retrieves pods of a specified cluster.

### HTTP Request

`GET <%= api_url %>/api/clusters/:id/pods`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
order | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name or internalId filter, restricts query to only load pods which contain the phrase specified
resourceLevel |  | Resource level filter: app, system, storage, logging


## Get Services

```shell
curl "<%= curl_url %>/api/clusters/:id/services" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "services": [
    {
      "id": 5,
      "name": "test service",
      "type": null,
      "code": null,
      "externalIp": null,
      "internalIp": null,
      "externalPort": null,
      "internalPort": null,
      "status": null,
      "dateCreated": null,
      "lastUpdated": null
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

This endpoint retrieves services of a specified cluster.

### HTTP Request

`GET <%= api_url %>/api/clusters/:id/services`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
order | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name or internalId filter, restricts query to only load services which contain the phrase specified


## Get Stateful Sets

```shell
curl "<%= curl_url %>/api/clusters/:id/statefulsets" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "statefulsets": [    
    {
      "id": 3,
      "name": "test statefulset display name",
      "code": "test_code",
      "description": null,
      "category": "kubernetes.statefulset.cluster.3",
      "resourceLevel": null,
      "resourceType": "statefulset",
      "managed": false,
      "status": "starting",
      "lastUpdated": "2019-10-01T02:10:32+0000",
      "owner": {
        "id": 1
      },
      "totalCpuUsage": 0,
      "stats": {
      }
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

This endpoint retrieves stateful sets of a specified cluster.

### HTTP Request

`GET <%= api_url %>/api/clusters/:id/statefulsets`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
order | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name or internalId filter, restricts query to only load stateful sets which contain the phrase specified
resourceLevel |  | Resource level filter: app, system, storage, logging


## Delete Container

```shell
curl -XDELETE "<%= curl_url %>/api/clusters/:clusterId/containers/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a container from the specified cluster

### HTTP Request

`DELETE <%= api_url %>/api/clusters/:clusterId/containers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the container to delete

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
force | off | Force Delete


## Delete a Deployment

```shell
curl -XDELETE "<%= curl_url %>/api/clusters/:clusterId/deployments/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a deployment from the specified cluster

### HTTP Request

`DELETE <%= api_url %>/api/clusters/:clusterId/deployments/:id`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the deployment to delete

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
force | off | Force Delete


## Delete a Job

```shell
curl -XDELETE "<%= curl_url %>/api/clusters/:clusterId/jobs/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a job from the specified cluster

### HTTP Request

`DELETE <%= api_url %>/api/clusters/:clusterId/jobs/:id`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the job to delete

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
force | off | Force Delete


## Delete a Service

```shell
curl -XDELETE "<%= curl_url %>/api/clusters/:clusterId/services/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a service from the specified cluster

### HTTP Request

`DELETE <%= api_url %>/api/clusters/:clusterId/services/:id`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the service to delete

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
force | off | Force Delete


## Delete a Stateful Set

```shell
curl -XDELETE "<%= curl_url %>/api/clusters/:clusterId/statefulsets/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a stateful set from the specified cluster

### HTTP Request

`DELETE <%= api_url %>/api/clusters/:clusterId/statefulsets/:id`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the stateful set to delete

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
force | off | Force Delete


## Restart a Container

```shell
curl -XPUT "<%= curl_url %>/api/clusters/:clusterId/containers/:id/restart" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will restart a container in the specified cluster

### HTTP Request

`PUT <%= api_url %>/api/clusters/:clusterId/containers/:id/restart`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the container to restart


## Restart a Deployment

```shell
curl -XPUT "<%= curl_url %>/api/clusters/:clusterId/deployments/:id/restart" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will restart a deployment in the specified cluster

### HTTP Request

`PUT <%= api_url %>/api/clusters/:clusterId/deployments/:id/restart`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the deployment to restart


## Restart a Pod

```shell
curl -XPUT "<%= curl_url %>/api/clusters/:clusterId/pods/:id/restart" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will restart a pod in the specified cluster

### HTTP Request

`PUT <%= api_url %>/api/clusters/:clusterId/pods/:id/restart`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the pod to restart


## Restart a Stateful Set

```shell
curl -XPUT "<%= curl_url %>/api/clusters/:clusterId/statefulsets/:id/restart" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will restart a stateful set in the specified cluster

### HTTP Request

`PUT <%= api_url %>/api/clusters/:clusterId/statefulsets/:id/restart`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the stateful set to restart


## Get Cluster History

```shell
curl "<%= curl_url %>/api/clusters/:clusterId/history" \
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

This endpoint retrieves the process history for a specific cluster. 

### HTTP Request

`GET <%= api_url %>/api/clusters/:id/history`

## Get Cluster History Details

```shell
curl "<%= curl_url %>/api/clusters/:clusterId/history/:processId" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "process": {
    "id": 7,
    "accountId": 1,
    "uniqueId": "17bac5a4-b417-4004-ad5a-d05d16c42757",
    "processType": {
      "code": "serverProvision",
      "name": "server provision"
    },
    "description": null,
    "subType": null,
    "subId": null,
    "zoneId": null,
    "integrationId": null,
    "instanceId": null,
    "containerId": null,
    "serverId": 12,
    "containerName": null,
    "displayName": "kube1-master",
    "timerCategory": "amazonKubeMaster.provision",
    "timerSubCategory": null,
    "status": "complete",
    "reason": null,
    "percent": 100.0,
    "statusEta": 23108,
    "message": null,
    "output": null,
    "error": null,
    "startDate": "2019-07-29T23:40:56+0000",
    "endDate": "2019-07-29T23:41:19+0000",
    "duration": 22785,
    "dateCreated": "2019-07-29T23:40:56+0000",
    "lastUpdated": "2019-07-29T23:41:19+0000",
    "createdBy": {
      "username": "root",
      "displayName": "Stubby Toes"
    },
    "updatedBy": {
      "username": "root",
      "displayName": "Stubby Toes"
    },
    "events": [

    ]
  }
}
```

This endpoint retrieves the history for a specific cluster process. 

### HTTP Request

`GET <%= api_url %>/api/clusters/:clusterId/history/:processId`

## Get Cluster History Event

```shell
curl "<%= curl_url %>/api/clusters/:clusterId/history/events/:eventId" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "processEvent": {
    "id": 6,
    "processId": 125,
    "accountId": 1,
    "uniqueId": "f1ec503c-365a-4002-8fc5-2c0f3e9121d1",
    "processType": {
      "code": "provisionImage",
      "name": "prepare image"
    },
    "description": null,
    "refType": "computeServer",
    "refId": 129,
    "subType": null,
    "subId": null,
    "zoneId": null,
    "integrationId": null,
    "instanceId": null,
    "containerId": null,
    "serverId": 129,
    "containerName": null,
    "displayName": "dans-docker-host-2",
    "status": "failed",
    "reason": null,
    "percent": 100.0,
    "statusEta": 180000,
    "message": "failed to provision server",
    "output": null,
    "error": null,
    "startDate": "2019-09-25T17:49:23+0000",
    "endDate": "2019-09-25T17:49:43+0000",
    "duration": 20199,
    "dateCreated": "2019-09-25T17:49:23+0000",
    "lastUpdated": "2019-09-25T17:50:56+0000",
    "createdBy": {
      "username": "root",
      "displayName": "Stubby Toes"
    },
    "updatedBy": {
      "username": "root",
      "displayName": "Stubby Toes"
    }
  }
}
```

This endpoint retrieves the process event for a specific cluster process event. 

### HTTP Request

`GET <%= api_url %>/api/clusters/:clusterId/history/events/:eventId`


## Get Datastores

```shell
curl "<%= curl_url %>/api/clusters/:id/datastores"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "datastores": [
    {
      "id": 4,
      "name": "vsanDatastore",
      "code": null,
      "type": "vsan",
      "visibility": "privates",
      "storageSize": 3000483446784,
      "freeSpace": 1634729396798,
      "drsEnabled": false,
      "active": true,
      "allowWrite": true,
      "defaultStore": false,
      "online": true,
      "allowRead": true,
      "allowProvision": true,
      "refType": "ComputeServerGroup",
      "refId": 3,
      "externalId": "datastore-58601",
      "zone": {
        "id": 4
      },
      "zonePool": {
        "id": 9
      },
      "owner": {
        "id": 1
      },
      "tenants": [
        {
          "id": 1,
          "name": "Stubby Toes Inc."
        }
      ],
      "datastores": [

      ]
    }
  ],
  "meta": {
    "size": 1,
    "total": 1,
    "max": 25,
    "offset": 0
  }
}
```

This endpoint retrieves datastores of a specified cluster.

### HTTP Request

`GET <%= api_url %>/api/clusters/:id/datastores`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
order | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name filter, restricts query to only load datastores which contain the phrase specified
name |  | Name filter, restricts query to only load datastore of specified name
code |  | Code filter, restricts query to only load datastore of specified code
hideInactive | false | If true restricts query to only load active datastores


## Get a Specific Datastore

```shell
curl "<%= curl_url %>/api/clusters/1/datastores/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "datastore": {
    "id": 4,
    "name": "vsanDatastore",
    "code": null,
    "type": "vsan",
    "visibility": "privates",
    "storageSize": 3000483446784,
    "freeSpace": 1634729396798,
    "drsEnabled": false,
    "active": true,
    "allowWrite": true,
    "defaultStore": false,
    "online": true,
    "allowRead": true,
    "allowProvision": true,
    "refType": "ComputeServerGroup",
    "refId": 3,
    "externalId": "datastore-58601",
    "zone": {
      "id": 4
    },
    "zonePool": {
      "id": 9
    },
    "owner": {
      "id": 1
    },
    "tenants": [
      {
        "id": 1,
        "name": "Stubby Toes Inc."
      }
    ],
    "permissions": {
      "resourcePermissions": {
        "allGroups": true,
        "defaultStore": false,
        "allPlans": false,
        "defaultTarget": false,
        "morpheusResourceType": "Datastore",
        "morpheusResourceId": 4,
        "canManage": false,
        "all": true,
        "account": {
          "id": 1
        },
        "sites": [],
        "plans": []
      },
      "tenantPermissions": {
        "accounts": [           
          1
        ]
      }
    },
    "datastores": [

    ]
  }
}
```

This endpoint retrieves a specific cluster datastore.

### HTTP Request

`GET <%= api_url %>/api/clusters/:clusterId/datastores/:id`

### URL Parameters

Parameter | Description
--------- | -----------
Cluster ID | ID of the cluster
ID | ID of datastore


## Update Datastore

```shell
curl -XPUT "<%= curl_url %>/api/clusters/1/datastores/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"datastore": {
        "active": true,
        "permissions": {
          "resourcePermissions": {
            "all": true,
            "sites": [
              {
                "id": 2
              }
            ]
          },
          "tenantPermissions": {
            "accounts": [
              1
            ]
          }
        },
        "visibility": "private" 
      }}'
```         

> The above command returns same JSON structure  [Get Datastore](#get-a-specific-datastore)

### HTTP Request

`PUT <%= api_url %>/api/clusters/:clusterId/datastores/:id`

### URL Parameters

Parameter | Description
--------- | -----------
clusterId | The ID of the cluster
id | The ID of the datastore

### JSON Cluster Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
visibility | N | private | Visibility for datastore
active | N | true | Datastore active
permissions | N |  | Key for resource permission configuration, see [Permissions](#permissions)  