# Clouds

Clouds are a means of zoning various servers based on provisioning type or subnets. Typically an instance or host belongs to a cloud. The cloud holds the credentials necessary to provision virtual machines on the cloud provider's api.  Cloud provider types include: Openstack, Amazon AWS, Nutanix, VMWare vCenter, etc.  Of course, we also have the Standard cloud type which allows for manual vm procurement.

A Cloud may also be referred to as a *Zone* or *zone*.

## Get All Clouds

```shell
curl "<%= curl_url %>/api/zones"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "zones": [
    {
      "id": 2,
      "uuid": "141e8db2-22e1-4fec-8c7f-28d8b5abda82",
      "externalId": null,
      "name": "Test Cloud",
      "code": "test",
      "location": null,
      "owner": {
        "id": 1,
        "name": "<%= application_name %> Sandbox"
      },
      "accountId": 1,
      "account": {
        "id": 1,
        "name": "<%= application_name %> Sandbox"
      },
      "visibility": "private",
      "enabled": true,
      "status": "ok",
      "statusMessage": null,
      "statusDate": "2022-05-02T23:32:28Z",
      "costStatus": "ok",
      "costStatusMessage": null,
      "costStatusDate": null,
      "zoneType": {
        "id": 1,
        "code": "standard",
        "name": "<%= application_name %>"
      },
      "zoneTypeId": 1,
      "guidanceMode": "off",
      "storageMode": "lvm",
      "agentMode": "cloudInit",
      "userDataLinux": null,
      "userDataWindows": null,
      "consoleKeymap": null,
      "containerMode": "all",
      "serviceVersion": null,
      "costingMode": "off",
      "inventoryLevel": null,
      "timezone": null,
      "apiProxy": null,
      "provisioningProxy": null,
      "networkDomain": null,
      "domainName": "localdomain",
      "regionCode": null,
      "autoRecoverPowerState": false,
      "scalePriority": 1,
      "config": {
        "applianceUrl": "",
        "configManagementId": "",
        "datacenterName": "",
        "provider": "standard",
        "importExisting": "on",
        "networkServer.id": "unmanaged",
        "networkServer": {
          "id": "unmanaged"
        },
        "securityMode": "off",
        "certificateProvider": "internal",
        "backupMode": "internal",
        "replicationMode": "-1",
        "dnsIntegrationId": "",
        "configCmdbId": "",
        "configCmId": "",
        "kubeToken": "************",
        "kubeUrl": "https://10.0.0.59:6443",
        "securityServer": "off",
        "serviceRegistryId": "",
        "enableNetworkTypeSelection": null
      },
      "credential": {
        "type": "local"
      },
      "dateCreated": "2017-03-28T19:36:46Z",
      "lastUpdated": "2021-01-28T17:55:43Z",
      "groups": [
        {
          "id": 2,
          "name": "All Clouds",
          "accountId": 1
        },
        {
          "id": 14,
          "name": "Automation",
          "accountId": 1
        }
      ],
      "securityServer": null,
      "stats": {
        "serverCounts": {
          "all": 0,
          "host": 0,
          "hypervisor": 0,
          "containerHost": 0,
          "vm": 0,
          "baremetal": 0,
          "unmanaged": 0
        }
      },
      "serverCount": 0
    },
    {
      "id": 1,
      "uuid": "9a217c80-c9e0-1459-97b9-1abb33a6c8b2",
      "externalId": "200121726117",
      "name": "AWS Test",
      "code": "awstest",
      "location": "",
      "accountId": 1,
      "account": {
        "id": 1,
        "name": "<%= application_name %> Sandbox"
      },
      "visibility": "private",
      "enabled": true,
      "status": "ok",
      "statusMessage": null,
      "statusDate": "2022-05-02T23:32:28Z",
      "costStatus": "ok",
      "costStatusMessage": null,
      "costStatusDate": null,
      "zoneType": {
        "id": 3,
        "code": "amazon",
        "name": "Amazon"
      },
      "zoneTypeId": 3,
      "guidanceMode": "off",
      "storageMode": "standard",
      "agentMode": "cloudInit",
      "userDataLinux": null,
      "userDataWindows": null,
      "consoleKeymap": null,
      "containerMode": "docker",
      "serviceVersion": null,
      "costingMode": "full",
      "inventoryLevel": "full",
      "timezone": null,
      "apiProxy": null,
      "provisioningProxy": null,
      "networkDomain": null,
      "domainName": "localdomain",
      "regionCode": "ec2.us-west-1.amazonaws.com",
      "autoRecoverPowerState": true,
      "scalePriority": 1,
      "config": {
        "endpoint": "ec2.us-west-1.amazonaws.com",
        "accessKey": "my-access-key",
        "secretKey": "************",
        "stsAssumeRole": "",
        "isVpc": "true",
        "vpc": "",
        "imageStoreId": "",
        "ebsEncryption": "off",
        "costingBucket": "myorg.billing",
        "costingRegion": "us-west-1",
        "costingFolder": "reports",
        "costingReport": "cloudability",
        "costingAccessKey": "",
        "costingSecretKey": "",
        "linkedAccountId": "",
        "applianceUrl": "",
        "datacenterName": "",
        "networkServer.id": "1510",
        "networkServer": {
          "id": "1510"
        },
        "certificateProvider": "internal",
        "backupMode": "internal",
        "replicationMode": "-1",
        "dnsIntegrationId": "",
        "serviceRegistryId": "",
        "configManagementId": "",
        "configCmdbId": "",
        "configCmId": "",
        "securityServer": "null"
      },
      "credential": {
        "type": "local"
      },
      "dateCreated": "2020-05-08T03:04:16Z",
      "lastUpdated": "2021-01-28T17:55:54Z",
      "groups": [
        {
          "id": 42367,
          "name": "AWS Test",
          "accountId": 1
        }
      ],
      "securityServer": null,
      "stats": {
        "serverCounts": {
          "all": 0,
          "host": 0,
          "hypervisor": 0,
          "containerHost": 0,
          "vm": 55,
          "baremetal": 0,
          "unmanaged": 55
        }
      },
      "serverCount": 0
    }
  ],
  "meta": {
    "offset": 0,
    "max": "25",
    "size": 2,
    "total": 2
  }
}
```

