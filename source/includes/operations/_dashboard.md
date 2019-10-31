# Dashboard

This endpoint provides data for rendering the Morpheus appliance dashboard.

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
          "code": "azure.plan.westus.Basic_A0"
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

