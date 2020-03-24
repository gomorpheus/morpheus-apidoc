# Guidance

Provides API interfaces for managing guidance within Morpheus

## Get All Discoveries

```shell
curl "$MORPHEUS_API_URL/api/guidance" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "discoveries": [
    {
      "id": 3405,
      "processed": false,
      "processedMessage": null,
      "processDate": null,
      "dateCreated": "2019-03-05T23:05:02+0000",
      "lastUpdated": "2020-03-21T00:05:05+0000",
      "actionCategory": "reservation",
      "actionMessage": "Reservation recommentations",
      "actionTitle": "reserve.compute",
      "actionType": "reserve",
      "actionValue": "34.519463385782942",
      "actionValueType": "reservation",
      "actionPlanId": null,
      "statusMessage": "Reservation recommendations for cloud QA Azure",
      "accountId": 1,
      "userId": null,
      "siteId": 2,
      "zone": {
        "id": 4,
        "name": "QA Azure",
        "zoneType": {
          "id": 9,
          "name": "Azure (Public)"
        }
      },
      "ignored": false,
      "severity": "info",
      "resolved": false,
      "resolvedMessage": null,
      "refType": "computeZone",
      "refId": 4,
      "refName": "QA Azure",
      "type": {
        "id": 6,
        "name": "Reservation Recommendation",
        "code": "reservations",
        "title": "Add Reservations"
      },
      "savings": {
        "amount": 34.51946338578294,
        "currency": "USD"
      },
      "config": {
        "success": true,
        "detailList": [
          {
            "id": "billingAccount/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/providers/Microsoft.Consumption/reservationRecommendations/90bfe546-0ea4-8e62-4afb-975bbc9e83ac",
            "apiName": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
            "apiType": "Microsoft.Consumption/reservationRecommendations",
            "externalId": "Standard_D2",
            "period": "Last30Days",
            "name": "Standard_D2",
            "type": "Standard_D2",
            "category": "Standard_D2",
            "size": "Standard_D2 (Cores: 2, Memory: 7 GB) (eastus)",
            "region": "westus",
            "term": "P1Y",
            "meterId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
            "onDemandCount": 0,
            "onDemandCost": 110.99038119400001,
            "reservedCount": 0,
            "reservedCost": 0,
            "recommendedCount": 1,
            "recommendedCost": 76.47091780821707,
            "totalSavings": 34.51946338578294,
            "totalSavingsPercent": 0.311013107752521
          }
        ],
        "services": {
          "azureVms": {
            "code": "azureVms",
            "name": "Azure Virtual Machines",
            "paymentOptions": {
              "NO_UPFRONT": {
                "code": "NO_UPFRONT",
                "name": "No Upfront",
                "termOptions": {
                  "{code=P1Y, name=1 Year, defaultOption=true}": {
                    "code": "P1Y",
                    "name": "1 Year",
                    "detailList": [
                      {
                        "id": "billingAccount/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/providers/Microsoft.Consumption/reservationRecommendations/90bfe546-0ea4-8e62-4afb-975bbc9e83ac",
                        "apiName": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
                        "apiType": "Microsoft.Consumption/reservationRecommendations",
                        "externalId": "Standard_D2",
                        "period": "Last30Days",
                        "name": "Standard_D2",
                        "type": "Standard_D2",
                        "category": "Standard_D2",
                        "size": "Standard_D2 (Cores: 2, Memory: 7 GB) (eastus)",
                        "region": "westus",
                        "term": "P1Y",
                        "meterId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx5",
                        "onDemandCount": 0,
                        "onDemandCost": 110.99038119400001,
                        "reservedCount": 0,
                        "reservedCost": 0,
                        "recommendedCount": 1,
                        "recommendedCost": 76.47091780821707,
                        "totalSavings": 34.51946338578294,
                        "totalSavingsPercent": 0.311013107752521
                      }
                    ],
                    "summary": {
                      "totalSavings": 34.51946338578294,
                      "currencyCode": "USD",
                      "totalSavingsPercent": 0.311013107752521,
                      "term": "",
                      "paymentOption": "",
                      "service": "compute",
                      "onDemandCount": 0,
                      "onDemandCost": 110.99038119400001,
                      "reservedCount": 0,
                      "reservedCost": 0,
                      "recommendedCount": 1,
                      "recommendedCost": 76.47091780821707
                    }
                  },
                  "{code=P3Y, name=3 Year}": {
                    "code": "P3Y",
                    "name": "3 Year",
                    "detailList": [
                      {
                        "id": "billingAccount/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/providers/Microsoft.Consumption/reservationRecommendations/90bfe546-0ea4-8e62-4afb-975bbc9e83ac",
                        "apiName": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
                        "apiType": "Microsoft.Consumption/reservationRecommendations",
                        "externalId": "Standard_D2",
                        "period": "Last30Days",
                        "name": "Standard_D2",
                        "type": "Standard_D2",
                        "category": "Standard_D2",
                        "size": "Standard_D2 (Cores: 2, Memory: 7 GB) (eastus)",
                        "region": "westus",
                        "term": "P3Y",
                        "meterId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
                        "onDemandCount": 0,
                        "onDemandCost": 110.99038119400001,
                        "reservedCount": 0,
                        "reservedCost": 0,
                        "recommendedCount": 1,
                        "recommendedCost": 49.160529680364135,
                        "totalSavings": 61.82985151363587,
                        "totalSavingsPercent": 0.557073963063191
                      }
                    ],
                    "summary": {
                      "totalSavings": 61.82985151363587,
                      "currencyCode": "USD",
                      "totalSavingsPercent": 0.557073963063191,
                      "term": "",
                      "paymentOption": "",
                      "service": "compute",
                      "onDemandCount": 0,
                      "onDemandCost": 110.99038119400001,
                      "reservedCount": 0,
                      "reservedCost": 0,
                      "recommendedCount": 1,
                      "recommendedCost": 49.160529680364135
                    }
                  }
                }
              }
            }
          }
        },
        "summary": {
          "totalSavings": 34.51946338578294,
          "currencyCode": "USD",
          "totalSavingsPercent": 0.311013107752521,
          "term": "",
          "paymentOption": "",
          "service": "compute",
          "onDemandCount": 0,
          "onDemandCost": 110.99038119400001,
          "reservedCount": 0,
          "reservedCost": 0,
          "recommendedCount": 1,
          "recommendedCost": 76.47091780821707
        }
      }
    }
  ],
  "meta": {
    "size": 1,
    "total": 1,
    "max": 50,
    "offset": 0
  }
}
```