This endpoint retrieves all zones and a list of zones associated with the zone by id.

### HTTP Request

`GET <%= api_url %>/api/zones`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
lastUpdated |  | A date filter, restricts query to only load zones updated more recent or equal to the date specified
name |  | If specified will return an exact match zone
type |  | If specified will return all zones by type code (`standard`,`openstack`,`amazon`)
groupId |  | If specified will return all zones assigned to a server group by id.


## Get a Specific Cloud


```shell
curl "<%= curl_url %>/api/zones/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "zone": {
    "id": 1,
    "uuid": "9a217c80-c9e0-1459-97b9-1abb33a6c8b2",
    "externalId": "200121726117",
    "name": "AWS Test",
    "code": "awstest",
    "location": "",
    "owner": {
        "id": 1,
        "name": "<%= application_name %> Sandbox"
      },
    "accountId": 1,
    "account": {
      "id": 1,
      "name": "<%= application_name %> Sandbox"
    },
    "visibility": "private",
    "enabled": true,
    "status": "ok",
    "statusMessage": null,
    "zoneType": {
      "id": 3,
      "code": "amazon",
      "name": "Amazon"
    },
    "zoneTypeId": 3,
    "guidanceMode": "off",
    "storageMode": "standard",
    "agentMode": "cloudInit",
    "userDataLinux": null,
    "userDataWindows": null,
    "consoleKeymap": null,
    "containerMode": "docker",
    "serviceVersion": null,
    "costingMode": "full",
    "inventoryLevel": "full",
    "timezone": null,
    "apiProxy": null,
    "provisioningProxy": null,
    "networkDomain": null,
    "domainName": "localdomain",
    "regionCode": "ec2.us-west-1.amazonaws.com",
    "autoRecoverPowerState": true,
    "scalePriority": 1,
    "config": {
      "endpoint": "ec2.us-west-1.amazonaws.com",
      "accessKey": "my-access-key",
      "secretKey": "************",
      "stsAssumeRole": "",
      "isVpc": "true",
      "vpc": "",
      "imageStoreId": "",
      "ebsEncryption": "off",
      "costingBucket": "myorg.billing",
      "costingRegion": "us-west-1",
      "costingFolder": "reports",
      "costingReport": "cloudability",
      "costingAccessKey": "",
      "costingSecretKey": "",
      "linkedAccountId": "",
      "applianceUrl": "",
      "datacenterName": "",
      "networkServer.id": "1510",
      "networkServer": {
        "id": "1510"
      },
      "certificateProvider": "internal",
      "backupMode": "internal",
      "replicationMode": "-1",
      "dnsIntegrationId": "",
      "serviceRegistryId": "",
      "configManagementId": "",
      "configCmdbId": "",
      "configCmId": "",
      "securityServer": "null"
    },
    "dateCreated": "2020-05-08T03:04:16Z",
    "lastUpdated": "2021-01-28T17:55:54Z",
    "groups": [
      {
        "id": 42367,
        "name": "AWS Test",
        "accountId": 1
      }
    ],
    "securityServer": null,
    "stats": {
      "serverCounts": {
        "all": 0,
        "host": 0,
        "hypervisor": 0,
        "containerHost": 0,
        "vm": 55,
        "baremetal": 0,
        "unmanaged": 55
      }
    },
    "serverCount": 0
  }
}
```

