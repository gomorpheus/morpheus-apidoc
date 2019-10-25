# Dashboard

This endpoint provides data for rendering the morpheus appliance dashboard.

## Get Dashboard Data

```shell
curl "$MORPHEUS_API_URL/api/dashboard" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "data": []
}
```

```json
{
  "success": true,
  "monitoring": {
    "avgHealth": 9.2,
    "avgResponseTime": 0.6,
    "warningApps": 5,
    "warningChecks": 8,
    "failApps": 0,
    "failChecks": 0,
    "successApps": 2,
    "mutedApps": 1,
    "successChecks": 2,
    "mutedChecks": 5,
    "openIncidents": [
      {
        "id": 9,
        "visibility": "private",
        "channelId": "333206ed-9ba9-45b9-88f4-08ac0a9e64f2",
        "lastError": "redis status: Error",
        "severityId": 20,
        "autoClose": true,
        "endDate": null,
        "duration": null,
        "startDate": "2016-10-25T12:37:00Z",
        "severity": "critical",
        "app": null,
        "resolution": null,
        "comment": null,
        "checks": [

        ],
        "incidentEvents": [
          {
            "id": 23
          },
          {
            "id": 24
          },
          {
            "id": 21
          },
          {
            "id": 22
          }
        ],
        "lastCheckTime": "2016-10-25T12:37:00Z",
        "lastMessage": null,
        "name": "testapp",
        "checkGroups": [

        ],
        "account": {
          "id": 1
        },
        "createdBy": null,
        "status": "open",
        "autoManaged": true,
        "inUptime": true,
        "notificationEvents": [

        ]
      },
      {
        "id": 12,
        "visibility": "private",
        "channelId": "cdff5f78-19df-41e0-b6dc-2ab87cedeae5",
        "lastError": "unheard from beyond check interval limit.",
        "severityId": 20,
        "autoClose": true,
        "endDate": null,
        "duration": null,
        "startDate": "2017-02-21T14:04:56Z",
        "severity": "critical",
        "app": null,
        "resolution": "we fixed the issue",
        "comment": "uh, something bad happened..",
        "checks": [

        ],
        "incidentEvents": [
          {
            "id": 27
          },
          {
            "id": 28
          },
          {
            "id": 29
          }
        ],
        "lastCheckTime": "2017-02-21T14:04:56Z",
        "lastMessage": null,
        "name": "testmysql2",
        "checkGroups": [

        ],
        "account": {
          "id": 1
        },
        "createdBy": null,
        "status": "open",
        "autoManaged": true,
        "inUptime": true,
        "notificationEvents": [

        ]
      }
    ],
    "appList": [
      {
        "id": 40,
        "allCheckStatus": null,
        "dateCreated": "2018-02-14T21:33:06Z",
        "lastError": null,
        "urlName": null,
        "lastCheckStatus": null,
        "lastUpdated": "2018-02-14T21:33:06Z",
        "health": 9,
        "active": true,
        "deleted": false,
        "createIncident": true,
        "history": null,
        "lastWarningDate": null,
        "severity": "critical",
        "app": null,
        "checks": [

        ],
        "availability": null,
        "lastMessage": null,
        "iconPath": null,
        "lastErrorDate": null,
        "iconType": "upload",
        "name": "uitest",
        "lastTimer": 0,
        "checkGroups": [
          {
            "id": 116
          }
        ],
        "account": {
          "id": 1
        },
        "createdBy": {
          "id": 1
        },
        "lastSuccessDate": null,
        "lastRunDate": null,
        "description": "weee222",
        "inUptime": true
      },
      {
        "id": 53,
        "allCheckStatus": null,
        "dateCreated": "2018-10-19T10:50:10Z",
        "lastError": null,
        "urlName": null,
        "lastCheckStatus": null,
        "lastUpdated": "2018-12-21T09:06:34Z",
        "health": 9,
        "active": true,
        "deleted": false,
        "createIncident": true,
        "history": null,
        "lastWarningDate": null,
        "severity": "critical",
        "app": {
          "id": 43
        },
        "checks": [

        ],
        "availability": null,
        "lastMessage": null,
        "iconPath": null,
        "lastErrorDate": null,
        "iconType": "upload",
        "name": "nachos",
        "lastTimer": 0,
        "checkGroups": [

        ],
        "account": {
          "id": 1
        },
        "createdBy": {
          "id": 1
        },
        "lastSuccessDate": null,
        "lastRunDate": null,
        "description": null,
        "inUptime": true
      },
      {
        "id": 92,
        "allCheckStatus": null,
        "dateCreated": "2019-07-13T06:09:04Z",
        "lastError": null,
        "urlName": null,
        "lastCheckStatus": null,
        "lastUpdated": "2019-07-13T06:09:04Z",
        "health": 9,
        "active": true,
        "deleted": false,
        "createIncident": true,
        "history": null,
        "lastWarningDate": null,
        "severity": "critical",
        "app": null,
        "checks": [

        ],
        "availability": null,
        "lastMessage": null,
        "iconPath": null,
        "lastErrorDate": null,
        "iconType": "upload",
        "name": "My App Checks",
        "lastTimer": 0,
        "checkGroups": [

        ],
        "account": {
          "id": 1
        },
        "createdBy": {
          "id": 1
        },
        "lastSuccessDate": null,
        "lastRunDate": null,
        "description": null,
        "inUptime": true
      },
      {
        "id": 93,
        "allCheckStatus": null,
        "dateCreated": "2019-07-13T06:50:47Z",
        "lastError": null,
        "urlName": null,
        "lastCheckStatus": null,
        "lastUpdated": "2019-10-22T02:58:39Z",
        "health": 9,
        "active": true,
        "deleted": false,
        "createIncident": false,
        "history": null,
        "lastWarningDate": null,
        "severity": "critical",
        "app": null,
        "checks": [

        ],
        "availability": null,
        "lastMessage": null,
        "iconPath": null,
        "lastErrorDate": null,
        "iconType": "upload",
        "name": "brody",
        "lastTimer": 0,
        "checkGroups": [

        ],
        "account": {
          "id": 1
        },
        "createdBy": {
          "id": 1
        },
        "lastSuccessDate": null,
        "lastRunDate": null,
        "description": null,
        "inUptime": true
      },
      {
        "id": 94,
        "allCheckStatus": null,
        "dateCreated": "2019-10-23T14:57:48Z",
        "lastError": null,
        "urlName": null,
        "lastCheckStatus": null,
        "lastUpdated": "2019-10-25T09:15:01Z",
        "health": 10,
        "active": true,
        "deleted": false,
        "createIncident": true,
        "history": null,
        "lastWarningDate": null,
        "severity": "critical",
        "app": null,
        "checks": [
          {
            "id": 214
          }
        ],
        "availability": 96.82656578,
        "lastMessage": null,
        "iconPath": null,
        "lastErrorDate": null,
        "iconType": "upload",
        "name": "testapp",
        "lastTimer": 1,
        "checkGroups": [
          {
            "id": 239
          }
        ],
        "account": {
          "id": 1
        },
        "createdBy": {
          "id": 1
        },
        "lastSuccessDate": null,
        "lastRunDate": "2019-10-25T09:15:01Z",
        "description": null,
        "inUptime": true
      },
      {
        "id": 95,
        "allCheckStatus": null,
        "dateCreated": "2019-10-24T01:14:38Z",
        "lastError": null,
        "urlName": null,
        "lastCheckStatus": null,
        "lastUpdated": "2019-10-25T09:15:01Z",
        "health": 10,
        "active": true,
        "deleted": false,
        "createIncident": true,
        "history": null,
        "lastWarningDate": null,
        "severity": "critical",
        "app": null,
        "checks": [
          {
            "id": 214
          }
        ],
        "availability": 100.0,
        "lastMessage": null,
        "iconPath": null,
        "lastErrorDate": null,
        "iconType": "upload",
        "name": "coolapp",
        "lastTimer": 1,
        "checkGroups": [

        ],
        "account": {
          "id": 1
        },
        "createdBy": {
          "id": 1
        },
        "lastSuccessDate": null,
        "lastRunDate": "2019-10-25T09:15:01Z",
        "description": "A cool app",
        "inUptime": true
      },
      {
        "id": 96,
        "allCheckStatus": null,
        "dateCreated": "2019-10-24T02:48:08Z",
        "lastError": null,
        "urlName": null,
        "lastCheckStatus": null,
        "lastUpdated": "2019-10-25T09:15:01Z",
        "health": 9,
        "active": true,
        "deleted": false,
        "createIncident": true,
        "history": null,
        "lastWarningDate": null,
        "severity": "critical",
        "app": null,
        "checks": [
          {
            "id": 241
          },
          {
            "id": 214
          }
        ],
        "availability": 100.0,
        "lastMessage": null,
        "iconPath": null,
        "lastErrorDate": null,
        "iconType": "upload",
        "name": "coolapp2",
        "lastTimer": 0,
        "checkGroups": [

        ],
        "account": {
          "id": 1
        },
        "createdBy": {
          "id": 1
        },
        "lastSuccessDate": null,
        "lastRunDate": "2019-10-25T09:15:01Z",
        "description": null,
        "inUptime": true
      },
      {
        "id": 97,
        "allCheckStatus": null,
        "dateCreated": "2019-10-24T02:51:59Z",
        "lastError": null,
        "urlName": null,
        "lastCheckStatus": null,
        "lastUpdated": "2019-10-25T09:15:32Z",
        "health": 9,
        "active": true,
        "deleted": false,
        "createIncident": true,
        "history": null,
        "lastWarningDate": null,
        "severity": "critical",
        "app": null,
        "checks": [
          {
            "id": 241
          },
          {
            "id": 214
          }
        ],
        "availability": 100.0,
        "lastMessage": null,
        "iconPath": null,
        "lastErrorDate": null,
        "iconType": "upload",
        "name": "coolapp3",
        "lastTimer": 1,
        "checkGroups": [
          {
            "id": 240
          },
          {
            "id": 241
          }
        ],
        "account": {
          "id": 1
        },
        "createdBy": {
          "id": 1
        },
        "lastSuccessDate": null,
        "lastRunDate": "2019-10-25T09:15:32Z",
        "description": null,
        "inUptime": true
      }
    ],
    "allSuccess": false
  },
  "provisioning": {
    "instanceCount": 3,
    "allInstances": [
      {
        "id": 319,
        "accountId": 1,
        "instanceType": {
          "id": 6,
          "code": "apache",
          "category": "web",
          "name": "Apache"
        },
        "zones": [
          {
            "id": 40,
            "accountId": 1,
            "groups": [
              1
            ],
            "name": "qa-azure2",
            "description": null,
            "location": null,
            "visibility": "private",
            "zoneTypeId": 9
          }
        ],
        "layout": {
          "id": 1292,
          "code": "apache-azure-2.4-ubuntu-16.04-single",
          "name": "Azure Apache",
          "description": "This will provision a single process with no redundancy",
          "sortOrder": 10
        },
        "plan": {
          "name": "Basic_A0 (1 Core, 0.75GB Memory) (westus)",
          "id": 187,
          "code": "azure.plan.westus.Basic_A0",
          "category": null,
          "description": "Basic_A0 (1 Core, 0.75GB Memory) (westus)",
          "visibility": "public",
          "active": true,
          "upgradeable": false,
          "dateCreated": "2017-02-28T13:57:07Z",
          "lastUpdated": "2019-05-29T19:03:08Z",
          "internalId": null,
          "externalId": null,
          "configs": null,
          "serverType": null,
          "sortOrder": 0,
          "maxStorage": 34359738368,
          "maxMemory": 805306368,
          "maxLog": null,
          "maxCpu": 0,
          "maxCores": 1,
          "maxDataStorage": 0,
          "minDisks": 1,
          "maxDisks": 2,
          "customCpu": false,
          "customCores": false,
          "customMaxStorage": true,
          "customMaxDataStorage": true,
          "customMaxMemory": false,
          "addVolumes": true,
          "memoryOptionSource": null,
          "cpuOptionSource": null,
          "internalCost": null,
          "externalCost": null,
          "provisionType": {
            "id": 20,
            "deployTargetService": "vmDeployTargetService",
            "optionTypes": [
              {
                "id": 453
              },
              {
                "id": 450
              },
              {
                "id": 452
              }
            ],
            "hasConfigurableCpuSockets": null,
            "supportsCustomServicePlans": false,
            "reconfigureSupported": true,
            "maxNetworks": null,
            "storageTypes": [
              {
                "id": 14
              },
              {
                "id": 20
              }
            ],
            "hostType": "vm",
            "viewSet": "azureCustom",
            "hostNetwork": true,
            "multiTenant": false,
            "maxDisk": null,
            "mapPorts": false,
            "createServer": true,
            "supportsConfigManagement": true,
            "name": "Azure",
            "hasVolumes": true,
            "pickServer": false,
            "minDisk": 0,
            "exportServer": false,
            "hasStorageControllers": false,
            "hasSnapshots": null,
            "hostDiskMode": "lvm",
            "zonePoolRequired": true,
            "customizeVolume": true,
            "cloneTemplate": null,
            "argumentTypes": [

            ],
            "backupTypes": [
              {
                "id": 20
              }
            ],
            "controllerTypes": [

            ],
            "hasSecurityGroups": true,
            "backupType": "azureSnapshot",
            "hasSecurityGroupsOnNetworks": true,
            "replicationTypes": [

            ],
            "code": "azure",
            "hasContainers": true,
            "hasZonePools": true,
            "networksScopedToPools": null,
            "rootDiskSizeKnown": false,
            "managed": true,
            "rootStorageTypes": [
              {
                "id": 14
              },
              {
                "id": 20
              }
            ],
            "supportsAutoDatastore": false,
            "aclEnabled": false,
            "hasResources": false,
            "networkTypes": [

            ],
            "hasNetworks": true,
            "rootDiskResizable": true,
            "volumesPreservable": false,
            "lvmSupported": true,
            "customSupported": true,
            "addVolumes": true,
            "hasDatastore": true,
            "supportsReplicaSets": false,
            "customOptionTypes": [
              {
                "id": 374
              },
              {
                "id": 380
              },
              {
                "id": 381
              },
              {
                "id": 375
              },
              {
                "id": 373
              },
              {
                "id": 378
              },
              {
                "id": 376
              },
              {
                "id": 379
              }
            ],
            "resizeCopiesVolumes": false,
            "provisionService": "azureProvisionService",
            "serverType": "vm",
            "nodeFormat": "vm",
            "containerService": null,
            "description": null,
            "rootDiskCustomizable": true,
            "hasParameters": null
          },
          "editable": false,
          "regionCode": "westus",
          "refType": null,
          "refId": null
        },
        "name": "test-azureapache1",
        "displayName": "test-azureapache1",
        "description": null,
        "dateCreated": "2019-09-18T16:07:47Z",
        "lastUpdated": "2019-10-25T09:12:29Z",
        "status": "unknown",
        "containerIds": [
          317
        ],
        "containers": [
          {
            "ip": "0.0.0.0",
            "port": {
              "id": 19,
              "exportName": "HTTP",
              "container": {
                "id": 317
              },
              "loadBalancerInstance": null,
              "primaryPort": false,
              "loadBalanceProtocol": null,
              "linkPort": true,
              "internalPort": 80,
              "export": true,
              "portType": {
                "id": 8
              },
              "displayName": "Http",
              "protocol": "http",
              "portIndex": 0,
              "externalIp": null,
              "externalPort": 80,
              "internalIp": null,
              "visible": true,
              "loadBalance": true
            }
          }
        ],
        "version": "2.4",
        "environmentPrefix": null
      },
      {
        "id": 317,
        "accountId": 1,
        "instanceType": {
          "id": 37,
          "code": "nginx",
          "category": "web",
          "name": "Nginx"
        },
        "zones": [
          {
            "id": 34,
            "accountId": 1,
            "groups": [
              1,
              382,
              365,
              288
            ],
            "name": "qa-vmware",
            "description": null,
            "location": "Denver",
            "visibility": "private",
            "zoneTypeId": 5
          }
        ],
        "layout": {
          "id": 179,
          "code": "nginx-vmware-1.9-single",
          "name": "VMware NGINX",
          "description": "This will provision a single process with no redundancy",
          "sortOrder": 10
        },
        "plan": {
          "name": "1 CPU, 512MB Memory",
          "id": 75,
          "code": "vm-512",
          "category": null,
          "description": "1 CPU, 512MB Memory",
          "visibility": "public",
          "active": true,
          "upgradeable": false,
          "dateCreated": "2016-08-27T19:25:57Z",
          "lastUpdated": "2016-08-27T19:25:57Z",
          "internalId": null,
          "externalId": null,
          "configs": null,
          "serverType": null,
          "sortOrder": 0,
          "maxStorage": 10737418240,
          "maxMemory": 536870912,
          "maxLog": null,
          "maxCpu": 1,
          "maxCores": 1,
          "maxDataStorage": 0,
          "minDisks": null,
          "maxDisks": null,
          "customCpu": false,
          "customCores": false,
          "customMaxStorage": true,
          "customMaxDataStorage": true,
          "customMaxMemory": false,
          "addVolumes": true,
          "memoryOptionSource": null,
          "cpuOptionSource": null,
          "internalCost": null,
          "externalCost": null,
          "provisionType": {
            "id": 5,
            "deployTargetService": "vmDeployTargetService",
            "optionTypes": [
              {
                "id": 673
              },
              {
                "id": 625
              },
              {
                "id": 8
              },
              {
                "id": 454
              },
              {
                "id": 645
              },
              {
                "id": 3
              },
              {
                "id": 620
              }
            ],
            "hasConfigurableCpuSockets": true,
            "supportsCustomServicePlans": true,
            "reconfigureSupported": true,
            "maxNetworks": null,
            "storageTypes": [
              {
                "id": 1
              }
            ],
            "hostType": "vm",
            "viewSet": null,
            "hostNetwork": true,
            "multiTenant": false,
            "maxDisk": null,
            "mapPorts": false,
            "createServer": true,
            "supportsConfigManagement": true,
            "name": "VMware",
            "hasVolumes": true,
            "pickServer": false,
            "minDisk": 0,
            "exportServer": true,
            "hasStorageControllers": true,
            "hasSnapshots": true,
            "hostDiskMode": "lvm",
            "zonePoolRequired": true,
            "customizeVolume": true,
            "cloneTemplate": true,
            "argumentTypes": [

            ],
            "backupTypes": [
              {
                "id": 39
              },
              {
                "id": 16
              },
              {
                "id": 38
              },
              {
                "id": 42
              },
              {
                "id": 12
              }
            ],
            "controllerTypes": [
              {
                "id": 2
              },
              {
                "id": 4
              },
              {
                "id": 3
              },
              {
                "id": 5
              },
              {
                "id": 6
              }
            ],
            "hasSecurityGroups": false,
            "backupType": "vmwareSnapshot",
            "hasSecurityGroupsOnNetworks": null,
            "replicationTypes": [
              {
                "id": 1
              }
            ],
            "code": "vmware",
            "hasContainers": true,
            "hasZonePools": true,
            "networksScopedToPools": true,
            "rootDiskSizeKnown": true,
            "managed": true,
            "rootStorageTypes": [
              {
                "id": 1
              }
            ],
            "supportsAutoDatastore": true,
            "aclEnabled": false,
            "hasResources": false,
            "networkTypes": [
              {
                "id": 2
              },
              {
                "id": 3
              },
              {
                "id": 4
              }
            ],
            "hasNetworks": true,
            "rootDiskResizable": true,
            "volumesPreservable": false,
            "lvmSupported": true,
            "customSupported": true,
            "addVolumes": true,
            "hasDatastore": true,
            "supportsReplicaSets": false,
            "customOptionTypes": [
              {
                "id": 326
              },
              {
                "id": 658
              },
              {
                "id": 332
              },
              {
                "id": 334
              },
              {
                "id": 329
              },
              {
                "id": 327
              },
              {
                "id": 331
              },
              {
                "id": 333
              },
              {
                "id": 328
              }
            ],
            "resizeCopiesVolumes": false,
            "provisionService": "vmwareProvisionService",
            "serverType": "vm",
            "nodeFormat": "vm",
            "containerService": null,
            "description": null,
            "rootDiskCustomizable": true,
            "hasParameters": null
          },
          "editable": true,
          "regionCode": null,
          "refType": null,
          "refId": null
        },
        "name": "test-nginx1000",
        "displayName": "test-nginx1000",
        "description": null,
        "dateCreated": "2019-08-15T15:42:02Z",
        "lastUpdated": "2019-10-25T04:00:03Z",
        "status": "running",
        "containerIds": [
          315
        ],
        "containers": [
          {
            "ip": "10.30.20.80",
            "port": {
              "id": 15,
              "exportName": "HTTP",
              "container": {
                "id": 315
              },
              "loadBalancerInstance": null,
              "primaryPort": false,
              "loadBalanceProtocol": null,
              "linkPort": true,
              "internalPort": 80,
              "export": true,
              "portType": {
                "id": 54
              },
              "displayName": "Http",
              "protocol": "http",
              "portIndex": 0,
              "externalIp": null,
              "externalPort": 80,
              "internalIp": null,
              "visible": true,
              "loadBalance": true
            }
          }
        ],
        "version": "1.9",
        "environmentPrefix": null
      },
      {
        "id": 303,
        "accountId": 1,
        "instanceType": {
          "id": 4,
          "code": "ubuntu",
          "category": "os",
          "name": "Ubuntu"
        },
        "zones": [
          {
            "id": 37,
            "accountId": 1,
            "groups": [
              1
            ],
            "name": "qa-nutanix",
            "description": null,
            "location": null,
            "visibility": "private",
            "zoneTypeId": 15
          }
        ],
        "layout": {
          "id": 904,
          "code": "ubuntu-nutanix-16.04",
          "name": "Nutanix VM",
          "description": "This will provision a single process with no redundancy",
          "sortOrder": 10
        },
        "plan": {
          "name": "1 vCPU, 512MB Memory",
          "id": 99,
          "code": "nutanix-vm-512",
          "category": null,
          "description": "1 vCPU, 512MB Memory",
          "visibility": "public",
          "active": true,
          "upgradeable": false,
          "dateCreated": "2016-08-27T19:25:57Z",
          "lastUpdated": "2016-08-27T19:25:57Z",
          "internalId": null,
          "externalId": null,
          "configs": null,
          "serverType": null,
          "sortOrder": 0,
          "maxStorage": 10737418240,
          "maxMemory": 536870912,
          "maxLog": null,
          "maxCpu": 1,
          "maxCores": 1,
          "maxDataStorage": 0,
          "minDisks": null,
          "maxDisks": null,
          "customCpu": false,
          "customCores": false,
          "customMaxStorage": true,
          "customMaxDataStorage": true,
          "customMaxMemory": false,
          "addVolumes": true,
          "memoryOptionSource": null,
          "cpuOptionSource": null,
          "internalCost": null,
          "externalCost": null,
          "provisionType": {
            "id": 18,
            "deployTargetService": "vmDeployTargetService",
            "optionTypes": [

            ],
            "hasConfigurableCpuSockets": true,
            "supportsCustomServicePlans": true,
            "reconfigureSupported": true,
            "maxNetworks": null,
            "storageTypes": [
              {
                "id": 23
              },
              {
                "id": 24
              },
              {
                "id": 25
              }
            ],
            "hostType": "vm",
            "viewSet": "nutanixCustom",
            "hostNetwork": true,
            "multiTenant": false,
            "maxDisk": null,
            "mapPorts": false,
            "createServer": true,
            "supportsConfigManagement": true,
            "name": "Nutanix",
            "hasVolumes": true,
            "pickServer": false,
            "minDisk": 0,
            "exportServer": false,
            "hasStorageControllers": false,
            "hasSnapshots": true,
            "hostDiskMode": "lvm",
            "zonePoolRequired": null,
            "customizeVolume": true,
            "cloneTemplate": true,
            "argumentTypes": [

            ],
            "backupTypes": [
              {
                "id": 24
              }
            ],
            "controllerTypes": [

            ],
            "hasSecurityGroups": false,
            "backupType": "nutanixSnapshot",
            "hasSecurityGroupsOnNetworks": null,
            "replicationTypes": [

            ],
            "code": "nutanix",
            "hasContainers": true,
            "hasZonePools": null,
            "networksScopedToPools": null,
            "rootDiskSizeKnown": true,
            "managed": true,
            "rootStorageTypes": [
              {
                "id": 23
              },
              {
                "id": 24
              },
              {
                "id": 25
              }
            ],
            "supportsAutoDatastore": false,
            "aclEnabled": false,
            "hasResources": false,
            "networkTypes": [
              {
                "id": 9
              },
              {
                "id": 8
              }
            ],
            "hasNetworks": true,
            "rootDiskResizable": true,
            "volumesPreservable": false,
            "lvmSupported": true,
            "customSupported": true,
            "addVolumes": true,
            "hasDatastore": true,
            "supportsReplicaSets": false,
            "customOptionTypes": [
              {
                "id": 361
              },
              {
                "id": 363
              },
              {
                "id": 356
              },
              {
                "id": 362
              },
              {
                "id": 358
              },
              {
                "id": 357
              },
              {
                "id": 360
              }
            ],
            "resizeCopiesVolumes": false,
            "provisionService": "nutanixProvisionService",
            "serverType": "nutanix",
            "nodeFormat": "vm",
            "containerService": null,
            "description": null,
            "rootDiskCustomizable": true,
            "hasParameters": null
          },
          "editable": true,
          "regionCode": null,
          "refType": null,
          "refId": null
        },
        "name": "test-ubuntu",
        "displayName": "test-ubuntu",
        "description": null,
        "dateCreated": "2019-03-06T17:48:09Z",
        "lastUpdated": "2019-10-25T04:00:03Z",
        "status": "running",
        "containerIds": [
          302
        ],
        "containers": [
          {
            "ip": "10.30.20.30",
            "port": {
              "exportName": "SSH",
              "container": null,
              "loadBalancerInstance": null,
              "primaryPort": true,
              "loadBalanceProtocol": null,
              "linkPort": false,
              "internalPort": 22,
              "export": true,
              "portType": null,
              "displayName": "SSH",
              "protocol": null,
              "portIndex": 0,
              "externalIp": null,
              "externalPort": 22,
              "internalIp": null,
              "visible": true,
              "loadBalance": false
            }
          }
        ],
        "version": "16.04",
        "environmentPrefix": null
      }
    ],
    "favoriteInstances": [
      {
        "id": 319,
        "accountId": 1,
        "instanceType": {
          "id": 6,
          "code": "apache",
          "category": "web",
          "name": "Apache"
        },
        "zones": [
          {
            "id": 40,
            "accountId": 1,
            "groups": [
              1
            ],
            "name": "qa-azure2",
            "description": null,
            "location": null,
            "visibility": "private",
            "zoneTypeId": 9
          }
        ],
        "layout": {
          "id": 1292,
          "code": "apache-azure-2.4-ubuntu-16.04-single",
          "name": "Azure Apache",
          "description": "This will provision a single process with no redundancy",
          "sortOrder": 10
        },
        "plan": {
          "name": "Basic_A0 (1 Core, 0.75GB Memory) (westus)",
          "id": 187,
          "code": "azure.plan.westus.Basic_A0",
          "category": null,
          "description": "Basic_A0 (1 Core, 0.75GB Memory) (westus)",
          "visibility": "public",
          "active": true,
          "upgradeable": false,
          "dateCreated": "2017-02-28T13:57:07Z",
          "lastUpdated": "2019-05-29T19:03:08Z",
          "internalId": null,
          "externalId": null,
          "configs": null,
          "serverType": null,
          "sortOrder": 0,
          "maxStorage": 34359738368,
          "maxMemory": 805306368,
          "maxLog": null,
          "maxCpu": 0,
          "maxCores": 1,
          "maxDataStorage": 0,
          "minDisks": 1,
          "maxDisks": 2,
          "customCpu": false,
          "customCores": false,
          "customMaxStorage": true,
          "customMaxDataStorage": true,
          "customMaxMemory": false,
          "addVolumes": true,
          "memoryOptionSource": null,
          "cpuOptionSource": null,
          "internalCost": null,
          "externalCost": null,
          "provisionType": {
            "id": 20,
            "deployTargetService": "vmDeployTargetService",
            "optionTypes": [
              {
                "id": 453
              },
              {
                "id": 450
              },
              {
                "id": 452
              }
            ],
            "hasConfigurableCpuSockets": null,
            "supportsCustomServicePlans": false,
            "reconfigureSupported": true,
            "maxNetworks": null,
            "storageTypes": [
              {
                "id": 14
              },
              {
                "id": 20
              }
            ],
            "hostType": "vm",
            "viewSet": "azureCustom",
            "hostNetwork": true,
            "multiTenant": false,
            "maxDisk": null,
            "mapPorts": false,
            "createServer": true,
            "supportsConfigManagement": true,
            "name": "Azure",
            "hasVolumes": true,
            "pickServer": false,
            "minDisk": 0,
            "exportServer": false,
            "hasStorageControllers": false,
            "hasSnapshots": null,
            "hostDiskMode": "lvm",
            "zonePoolRequired": true,
            "customizeVolume": true,
            "cloneTemplate": null,
            "argumentTypes": [

            ],
            "backupTypes": [
              {
                "id": 20
              }
            ],
            "controllerTypes": [

            ],
            "hasSecurityGroups": true,
            "backupType": "azureSnapshot",
            "hasSecurityGroupsOnNetworks": true,
            "replicationTypes": [

            ],
            "code": "azure",
            "hasContainers": true,
            "hasZonePools": true,
            "networksScopedToPools": null,
            "rootDiskSizeKnown": false,
            "managed": true,
            "rootStorageTypes": [
              {
                "id": 14
              },
              {
                "id": 20
              }
            ],
            "supportsAutoDatastore": false,
            "aclEnabled": false,
            "hasResources": false,
            "networkTypes": [

            ],
            "hasNetworks": true,
            "rootDiskResizable": true,
            "volumesPreservable": false,
            "lvmSupported": true,
            "customSupported": true,
            "addVolumes": true,
            "hasDatastore": true,
            "supportsReplicaSets": false,
            "customOptionTypes": [
              {
                "id": 374
              },
              {
                "id": 380
              },
              {
                "id": 381
              },
              {
                "id": 375
              },
              {
                "id": 373
              },
              {
                "id": 378
              },
              {
                "id": 376
              },
              {
                "id": 379
              }
            ],
            "resizeCopiesVolumes": false,
            "provisionService": "azureProvisionService",
            "serverType": "vm",
            "nodeFormat": "vm",
            "containerService": null,
            "description": null,
            "rootDiskCustomizable": true,
            "hasParameters": null
          },
          "editable": false,
          "regionCode": "westus",
          "refType": null,
          "refId": null
        },
        "name": "test-azureapache1",
        "displayName": "test-azureapache1",
        "description": null,
        "dateCreated": "2019-09-18T16:07:47Z",
        "lastUpdated": "2019-10-25T09:12:29Z",
        "status": "unknown",
        "containerIds": [
          317
        ],
        "containers": [
          {
            "ip": "0.0.0.0",
            "port": {
              "id": 19,
              "exportName": "HTTP",
              "container": {
                "id": 317
              },
              "loadBalancerInstance": null,
              "primaryPort": false,
              "loadBalanceProtocol": null,
              "linkPort": true,
              "internalPort": 80,
              "export": true,
              "portType": {
                "id": 8
              },
              "displayName": "Http",
              "protocol": "http",
              "portIndex": 0,
              "externalIp": null,
              "externalPort": 80,
              "internalIp": null,
              "visible": true,
              "loadBalance": true
            }
          }
        ],
        "version": "2.4",
        "environmentPrefix": null
      },
      {
        "id": 317,
        "accountId": 1,
        "instanceType": {
          "id": 37,
          "code": "nginx",
          "category": "web",
          "name": "Nginx"
        },
        "zones": [
          {
            "id": 34,
            "accountId": 1,
            "groups": [
              1,
              382,
              365,
              288
            ],
            "name": "qa-vmware",
            "description": null,
            "location": "Denver",
            "visibility": "private",
            "zoneTypeId": 5
          }
        ],
        "layout": {
          "id": 179,
          "code": "nginx-vmware-1.9-single",
          "name": "VMware NGINX",
          "description": "This will provision a single process with no redundancy",
          "sortOrder": 10
        },
        "plan": {
          "name": "1 CPU, 512MB Memory",
          "id": 75,
          "code": "vm-512",
          "category": null,
          "description": "1 CPU, 512MB Memory",
          "visibility": "public",
          "active": true,
          "upgradeable": false,
          "dateCreated": "2016-08-27T19:25:57Z",
          "lastUpdated": "2016-08-27T19:25:57Z",
          "internalId": null,
          "externalId": null,
          "configs": null,
          "serverType": null,
          "sortOrder": 0,
          "maxStorage": 10737418240,
          "maxMemory": 536870912,
          "maxLog": null,
          "maxCpu": 1,
          "maxCores": 1,
          "maxDataStorage": 0,
          "minDisks": null,
          "maxDisks": null,
          "customCpu": false,
          "customCores": false,
          "customMaxStorage": true,
          "customMaxDataStorage": true,
          "customMaxMemory": false,
          "addVolumes": true,
          "memoryOptionSource": null,
          "cpuOptionSource": null,
          "internalCost": null,
          "externalCost": null,
          "provisionType": {
            "id": 5,
            "deployTargetService": "vmDeployTargetService",
            "optionTypes": [
              {
                "id": 673
              },
              {
                "id": 625
              },
              {
                "id": 8
              },
              {
                "id": 454
              },
              {
                "id": 645
              },
              {
                "id": 3
              },
              {
                "id": 620
              }
            ],
            "hasConfigurableCpuSockets": true,
            "supportsCustomServicePlans": true,
            "reconfigureSupported": true,
            "maxNetworks": null,
            "storageTypes": [
              {
                "id": 1
              }
            ],
            "hostType": "vm",
            "viewSet": null,
            "hostNetwork": true,
            "multiTenant": false,
            "maxDisk": null,
            "mapPorts": false,
            "createServer": true,
            "supportsConfigManagement": true,
            "name": "VMware",
            "hasVolumes": true,
            "pickServer": false,
            "minDisk": 0,
            "exportServer": true,
            "hasStorageControllers": true,
            "hasSnapshots": true,
            "hostDiskMode": "lvm",
            "zonePoolRequired": true,
            "customizeVolume": true,
            "cloneTemplate": true,
            "argumentTypes": [

            ],
            "backupTypes": [
              {
                "id": 39
              },
              {
                "id": 16
              },
              {
                "id": 38
              },
              {
                "id": 42
              },
              {
                "id": 12
              }
            ],
            "controllerTypes": [
              {
                "id": 2
              },
              {
                "id": 4
              },
              {
                "id": 3
              },
              {
                "id": 5
              },
              {
                "id": 6
              }
            ],
            "hasSecurityGroups": false,
            "backupType": "vmwareSnapshot",
            "hasSecurityGroupsOnNetworks": null,
            "replicationTypes": [
              {
                "id": 1
              }
            ],
            "code": "vmware",
            "hasContainers": true,
            "hasZonePools": true,
            "networksScopedToPools": true,
            "rootDiskSizeKnown": true,
            "managed": true,
            "rootStorageTypes": [
              {
                "id": 1
              }
            ],
            "supportsAutoDatastore": true,
            "aclEnabled": false,
            "hasResources": false,
            "networkTypes": [
              {
                "id": 2
              },
              {
                "id": 3
              },
              {
                "id": 4
              }
            ],
            "hasNetworks": true,
            "rootDiskResizable": true,
            "volumesPreservable": false,
            "lvmSupported": true,
            "customSupported": true,
            "addVolumes": true,
            "hasDatastore": true,
            "supportsReplicaSets": false,
            "customOptionTypes": [
              {
                "id": 326
              },
              {
                "id": 658
              },
              {
                "id": 332
              },
              {
                "id": 334
              },
              {
                "id": 329
              },
              {
                "id": 327
              },
              {
                "id": 331
              },
              {
                "id": 333
              },
              {
                "id": 328
              }
            ],
            "resizeCopiesVolumes": false,
            "provisionService": "vmwareProvisionService",
            "serverType": "vm",
            "nodeFormat": "vm",
            "containerService": null,
            "description": null,
            "rootDiskCustomizable": true,
            "hasParameters": null
          },
          "editable": true,
          "regionCode": null,
          "refType": null,
          "refId": null
        },
        "name": "test-nginx1000",
        "displayName": "test-nginx1000",
        "description": null,
        "dateCreated": "2019-08-15T15:42:02Z",
        "lastUpdated": "2019-10-25T04:00:03Z",
        "status": "running",
        "containerIds": [
          315
        ],
        "containers": [
          {
            "ip": "10.30.20.80",
            "port": {
              "id": 15,
              "exportName": "HTTP",
              "container": {
                "id": 315
              },
              "loadBalancerInstance": null,
              "primaryPort": false,
              "loadBalanceProtocol": null,
              "linkPort": true,
              "internalPort": 80,
              "export": true,
              "portType": {
                "id": 54
              },
              "displayName": "Http",
              "protocol": "http",
              "portIndex": 0,
              "externalIp": null,
              "externalPort": 80,
              "internalIp": null,
              "visible": true,
              "loadBalance": true
            }
          }
        ],
        "version": "1.9",
        "environmentPrefix": null
      },
      {
        "id": 303,
        "accountId": 1,
        "instanceType": {
          "id": 4,
          "code": "ubuntu",
          "category": "os",
          "name": "Ubuntu"
        },
        "zones": [
          {
            "id": 37,
            "accountId": 1,
            "groups": [
              1
            ],
            "name": "qa-nutanix",
            "description": null,
            "location": null,
            "visibility": "private",
            "zoneTypeId": 15
          }
        ],
        "layout": {
          "id": 904,
          "code": "ubuntu-nutanix-16.04",
          "name": "Nutanix VM",
          "description": "This will provision a single process with no redundancy",
          "sortOrder": 10
        },
        "plan": {
          "name": "1 vCPU, 512MB Memory",
          "id": 99,
          "code": "nutanix-vm-512",
          "category": null,
          "description": "1 vCPU, 512MB Memory",
          "visibility": "public",
          "active": true,
          "upgradeable": false,
          "dateCreated": "2016-08-27T19:25:57Z",
          "lastUpdated": "2016-08-27T19:25:57Z",
          "internalId": null,
          "externalId": null,
          "configs": null,
          "serverType": null,
          "sortOrder": 0,
          "maxStorage": 10737418240,
          "maxMemory": 536870912,
          "maxLog": null,
          "maxCpu": 1,
          "maxCores": 1,
          "maxDataStorage": 0,
          "minDisks": null,
          "maxDisks": null,
          "customCpu": false,
          "customCores": false,
          "customMaxStorage": true,
          "customMaxDataStorage": true,
          "customMaxMemory": false,
          "addVolumes": true,
          "memoryOptionSource": null,
          "cpuOptionSource": null,
          "internalCost": null,
          "externalCost": null,
          "provisionType": {
            "id": 18,
            "deployTargetService": "vmDeployTargetService",
            "optionTypes": [

            ],
            "hasConfigurableCpuSockets": true,
            "supportsCustomServicePlans": true,
            "reconfigureSupported": true,
            "maxNetworks": null,
            "storageTypes": [
              {
                "id": 23
              },
              {
                "id": 24
              },
              {
                "id": 25
              }
            ],
            "hostType": "vm",
            "viewSet": "nutanixCustom",
            "hostNetwork": true,
            "multiTenant": false,
            "maxDisk": null,
            "mapPorts": false,
            "createServer": true,
            "supportsConfigManagement": true,
            "name": "Nutanix",
            "hasVolumes": true,
            "pickServer": false,
            "minDisk": 0,
            "exportServer": false,
            "hasStorageControllers": false,
            "hasSnapshots": true,
            "hostDiskMode": "lvm",
            "zonePoolRequired": null,
            "customizeVolume": true,
            "cloneTemplate": true,
            "argumentTypes": [

            ],
            "backupTypes": [
              {
                "id": 24
              }
            ],
            "controllerTypes": [

            ],
            "hasSecurityGroups": false,
            "backupType": "nutanixSnapshot",
            "hasSecurityGroupsOnNetworks": null,
            "replicationTypes": [

            ],
            "code": "nutanix",
            "hasContainers": true,
            "hasZonePools": null,
            "networksScopedToPools": null,
            "rootDiskSizeKnown": true,
            "managed": true,
            "rootStorageTypes": [
              {
                "id": 23
              },
              {
                "id": 24
              },
              {
                "id": 25
              }
            ],
            "supportsAutoDatastore": false,
            "aclEnabled": false,
            "hasResources": false,
            "networkTypes": [
              {
                "id": 9
              },
              {
                "id": 8
              }
            ],
            "hasNetworks": true,
            "rootDiskResizable": true,
            "volumesPreservable": false,
            "lvmSupported": true,
            "customSupported": true,
            "addVolumes": true,
            "hasDatastore": true,
            "supportsReplicaSets": false,
            "customOptionTypes": [
              {
                "id": 361
              },
              {
                "id": 363
              },
              {
                "id": 356
              },
              {
                "id": 362
              },
              {
                "id": 358
              },
              {
                "id": 357
              },
              {
                "id": 360
              }
            ],
            "resizeCopiesVolumes": false,
            "provisionService": "nutanixProvisionService",
            "serverType": "nutanix",
            "nodeFormat": "vm",
            "containerService": null,
            "description": null,
            "rootDiskCustomizable": true,
            "hasParameters": null
          },
          "editable": true,
          "regionCode": null,
          "refType": null,
          "refId": null
        },
        "name": "test-ubuntu",
        "displayName": "test-ubuntu",
        "description": null,
        "dateCreated": "2019-03-06T17:48:09Z",
        "lastUpdated": "2019-10-25T04:00:03Z",
        "status": "running",
        "containerIds": [
          302
        ],
        "containers": [
          {
            "ip": "10.30.20.30",
            "port": {
              "exportName": "SSH",
              "container": null,
              "loadBalancerInstance": null,
              "primaryPort": true,
              "loadBalanceProtocol": null,
              "linkPort": false,
              "internalPort": 22,
              "export": true,
              "portType": null,
              "displayName": "SSH",
              "protocol": null,
              "portIndex": 0,
              "externalIp": null,
              "externalPort": 22,
              "internalIp": null,
              "visible": true,
              "loadBalance": false
            }
          }
        ],
        "version": "16.04",
        "environmentPrefix": null
      }
    ]
  },
  "instanceStats": {
    "usedMemory": 479804000,
    "maxMemory": 1771446368,
    "usedStorage": 6202490880,
    "maxStorage": 55530786816,
    "running": 2,
    "total": 3
  },
  "backups": {
    "backupStats": {
      "1": {
        "totalCompleted": 0,
        "totalSize": 0,
        "success": 0,
        "failed": 0,
        "avgSize": 0,
        "successRate": 0,
        "failRate": 0,
        "lastFiveResults": [

        ]
      },
      "10": {
        "totalCompleted": 0,
        "totalSize": 0,
        "success": 0,
        "failed": 0,
        "avgSize": 0,
        "successRate": 0,
        "failRate": 0,
        "lastFiveResults": [

        ]
      },
      "16": {
        "totalCompleted": 0,
        "totalSize": 0,
        "success": 0,
        "failed": 0,
        "avgSize": 0,
        "successRate": 0,
        "failRate": 0,
        "lastFiveResults": [

        ]
      }
    },
    "accountStats": {
      "totalSizeByDay": [
        0,
        0,
        0,
        0,
        0
      ],
      "totalSizeByDay7Days": [
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "formattedTotalSize": {
        "value": "0",
        "units": "KB"
      },
      "backupCount": 3,
      "totalSize": 0,
      "success": 0,
      "failed": 0,
      "totalCompleted": 0,
      "avgSize": 0,
      "failedRate": 0,
      "successRate": 0,
      "nextFireTotal": 1,
      "backupDayCount": [
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "backupDayCountTotal": 0
    }
  },
  "activity": [
    {
      "success": false,
      "name": "dev-appliance",
      "message": "Check successfully been created.",
      "ts": "2019-10-22T00:06:20Z",
      "activityType": "Monitoring",
      "accountId": 1,
      "userId": 1,
      "userName": "admin",
      "objectId": 238,
      "objectType": "MonitorCheck",
      "_id": "0276e1fc-214d-4cb3-bcf4-9ebda0b26542",
      "timestamp": "2019-10-22T00:06:20Z"
    },
    {
      "success": true,
      "name": "admin",
      "message": "User 'admin' updated. Password changed.",
      "ts": "2019-10-08T21:17:52Z",
      "activityType": "Admin",
      "accountId": 1,
      "userId": 1,
      "userName": "admin",
      "objectId": 96,
      "objectType": "User",
      "_id": "26976fe0-a722-4d20-9849-9405a95d0db9",
      "timestamp": "2019-10-08T21:17:52Z"
    }
  ]
}
```

### HTTP Request

`GET https://api.gomorpheus.com/api/dashboard`


### Response

Name | Description
--------- | -----------
data | An object containing the dashboard data.

*More documentation coming soon...*