This endpoint retrieves discoveries. By default, only includes discoveries that have not been ignored or executed.

### HTTP Request

`GET https://api.gomorpheus.com/api/guidance`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Reference name, status message and action, restricts query to only load discoveries which contain the phrase specified
severity |  | Severity level filter, restricts query to only load discoveries of specified severity level: info, low, warning, critical
type |  | Discovery type filter, restricts query to only load discoveries of specified discover type. [See discovery types](#get-guidance-types)
state |  | Filter by state, restricts query to only load discoveries by state: any, processed, ignored


## Get a Specific Discovery

```shell
curl "$MORPHEUS_API_URL/api/guidance/2" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "discovery": {
    "id": 2,
    "processed": false,
    "processedMessage": null,
    "processDate": null,
    "dateCreated": "2020-03-18T17:36:09+0000",
    "lastUpdated": "2020-03-21T18:49:27+0000",
    "actionCategory": "power",
    "actionMessage": "Shutdown 10.30.21.76",
    "actionTitle": "shutdown",
    "actionType": "shutdown",
    "actionValue": "off",
    "actionValueType": "power",
    "actionPlanId": null,
    "statusMessage": "Utilization for virtual machine 10.30.21.76 suggests it is not in use",
    "accountId": 1,
    "userId": null,
    "siteId": null,
    "zone": {
      "id": 4,
      "name": "Denver VMware Virtual Center Cloud",
      "zoneType": {
        "id": 14,
        "name": "VMware vCenter"
      }
    },
    "ignored": true,
    "severity": "info",
    "resolved": true,
    "resolvedMessage": null,
    "refType": "computeServer",
    "refId": 6,
    "refName": "10.30.21.76",
    "type": {
      "id": 1,
      "name": "Shutdown",
      "code": "shutdown",
      "title": "Shutdown resource"
    },
    "savings": {
      "amount": 40.0,
      "currency": "USD"
    },
    "resource": {
      "id": 6,
      "externalId": "host-58630",
      "internalId": null,
      "externalUniqueId": null,
      "accountId": 1,
      "account": {
        "name": "Stubby Toes Inc."
      },
      "name": "10.30.21.76",
      "visibility": "private",
      "description": null,
      "zoneId": 4,
      "siteId": 4,
      "resourcePoolId": 9,
      "folderId": null,
      "sshHost": null,
      "sshPort": 22,
      "externalIp": null,
      "internalIp": null,
      "volumeId": null,
      "platform": null,
      "platformVersion": null,
      "sshUsername": "root",
      "sshPassword": null,
      "osDevice": "/dev/sda",
      "osType": "esxi",
      "dataDevice": "/dev/sdb",
      "lvmEnabled": true,
      "apiKey": "87b86947-7898-406d-bd32-71b1312c8e12",
      "softwareRaid": false,
      "dateCreated": "2019-07-29T19:05:31+0000",
      "lastUpdated": "2020-02-26T07:10:59+0000",
      "stats": {
        "ts": "2020-02-26T07:10:59Z",
        "freeMemory": 94497890304,
        "maxMemory": 137402474496,
        "usedMemory": 42904584192,
        "maxStorage": 3000483446784,
        "usedStorage": 897040577986,
        "cpuUsage": 10.99583333
      },
      "status": "provisioned",
      "statusMessage": null,
      "errorMessage": null,
      "statusDate": "2019-07-29T19:05:31+0000",
      "statusPercent": null,
      "statusEta": null,
      "powerState": "on",
      "computeServerType": {
        "id": 157,
        "code": "vmwareHypervisor",
        "name": "vSphere Hypervisor",
        "managed": false,
        "externalDelete": false
      },
      "agentInstalled": false,
      "lastAgentUpdate": null,
      "agentVersion": null,
      "maxCores": 12,
      "maxMemory": 137402474496,
      "maxStorage": 3000483446784,
      "maxCpu": null,
      "serverOs": {
        "id": 53,
        "name": "esxi 6",
        "description": null,
        "vendor": "vmware",
        "category": "esxi",
        "osFamily": null,
        "osVersion": "6",
        "bitCount": 64,
        "platform": "esxi"
      },
      "enabled": true,
      "tagCompliant": null,
      "zone": {
        "id": 4,
        "name": "Denver VMware Virtual Center Cloud"
      },
      "plan": {
        "id": null,
        "code": null,
        "name": null
      },
      "containers": [

      ]
    },
    "config": {
      "exists": true,
      "objectId": 6,
      "networkBandwidthCount": 0,
      "networkBandwidthMin": 0,
      "networkBandwidthMax": 0,
      "networkBandwidthAvg": 0,
      "networkBandwidthSum": 0,
      "netRxUsageCount": 5,
      "netRxUsageMin": 0,
      "netRxUsageMax": 185.0,
      "netRxUsageAvg": 108.2,
      "netRxUsageSum": 541.0,
      "cpuSystemTimeCount": 0,
      "cpuSystemTimeMin": 0,
      "cpuSystemTimeMax": 0,
      "cpuSystemTimeAvg": 0,
      "cpuSystemTimeSum": 0,
      "cpuTotalTimeCount": 0,
      "cpuTotalTimeMin": 0,
      "cpuTotalTimeMax": 0,
      "cpuTotalTimeAvg": 0,
      "cpuTotalTimeSum": 0,
      "cpuUsageCount": 0,
      "cpuUsageMin": 0,
      "cpuUsageMax": 0,
      "cpuUsageAvg": 0,
      "cpuUsageSum": 0,
      "netTxUsageCount": 5,
      "netTxUsageMin": 0,
      "netTxUsageMax": 244.0,
      "netTxUsageAvg": 156.4,
      "netTxUsageSum": 782.0,
      "cpuUserTimeCount": 0,
      "cpuUserTimeMin": 0,
      "cpuUserTimeMax": 0,
      "cpuUserTimeAvg": 0,
      "cpuUserTimeSum": 0,
      "cpuIdleTimeCount": 0,
      "cpuIdleTimeMin": 0,
      "cpuIdleTimeMax": 0,
      "cpuIdleTimeAvg": 0,
      "cpuIdleTimeSum": 0
    }
  }
}
```

This endpoint retrieves a specific discovery.

### HTTP Request

`GET https://api.gomorpheus.com/api/guidance/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the discovery


## Get Guidance Stats

```shell
curl "$MORPHEUS_API_URL/api/guidance/stats" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "stats": {
    "total": 14,
    "savings": {
      "amount": -165.98050103021708,
      "currency": "USD"
    },
    "severity": {
      "low": 0,
      "info": 14,
      "warning": 0,
      "critical": 0
    },
    "type": {
      "size": 13,
      "shutdown": 0,
      "move": 0,
      "schedule": 0
    }
  }
}
```

This endpoint retrieves a summary of actionable discoveries.

### HTTP Request

`GET https://api.gomorpheus.com/api/guidance/stats`