This endpoint retrieves a specific zone.


### HTTP Request

`GET <%= api_url %>/api/zones/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the zone to retrieve

## Create a Cloud

```shell
curl -XPOST "<%= curl_url %>/api/zones" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"zone":{
    "name": "My Cloud",
    "code": "mycloud",
    "description": "My description",
    "location": "US EAST",
    "zoneType": {"code": "standard"},
    "groupId": 1,
    "credential": {
      "id": 558
    }
  }}'
```

> The above command returns JSON structured like getting a single cloud:

### HTTP Request

`POST <%= api_url %>/api/zones`

### JSON Cloud Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name scoped to your account for the cloud
description |  | Optional description field if you want to put more info there
code      |  | Optional code for use with policies
location  |  | Optional location for your cloud
visibility      | private | private or public
zoneType  | "standard" | Map containing code or id of the cloud type
groupId  |  | Specifies which Server group this cloud should be assigned to
accountId |  | Specifies which Tenant this cloud should be assigned to
enabled | true | Can be used to disable the cloud
autoRecoverPowerState | false | Automatically Power on VMs
scalePriority | 1 | Scale Priority
linkedAccountId |  | Linked Account ID (enter commercial ID to get costing for AWS Govcloud)
config |  | Map containing zone configuration settings. See the section on specific zone types for details.
credential |  | Map containing [Credential](#credentials) ID or the default `{"type": "local"}` which means use the values set in the local cloud `config` instead of associating a credential.

Additional config properties are dynamic and depend on the specified type of cloud. See [Cloud Types](#cloud-types).

## Updating a Cloud

```shell
curl -XPUT "<%= curl_url %>/api/zones/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"zone":{
    "name": "My Cloud",
    "description": "My description",
    "location": "US EAST",
    "zoneType": {
      "code": "standard"
    },
    "groupId": 1,
    "securityMode": "off",
    "config": {
    },
    "credential": {
      "id": 559
    }
  }}'
```

> The above command returns JSON structured like getting a single zone:

### HTTP Request

`PUT <%= api_url %>/api/zones/:id`

### JSON Cloud Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name scoped to your account for the zone
description |  | Optional description field if you want to put more info there
code      |  | Optional code for use with policies
location  |  | Optional location for your zone
visibility      | private | private or public
accountId |  | Specifies which Tenant this zone should be assigned to
enabled | true | Can be used to disable the cloud
autoRecoverPowerState |  | Automatically Power on VMs
scalePriority |  | Scale Priority
linkedAccountId |  | Linked Account ID (enter commercial ID to get costing for AWS Govcloud)
config |  | Map containing zone configuration settings. See the section on specific zone types for details.
credential |  | Map containing [Credential](#credentials) ID or the default `{"type": "local"}` which means use the values set in the local cloud `
securityMode | | host firewall.. off or internal. a.k.a. "local firewall"
config` instead of associating a credential.

Additional config properties are dynamic and depend on the type of cloud. See [Cloud Types](#cloud-types).

## Refresh a Cloud

```shell
curl -XPOST "<%= curl_url %>/api/zones/:id/refresh" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint provides a way to manually refresh a specific cloud. 
Each cloud type varies when it comes to what refreshing entails, but it involves operations like discovering changes to servers and networks.


### HTTP Request

`POST <%= api_url %>/api/zones/:id/refresh`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
mode | hourly | Refresh Mode. Run the `daily` or `costing` job instead of the default `hourly` refresh job.
rebuild | false | Rebuild. Pass `true` to purge existing invoices for the period before refreshing. Only applies to mode: `costing`.
period | (current) | Period. Invoice billing period to refresh in the format `YYYYMM`. The default period is the current month. Only applies to mode: `costing`.

## Delete a Cloud

```shell
curl -XDELETE "<%= curl_url %>/api/zones/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

If a zone has instances or managed servers still tied to it, a delete action will fail

### HTTP Request

`DELETE <%= api_url %>/api/zones/:id`

## Get Security Groups for a Cloud

```shell
curl -XGET "<%= curl_url %>/api/zones/1/security-groups" \
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

This returns a list of all of the security groups applied to a zone and whether the firewall is enabled.

### HTTP Request

`GET <%= api_url %>/api/zones/:id/security-groups`


## Set Security Groups for a Cloud

```shell
curl -XPOST "<%= curl_url %>/api/zones/1/security-groups" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{ "securityGroupIds": [19, 2] }'
```

> The above command returns JSON structure similar to the 'get' of security groups.

### HTTP Request

`POST <%= api_url %>/api/zones/:id/security-groups`

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
securityGroupIds |  | List of all security groups ids which should be applied.  If no security groups should apply, pass '[]'

