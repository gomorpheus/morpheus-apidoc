# Integrations

Provides API interfaces for managing integrations within <%= application_name %>.

## Get All Integrations

```shell
curl "<%= curl_url %>/api/integrations" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "integrations": [
    {
      "id": 6448,
      "name": "Ansible",
      "enabled": true,
      "type": "ansible",
      "integrationType": {
        "id": 3,
        "code": "ansible",
        "name": "Ansible"
      },
      "url": "git@github.com:organization/ansible.git",
      "isPlugin": false,
      "config": {
        "cm": {
          "ansiblePlaybooks": "/",
          "ansibleRoles": "/roles",
          "ansibleGroupVars": "/vars",
          "ansibleHostVars": "/hosts",
          "ansibleCommandBus": "on",
          "ansibleVerbose": "on",
          "ansibleGalaxyEnabled": null,
          "cacheEnabled": true
        }
      },
      "status": "ok",
      "statusDate": "2021-03-19T20:09:27Z",
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 1257,
      "name": "Github - Neo",
      "enabled": true,
      "type": "github",
      "integrationType": {
        "id": 15,
        "code": "github",
        "name": "GitHub"
      },
      "username": "neo",
      "serviceKey": {
        "id": 3,
        "name": "Neo"
      },
      "serviceMode": "static",
      "isPlugin": false,
      "config": {
        "defaultBranch": "",
        "cacheEnabled": true
      },
      "status": "ok",
      "statusDate": "2021-03-19T20:09:30Z",
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 4997,
      "name": "Labs Ansible Tower",
      "enabled": true,
      "type": "ansibleTower",
      "integrationType": {
        "id": 25,
        "code": "ansibleTower",
        "name": "Ansible Tower"
      },
      "url": "https://10.0.0.91",
      "username": "admin",
      "password": "************",
      "version": "v2",
      "isPlugin": false,
      "config": {
      },
      "status": "ok",
      "statusDate": "2021-04-24T03:47:13Z",
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 9471,
      "name": "Labs BlueCat",
      "enabled": true,
      "type": "bluecat",
      "integrationType": {
        "id": 17,
        "code": "bluecat",
        "name": "Bluecat"
      },
      "url": "https://10.0.0.99",
      "port": "22",
      "username": "neo",
      "password": "************",
      "serviceMode": "static",
      "isPlugin": false,
      "config": {
      },
      "status": "ok",
      "statusDate": null,
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 4343,
      "name": "Labs Cherwell",
      "enabled": true,
      "type": "cherwell",
      "integrationType": {
        "id": 26,
        "code": "cherwell",
        "name": "Cherwell"
      },
      "url": "https://cherwell-host",
      "username": "CSDAdmin",
      "password": "************",
      "isPlugin": false,
      "config": {
        "cherwellCustomCmdbMapping": "{\r\n\"ShortDescription\":\"Created by ${instance.createdByUsername} in ${zone.name}\"\r\n}",
        "cherwellClientKey": "a1063167-24e6-46a0-8b1e-6316ff3080be",
        "cherwellCreatedBy": "Jamie Young",
        "cherwellStartDate": "5",
        "cherwellEndDate": "10",
        "cherwellIgnoreSSLErrors": null,
        "cherwellBusinessObject": ""
      },
      "status": "ok",
      "statusDate": null,
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 9377,
      "name": "Labs Infoblox - H5",
      "enabled": true,
      "type": "infoblox",
      "integrationType": {
        "id": 16,
        "code": "infoblox",
        "name": "Infoblox"
      },
      "url": "https://infoblox-host/wapi/v2.9",
      "port": "22",
      "username": "admin",
      "password": "************",
      "serviceMode": "static",
      "isPlugin": false,
      "config": {
        "_inventoryExisting": "",
        "inventoryExisting": "on",
        "extraAttributes": "{\r\n\"Date Assigned\":\"\<\%\=dateCreated%>\",\r\n\"Requestor\":\"\<\%\=username%>\",\r\n\"Request Number\":\"\<\%\=userId%>\"\r\n}"
      },
      "status": "ok",
      "statusDate": "2021-04-24T03:00:05Z",
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 933,
      "name": "Labs Jenkins",
      "enabled": true,
      "type": "jenkins",
      "integrationType": {
        "id": 14,
        "code": "jenkins",
        "name": "Jenkins"
      },
      "url": "https://jenkins-host",
      "username": "neo",
      "password": "************",
      "isPlugin": false,
      "config": {
      },
      "status": "ok",
      "statusDate": "2021-04-20T02:42:43Z",
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 2157,
      "name": "Labs Microsoft DNS",
      "enabled": true,
      "type": "microsoft.dns",
      "integrationType": {
        "id": 8,
        "code": "microsoft.dns",
        "name": "Microsoft DNS"
      },
      "url": "10.0.0.53",
      "username": "administrator",
      "password": "************",
      "serviceFlag": true,
      "isPlugin": false,
      "config": {
      },
      "status": "ok",
      "statusDate": "2021-04-11T00:06:56Z",
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 3107,
      "name": "Labs phpIPAM",
      "enabled": true,
      "type": "phpipam",
      "integrationType": {
        "id": 20,
        "code": "phpipam",
        "name": "phpIPAM"
      },
      "url": "http://10.0.0.168/api/",
      "port": "22",
      "username": "Admin",
      "password": "************",
      "isPlugin": false,
      "config": {
        "appId": "neodev"
      },
      "status": "ok",
      "statusDate": "2021-04-24T03:00:05Z",
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 146,
      "name": "Labs PowerDNS",
      "enabled": true,
      "type": "powerDns",
      "integrationType": {
        "id": 11,
        "code": "powerDns",
        "name": "PowerDNS"
      },
      "url": "https://powerdns-host",
      "password": "************",
      "version": "4",
      "isPlugin": false,
      "config": {
      },
      "status": "ok",
      "statusDate": "2021-04-24T03:47:15Z",
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 7298,
      "name": "Labs Puppet",
      "enabled": true,
      "type": "puppet",
      "integrationType": {
        "id": 2,
        "code": "puppet",
        "name": "Puppet"
      },
      "isPlugin": false,
      "config": {
        "cm": {
          "puppetMaster": "puppet-host",
          "puppetFireNow": "true",
          "puppetSshUser": "neo",
          "puppetSshPassword": "************"
        }
      },
      "status": "ok",
      "statusDate": null,
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 4,
      "name": "Labs Chef",
      "enabled": true,
      "type": "chef",
      "integrationType": {
        "id": 1,
        "code": "chef",
        "name": "Chef"
      },
      "url": "https://chef-host",
      "username": "neo",
      "isPlugin": false,
      "config": {
        "cm": {
          "endpoint": "https://chef.bertramlabs.com",
          "org": "my-org",
          "chefUser": "neo",
          "userKey": "-----BEGIN RSA PRIVATE KEY-----\r\n...RSA PRIVATE KEY-----",
          "version": "14.13.11",
          "chefUseFqdn": null,
          "windowsVersion": "14.13.11",
          "windowsInstallUrl": ""
        },
        "databags": [
          {
            "path": "/etc/chef/databag_secret",
            "key": "************"
          }
        ]
      },
      "status": "ok",
      "statusDate": null,
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 4369,
      "name": "Labs Remedy",
      "enabled": true,
      "type": "remedy",
      "integrationType": {
        "id": 27,
        "code": "remedy",
        "name": "Remedy"
      },
      "url": "http://remedy-host",
      "username": "neo",
      "password": "************",
      "isPlugin": false,
      "config": {
        "approvalUser": "Thomas Anderson",
        "company": "Metacorp",
        "remedyIgnoreSSLErrors": null
      },
      "status": "ok",
      "statusDate": "2021-04-15T02:42:33Z",
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 3662,
      "name": "Labs ServiceNow",
      "enabled": true,
      "type": "serviceNow",
      "integrationType": {
        "id": 10,
        "code": "serviceNow",
        "name": "ServiceNow"
      },
      "url": "https://my-sevicenow-server/",
      "username": "automation",
      "password": "************",
      "isPlugin": false,
      "config": {
        "incidentAccess": true,
        "requestAccess": true,
        "serviceNowCMDBBusinessObject": "",
        "serviceNowCustomCmdbMapping": "",
        "serviceNowCmdbClassMapping": [
          {
            "id": "44",
            "code": "amazonLinux",
            "name": "Amazon Docker Host",
            "nowClass": "cmdb_ci_ec2_instance"
          },
          {
            "id": "46",
            "code": "amazonUnmanaged",
            "name": "Amazon Instance",
            "nowClass": "cmdb_ci_ec2_instance"
          },
          {
            "id": "47",
            "code": "amazonVm",
            "name": "Amazon Instance",
            "nowClass": "cmdb_ci_ec2_instance"
          },
          {
            "id": "49",
            "code": "amazonWindowsVm",
            "name": "Amazon Windows Instance",
            "nowClass": "cmdb_ci_ec2_instance"
          },
          {
            "id": "45",
            "code": "amazonWindows",
            "name": "Amazon Windows Node",
            "nowClass": "cmdb_ci_ec2_instance"
          },
          {
            "id": "13",
            "code": "hypervHypervisor",
            "name": "Hyper-V Hypervisor",
            "nowClass": "cmdb_ci_hyper_v_server"
          },
          {
            "id": "16",
            "code": "hypervVm",
            "name": "Hyper-V Linux VM",
            "nowClass": "cmdb_ci_hyper_v_instance"
          },
          {
            "id": "14",
            "code": "hypervWindows",
            "name": "Hyper-V Windows Host",
            "nowClass": "cmdb_ci_hyper_v_instance"
          },
          {
            "id": "17",
            "code": "hypervWindowsVm",
            "name": "Hyper-V Windows VM",
            "nowClass": "cmdb_ci_hyper_v_instance"
          },
          {
            "id": "75",
            "code": "vmwareVm",
            "name": "VMware Linux VM",
            "nowClass": "cmdb_ci_vmware_instance"
          },
          {
            "id": "73",
            "code": "vmwareWindows",
            "name": "VMware Windows Node",
            "nowClass": "cmdb_ci_vmware_instance"
          },
          {
            "id": "76",
            "code": "vmwareWindowsVm",
            "name": "VMware Windows VM",
            "nowClass": "cmdb_ci_vmware_instance"
          },
          {
            "id": "74",
            "code": "vmwareUnmanaged",
            "name": "Vmware VM",
            "nowClass": "cmdb_ci_vmware_instance"
          }
        ]
      },
      "status": "ok",
      "statusDate": "2021-03-18T01:14:19Z",
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    },
    {
      "id": 5999,
      "name": "Labs SolarWinds",
      "enabled": true,
      "type": "solarwindsipam",
      "integrationType": {
        "id": 28,
        "code": "solarwindsipam",
        "name": "SolarWinds IPAM"
      },
      "url": "https://10.0.0.13:17778",
      "port": "22",
      "username": "admin",
      "password": "************",
      "isPlugin": false,
      "config": {
        "_inventoryExisting": ""
      },
      "status": "syncing",
      "statusDate": "2021-04-24T03:00:04Z",
      "statusMessage": null,
      "lastSync": null,
      "nextRunDate": null,
      "lastSyncDuration": null
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 25,
    "total": 34
  }
}
```