## Get Discovery Types

```shell
curl "$MORPHEUS_API_URL/api/guidance/types" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "types": [
    {
      "id": 1,
      "name": "Shutdown",
      "code": "shutdown",
      "category": "utilization",
      "title": "Shutdown resource"
    },
    {
      "id": 2,
      "name": "Sizing",
      "code": "size",
      "category": "utilization",
      "title": "Resize resource"
    },
    {
      "id": 3,
      "name": "Host Capacity",
      "code": "hostCapacity",
      "category": "utilization",
      "title": "Add Capacity"
    },
    {
      "id": 4,
      "name": "Host Balancing",
      "code": "hostBalancing",
      "category": "utilization",
      "title": "Balance Host"
    },
    {
      "id": 5,
      "name": "Datastore Capacity",
      "code": "datastoreCapacity",
      "category": "utilization",
      "title": "Add Capacity"
    },
    {
      "id": 6,
      "name": "Reservation Recommendation",
      "code": "reservations",
      "category": "utilization",
      "title": "Add Reservations"
    }
  ]
}
```

This endpoint retrieves a list of discovery types.

### HTTP Request

`GET https://api.gomorpheus.com/api/guidance/types`


## Execute a Discovery

Use this command to execute a discovery.

```shell
curl -XPUT "$MORPHEUS_API_URL/api/guidance/1/execute" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" 
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/guidance/:id/execute`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the discovery


## Ignore a Discovery

Use this command to ignore a discovery.

```shell
curl -XPUT "$MORPHEUS_API_URL/api/guidance/1/ignore" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" 
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/guidance/:id/ignore`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the discovery