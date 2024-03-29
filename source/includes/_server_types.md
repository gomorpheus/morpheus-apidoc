## Host Types

<!--
## Get All Host Types
-->

Fetch a paginated list of available host types. This returns the configuration options for each type.

```shell
curl "<%= curl_url %>/api/server-types"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "serverTypes":[
    {
      "id":19,
      "code":"softlayerVm",
      "name":"Softlayer Instance",
      "description":"",
      "platform":"linux",
      "nodeType":"morpheus-vm-node",
      "managed":true,
      "enabled":true,
      "vmHypervisor":false,
      "containerHypervisor":false,
      "displayOrder":0,
      "selectable":false,
      "controlPower":true,
      "controlSuspend":true,
      "hasAgent":true,
      "creatable":false,
      "optionTypes":[

      ]
    },
    {
      "id":23,
      "code":"amazonVm",
      "name":"Amazon Instance",
      "description":"",
      "platform":"linux",
      "nodeType":"morpheus-vm-node",
      "managed":true,
      "enabled":true,
      "vmHypervisor":false,
      "containerHypervisor":false,
      "displayOrder":0,
      "selectable":false,
      "controlPower":true,
      "controlSuspend":true,
      "hasAgent":true,
      "creatable":false,
      "optionTypes":[

      ]
    },
    {
      "id":31,
      "code":"vmwareVm",
      "name":"Vmware Instance",
      "description":"",
      "platform":"linux",
      "nodeType":"morpheus-vm-node",
      "managed":true,
      "enabled":true,
      "vmHypervisor":false,
      "containerHypervisor":false,
      "displayOrder":0,
      "selectable":false,
      "controlPower":true,
      "controlSuspend":true,
      "hasAgent":true,
      "creatable":false,
      "optionTypes":[

      ]
    },
    {
      "id":39,
      "code":"nutanixVm",
      "name":"Nutanix Instance",
      "description":"",
      "platform":"linux",
      "nodeType":"morpheus-vm-node",
      "managed":true,
      "enabled":true,
      "vmHypervisor":false,
      "containerHypervisor":false,
      "displayOrder":0,
      "selectable":false,
      "controlPower":true,
      "controlSuspend":true,
      "hasAgent":true,
      "creatable":false,
      "optionTypes":[

      ]
    },
    {
      "id":43,
      "code":"xenserverVm",
      "name":"Xen Instance",
      "description":"",
      "platform":"linux",
      "nodeType":"morpheus-vm-node",
      "managed":true,
      "enabled":true,
      "vmHypervisor":false,
      "containerHypervisor":false,
      "displayOrder":0,
      "selectable":false,
      "controlPower":true,
      "controlSuspend":true,
      "hasAgent":true,
      "creatable":false,
      "optionTypes":[

      ]
    },
    {
      "id":14,
      "code":"metapodLinux",
      "name":"Metapod Linux Node",
      "description":"",
      "platform":"linux",
      "nodeType":"morpheus-node",
      "managed":true,
      "enabled":true,
      "vmHypervisor":false,
      "containerHypervisor":false,
      "displayOrder":2,
      "selectable":false,
      "controlPower":true,
      "controlSuspend":true,
      "hasAgent":true,
      "creatable":true,
      "optionTypes":[

      ]
    },
    {
      "id":8,
      "code":"openstackLinux",
      "name":"Openstack Linux Node",
      "description":"",
      "platform":"linux",
      "nodeType":"morpheus-node",
      "managed":true,
      "enabled":true,
      "vmHypervisor":false,
      "containerHypervisor":false,
      "displayOrder":4,
      "selectable":false,
      "controlPower":true,
      "controlSuspend":true,
      "hasAgent":true,
      "creatable":true,
      "optionTypes":[
        {
          "name":"osUsr",
          "type":"text",
          "defaultValue":null,
          "placeHolder":null,
          "required":true,
          "fieldName":"osUsr",
          "fieldContext":"config"
        },
        {
          "name":"flavorId",
          "type":"selectOsFlavor",
          "defaultValue":null,
          "placeHolder":null,
          "required":true,
          "fieldName":"flavorId",
          "fieldContext":"config"
        },
        {
          "name":"imageId",
          "type":"selectOsImage",
          "defaultValue":null,
          "placeHolder":null,
          "required":true,
          "fieldName":"imageId",
          "fieldContext":"config"
        },
        {
          "name":"osNetworkId",
          "type":"selectOsNetwork",
          "defaultValue":null,
          "placeHolder":null,
          "required":true,
          "fieldName":"osNetworkId",
          "fieldContext":"config"
        },
        {
          "name":"diskSize",
          "type":"text",
          "defaultValue":null,
          "placeHolder":null,
          "required":true,
          "fieldName":"diskSize",
          "fieldContext":"config"
        },
        {
          "name":"templateTypeSelect",
          "type":"radio",
          "defaultValue":null,
          "placeHolder":null,
          "required":true,
          "fieldName":"templateTypeSelect",
          "fieldContext":"config"
        },
        {
          "name":"floatingIp",
          "type":"checkbox",
          "defaultValue":null,
          "placeHolder":null,
          "required":true,
          "fieldName":"floatingIp",
          "fieldContext":"config"
        },
        {
          "name":"osPwd",
          "type":"password",
          "defaultValue":null,
          "placeHolder":null,
          "required":true,
          "fieldName":"osPwd",
          "fieldContext":"config"
        },
        {
          "name":"diskMode",
          "type":"selectDiskMode",
          "defaultValue":null,
          "placeHolder":null,
          "required":true,
          "fieldName":"diskMode",
          "fieldContext":"config"
        },
        {
          "name":"securityGroup",
          "type":"selectOpenstackSecurityGroup",
          "defaultValue":null,
          "placeHolder":null,
          "required":true,
          "fieldName":"securityGroup",
          "fieldContext":"config"
        },
        {
          "name":"publicKeyId",
          "type":"keyPairSelect",
          "defaultValue":null,
          "placeHolder":null,
          "required":true,
          "fieldName":"publicKeyId",
          "fieldContext":"config"
        },
        {
          "name":"serverGroup",
          "type":"selectOpenstackServerGroup",
          "defaultValue":null,
          "placeHolder":null,
          "required":true,
          "fieldName":"serverGroup",
          "fieldContext":"config"
        }
      ]
    }
  ]
}
```

### HTTP Request

`GET <%= api_url %>/api/server-types`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | displayOrder | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
name |  | Filter by name or code
code |  | Filter by code
phrase |  | Filter by wildcard search of name, code and description
provisionType |  | Filter by [Provision Type](#provision-types) code
zoneType |  | Filter by [Cloud Type](#cloud-types) code
creatable |  | Filter by creatable flag. This is whether or not it can be provisioned.


## Get a Specific Host Type

```shell
curl "<%= curl_url %>/api/server-types/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "serverType": {
    "id": 19,
    "code": "softlayerVm",
    "name": "Softlayer Instance",
    "description": "",
    "platform": "linux",
    "nodeType": "morpheus-vm-node",
    "managed": true,
    "enabled": true,
    "vmHypervisor": false,
    "containerHypervisor": false,
    "displayOrder": 0,
    "selectable": false,
    "controlPower": true,
    "controlSuspend": true,
    "hasAgent": true,
    "creatable": false,
    "optionTypes": []
  }
}
```
This endpoint will retrieve a specific host type by id

### HTTP Request

`GET <%= api_url %>/api/server-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the host type