This endpoint retrieves a list of integrations.

### HTTP Request

`GET <%= api_url %>/api/integrations`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | id | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
id |  | Filter by id
name |  | Filter by integration Name
type |  | Filter by integration Type Code
url |  | Filter by integration Service URL
host |  | Filter by integration Host
port |  | Filter by integration Port
username |  | Filter by integration Username
version |  | Filter by integration Version
windowsVersion |  | Filter by integration Windows Version
status |  | Filter by integration status
objects | false | Include `objects=true` to return the [Integration Objects](#list-servicenow-integration-objects) for each integration. Available in api version 5.2.8/5.3.2.

## Get a Specific Integration

```shell
curl "<%= curl_url %>/api/integrations/2" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "integration": {
    "id": 63,
    "name": "GitTest",
    "enabled": true,
    "type": "git",
    "integrationType": {
      "id": 6,
      "code": "git",
      "name": "Git repository"
    },
    "url": "https://github.com/organization/repo.git",
    "username": "neo",
    "password": "",
    "token": "************",
    "serviceKey": {
      "id": 15,
      "name": "git_key"
    },
    "serviceMode": "static",
    "isPlugin": false,
    "config": {
      "defaultBranch": "mybranch",
      "cacheEnabled": true
    },
    "status": "ok",
    "statusDate": null,
    "statusMessage": null,
    "lastSync": null,
    "nextRunDate": null,
    "lastSyncDuration": null
  }
}
```

This endpoint retrieves a specific Integration.

### HTTP Request

`GET <%= api_url %>/api/integrations/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the Integration

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
objects | false | Include `objects=true` to return the [Integration Objects](#list-servicenow-integration-objects) for the integration. Available in api version 5.2.8/5.3.2.

## Create an Integration

```shell
curl -XPOST "<%= curl_url %>/api/integrations" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "integration": {
    "name": "<%= company_name %> Jenkins",
    "enabled": true,
    "type": "jenkins",
    "url": "https://jenkins.dev.<%= company_domain %>",
    "username": "my-user",
    "password": "my-password"
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "integration": {
    "id": 1
  }
}
```

This endpoint creates a new Integration.

### HTTP Request

`POST <%= api_url %>/api/integrations`

### Create Integration Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
name | Y |  | Name, a unique identifier for the integration
type | Y |  | [Integration Type](#integration-types) code
enabled | N | true | Enabled

These are the common parameters for all types of integrations. They are passed under an object called `integration`. Each integration type may support additional parameters which can be determined by the [Integration Type Option Types](#get-integration-type-option-types) endpoint. See examples below, such as [Jenkins](#jenkins-integration), [ServiceNow](#servicenow-integration), and [Github](#github-integration).

## Update an Integration

```shell
curl -XPUT "<%= curl_url %>/api/integrations/:id" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "integration": {
    "name": "<%= company_name %> Legacy Jenkins",
    "enabled": "true,
    "url": "https://oldjenkins.dev.<%= company_domain %>",
    "username": "new-user",
    "password": "new-password"
  }
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "integration": {
    "id": 1
  }
}
```

This endpoint updates an existing Integration. For some types, update triggers a [refresh](#refresh-an-integration) to be performed. Refresh can be avoided by passing `refresh=false`.

### HTTP Request

`PUT <%= api_url %>/api/integrations/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the Integration

### Update Integration Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
name | N |  | Name, a unique identifier for the integration
enabled | N |  | Enabled
refresh | N | true | Pass `false` to skip refresh. By default, refresh is done on update, when it is supported by the integration type.

These are the common parameters for all types of integrations. They are passed under an object called `integration`. Each integration type may support additional parameters which can be determined by the [Integration Type Option Types](#get-integration-type-option-types) endpoint. See examples below, such as [Jenkins](#jenkins-integration), [ServiceNow](#servicenow-integration), and [Github](#github-integration).

## Refresh an Integration

```shell
curl -XPOST "<%= curl_url %>/api/integrations/:id/refresh" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "integration": {
    "id": 1
  }
}
```

This endpoint will refresh an existing Integration. Only some types support this and will actually perform an action as a result.

### HTTP Request

`POST <%= api_url %>/api/integrations/:id/refresh`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the Integration

## Delete an Integration

```shell
curl -XDELETE "<%= curl_url %>/api/integrations/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This endpoint deletes an existing integration.

### HTTP Request

`DELETE <%= api_url %>/api/integrations/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the Integration

## Ansible Integration

```shell
curl -XPOST "<%= curl_url %>/api/integrations" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "integration": {
    "name": "<%= company_name %> Ansible",
    "type": "ansible",
    "serviceUrl": "https://ansible-url",
    "serviceUsername": "ansible-user",
    "servicePassword": "************",
    "config": {
      "ansibleDefaultBranch": "main",
      "ansiblePlaybooks": "/",
      "ansibleRoles": "/roles",
      "ansibleGroupVars": "/vars",
      "ansibleHostVars": "/hosts",
      "ansibleGalaxyEnabled": false,
      "ansibleVerbose": true,
      "ansibleCommandBus": true
    }
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "integration": {
    "id": 1
  }
}
```

This is an example of [create](#create-an-integration) for a new Ansible integration

### HTTP Request

`POST <%= api_url %>/api/integrations`

### Ansible Integration Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
serviceUrl | Y |  | Ansible Git URL
serviceUsername | N |  | Git Options: User
servicePassword | N |  | Git Options: Password
serviceToken | N |  | Git Options: Access Token
serviceKey | N |  | Git Options: Key Pair ID
config.defaultBranch | N | main / master | Default Branch
config.ansiblePlaybooks | N |  | Playbooks Path
config.ansibleRoles | N |  | Roles Path
config.ansibleGroupVars | N |  | Group Variables Path
config.ansibleHostVars | N |  | Host Variables Path
config.ansibleGalaxyEnabled | N |  | Use Ansible Galaxy
config.ansibleVerbose | N |  | Use Verbose Logging
config.ansibleCommandBus | N |  | Use Morpheus Agent Command Bus
config.cacheEnabled | N | | Enable Git Repository Caching 

## ServiceNow Integration

```shell
curl -XPOST "<%= curl_url %>/api/integrations" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "integration": {
    "name": "<%= company_name %> ServiceNow",
    "type": "serviceNow",
    "url": "https://my-sevicenow-server/",
    "username": "automation",
    "password": "************",
    "config": {
      "incidentAccess": true,
      "requestAccess": true,
      "serviceNowCMDBBusinessObject": "",
      "serviceNowCustomCmdbMapping": "",
      "serviceNowCmdbClassMapping": [
        {
          "id": "44",
          "code": "amazonLinux",
          "name": "Amazon Docker Host",
          "nowClass": "cmdb_ci_ec2_instance"
        },
        {
          "id": "46",
          "code": "amazonUnmanaged",
          "name": "Amazon Instance",
          "nowClass": "cmdb_ci_ec2_instance"
        },
        {
          "id": "47",
          "code": "amazonVm",
          "name": "Amazon Instance",
          "nowClass": "cmdb_ci_ec2_instance"
        },
        {
          "id": "49",
          "code": "amazonWindowsVm",
          "name": "Amazon Windows Instance",
          "nowClass": "cmdb_ci_ec2_instance"
        },
        {
          "id": "45",
          "code": "amazonWindows",
          "name": "Amazon Windows Node",
          "nowClass": "cmdb_ci_ec2_instance"
        },
        {
          "id": "13",
          "code": "hypervHypervisor",
          "name": "Hyper-V Hypervisor",
          "nowClass": "cmdb_ci_hyper_v_server"
        },
        {
          "id": "16",
          "code": "hypervVm",
          "name": "Hyper-V Linux VM",
          "nowClass": "cmdb_ci_hyper_v_instance"
        },
        {
          "id": "14",
          "code": "hypervWindows",
          "name": "Hyper-V Windows Host",
          "nowClass": "cmdb_ci_hyper_v_instance"
        },
        {
          "id": "17",
          "code": "hypervWindowsVm",
          "name": "Hyper-V Windows VM",
          "nowClass": "cmdb_ci_hyper_v_instance"
        },
        {
          "id": "75",
          "code": "vmwareVm",
          "name": "VMware Linux VM",
          "nowClass": "cmdb_ci_vmware_instance"
        },
        {
          "id": "73",
          "code": "vmwareWindows",
          "name": "VMware Windows Node",
          "nowClass": "cmdb_ci_vmware_instance"
        },
        {
          "id": "76",
          "code": "vmwareWindowsVm",
          "name": "VMware Windows VM",
          "nowClass": "cmdb_ci_vmware_instance"
        },
        {
          "id": "74",
          "code": "vmwareUnmanaged",
          "name": "Vmware VM",
          "nowClass": "cmdb_ci_vmware_instance"
        }
      ]
    }
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "integration": {
    "id": 1
  }
}
```

This example creates a new ServiceNow integration. See [Integration Objects](#list-servicenow-integration-objects) for configuring an Exposed Catalog Item.

### HTTP Request

`POST <%= api_url %>/api/integrations`

### ServiceNow Integration Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
serviceUrl | Y |  | ServiceNow Host
serviceUsername | Y |  | User
servicePassword | Y |  | Password
config.serviceNowCustomCmdbMapping | N |  | CMDB Custom Mapping
config.serviceNowCmdbClassMapping | N |  | CMDB Class Mapping
config.serviceNowCMDBBusinessObject | N |  | CMDB Business Object

## List ServiceNow Integration Objects

```shell
curl "<%= curl_url %>/api/integrations/:integration_id/objects" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "objects": [
    {
      "id": 4,
      "name": "Dev Apache",
      "type": "catalog",
      "refType": "CatalogItemType",
      "refId": 27,
      "catalogItemType": {
        "id": 27,
        "name": "Dev Apache"
      }
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 4,
    "total": 4
  }
}
```

This endpoint retrieves a list of exposed objects for a specific integration.

### HTTP Request

`GET <%= api_url %>/api/integrations/:integration_id/objects`

### URL Parameters

Parameter | Description
--------- | -----------
integration_id | ID of the Integration

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Filter by wildcard search of name
id |  | Filter by id
name |  | Filter by name
type |  | Filter by type: `catalog`
refId |  | Filter by refId

## Get a Specific ServiceNow Integration Object

```shell
curl "<%= curl_url %>/api/integrations/:integration_id/objects/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "object": {
    "id": 4,
    "name": "Dev Apache",
    "type": "catalog",
    "refType": "CatalogItemType",
    "refId": 27,
    "catalogItemType": {
      "id": 27,
      "name": "Dev Apache"
    }
  }
}
```

This endpoint retrieves a specific integration object.

### HTTP Request

`GET <%= api_url %>/api/integrations/:integration_id/objects/:id`

### URL Parameters

Parameter | Description
--------- | -----------
integration_id | ID of the Integration
id | ID of the Integration Object

## Create a ServiceNow Exposed Catalog Item

```shell
curl -XPOST "<%= curl_url %>/api/integrations/:integration_id/objects" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "object": {
    "type": "catalog",
    "catalogItemType": 27
  }
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "object": {
    "id": 4
  }
}
```

This endpoint creates an Exposed Catalog Item. This is an integration object of type `catalog` that references a [Catalog Item Type](#self-service).

### HTTP Request

`POST <%= api_url %>/api/integrations/:integration_id/objects`

### URL Parameters

Parameter | Description
--------- | -----------
integration_id | ID of the Integration

### Exposed Catalog Item Parameters

The parameters for creating an integration object are passed under an object named `object`.

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
name | N | (catalog item name) | Name to display
type | Y |  | Integration Object Type code: `catalog`
catalogItemType | Y |  | [Catalog Item Type](#self-service) ID

## Delete an Integration Object

```shell
curl -XDELETE "<%= curl_url %>/api/integrations/:integration_id/objects/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This endpoint deletes an existing integration object.

### HTTP Request

`DELETE <%= api_url %>/api/integrations/:integration_id/objects/:id`

### URL Parameters

Parameter | Description
--------- | -----------
integration_id | ID of the Integration
id | The ID of the Integration Object

## Salt Master Integration

```shell
curl -XPOST "<%= curl_url %>/api/integrations" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "integration": {
    "name": "<%= company_name %> Salt Master",
    "type": "saltMaster",
    "serviceUrl": "salt-host",
    "serviceUsername": "salt-username",
    "servicePassword": "salt-password",
    "servicePort": "22"
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "integration": {
    "id": 1
  }
}
```

This is an example of [create](#create-an-integration) for a new Salt Master integration

### HTTP Request

`POST <%= api_url %>/api/integrations`

### Salt Master Integration Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
serviceMode | N | single | Topology
serviceUrl | Y |  | Salt Master
secondary | N |  | Salt Syndic
servicePort | N | 22 | SSH Port
serviceUsername | Y |  | User
servicePassword | N |  | Password
serviceKey | N |  | Master Key Pair
authKey | N |  | Signing Key
servicePath | N |  | Working Directory
serviceVersion | N |  | Salt Version
serviceWindowsVersion | N |  | Salt Version (Windows)
repoUrl | N |  | Repo URL
serviceConfig | N |  | Minion Config
config.saltApplyOnMinion | N |  | Apply State via Minion instead of Master (salt-call)
serviceCommand | N |  | Post Provision Commands


## Docker Repository Integration

```shell
curl -XPOST "<%= curl_url %>/api/integrations" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "integration": {
    "name": "<%= company_name %> Docker Repository",
    "type": "docker.registry",
    "serviceUrl": "https://index.docker.io/v1/",
    "serviceUsername": "admin",
    "servicePassword": "************"
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "integration": {
    "id": 1
  }
}
```

This is an example of [create](#create-an-integration) for a new Docker Repository integration

### HTTP Request

`POST <%= api_url %>/api/integrations`

### Docker Repository Integration Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
serviceUrl | Y |  | Repository URL
serviceUsername | Y |  | User
servicePassword | Y |  | Password

## Git Integration

```shell
curl -XPOST "<%= curl_url %>/api/integrations" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "integration": {
    "name": "<%= company_name %> Git",
    "type": "git",
    "serviceUrl": "https://git-url",
    "serviceUsername": "git-user",
    "servicePassword": "************",
    "config": {
      "defaultBranch": "main"
    }
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "integration": {
    "id": 1
  }
}
```

This is an example of [create](#create-an-integration) for a new Git integration

### HTTP Request

`POST <%= api_url %>/api/integrations`

### Git Integration Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
serviceUrl | Y |  | Git URL
serviceUsername | Y |  | User
servicePassword | N |  | Password
serviceToken | N |  | Access Token
serviceKey | N |  | Key Pair ID
config.defaultBranch | N | main / master | Default Branch
config.cacheEnabled | N | | Enable Git Repository Caching 

## Github Integration

```shell
curl -XPOST "<%= curl_url %>/api/integrations" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "integration": {
    "name": "<%= company_name %> Github",
    "type": "github",
    "serviceUsername": "github-user",
    "servicePassword": "************"
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "integration": {
    "id": 1
  }
}
```

This is an example of [create](#create-an-integration) for a new Github integration

### HTTP Request

`POST <%= api_url %>/api/integrations`

### Github Integration Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
serviceUsername | Y |  | User
servicePassword | N |  | Password
serviceToken | N |  | Access Token
serviceKey | N |  | Key Pair ID
config.cacheEnabled | N | | Enable Git Repository Caching 

## Jenkins Integration

```shell
curl -XPOST "<%= curl_url %>/api/integrations" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "integration": {
    "name": "<%= company_name %> Jenkins",
    "type": "jenkins",
    "serviceUrl": "https://jenkins-url",
    "serviceUsername": "jenkins-user",
    "servicePassword": "************"
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "integration": {
    "id": 1
  }
}
```

This is an example of [create](#create-an-integration) for a new Jenkins integration

### HTTP Request

`POST <%= api_url %>/api/integrations`

### Jenkins Integration Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
serviceUrl | Y |  | Jenkins Url
serviceUsername | Y |  | User
servicePassword | N |  | Password

