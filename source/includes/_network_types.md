## Network Types

Provides API for viewing Network Types and their configuration options.

<!--
## Get All Network Types
-->

```shell
curl "$MORPHEUS_API_URL/api/network-types" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkTypes": [
    {
      "id": 8,
      "code": "azureNetwork",
      "name": "Network",
      "description": "",
      "category": "azure",
      "externalType": null,
      "creatable": true,
      "overlay": false,
      "nameEditable": false,
      "cidrEditable": false,
      "dhcpServerEditable": false,
      "dnsEditable": false,
      "gatewayEditable": false,
      "vlanIdEditable": false,
      "canAssignPool": false,
      "deletable": true,
      "optionTypes": [
        {
          "id": 1139,
          "name": "resourceGroup",
          "code": "network.azure.resourceGroup",
          "description": null,
          "fieldName": "resourceGroupId",
          "fieldLabel": "Resource Group",
          "fieldContext": "config",
          "fieldGroup": null,
          "fieldClass": null,
          "fieldAddOn": null,
          "fieldComponent": null,
          "placeHolder": null,
          "helpBlock": "",
          "defaultValue": null,
          "optionSource": "azureZonePools",
          "type": "select",
          "advanced": false,
          "required": true,
          "editable": false,
          "creatable": true,
          "config": {
          },
          "displayOrder": 1,
          "wrapperClass": null,
          "enabled": true,
          "noBlank": false,
          "dependsOnCode": null,
          "contextualDefault": false
        },
        {
          "id": 1140,
          "name": "subnetName",
          "code": "network.azure.subnetName",
          "description": null,
          "fieldName": "subnetName",
          "fieldLabel": "Subnet Name",
          "fieldContext": "config",
          "fieldGroup": null,
          "fieldClass": null,
          "fieldAddOn": null,
          "fieldComponent": null,
          "placeHolder": null,
          "helpBlock": "",
          "defaultValue": null,
          "optionSource": null,
          "type": "text",
          "advanced": false,
          "required": true,
          "editable": false,
          "creatable": true,
          "config": {
          },
          "displayOrder": 3,
          "wrapperClass": null,
          "enabled": true,
          "noBlank": false,
          "dependsOnCode": null,
          "contextualDefault": false
        },
        {
          "id": 1138,
          "name": "addressSpace",
          "code": "network.azure.addressSpace",
          "description": null,
          "fieldName": "addressSpace",
          "fieldLabel": "Address Space",
          "fieldContext": "config",
          "fieldGroup": null,
          "fieldClass": null,
          "fieldAddOn": null,
          "fieldComponent": null,
          "placeHolder": null,
          "helpBlock": "The virtual networks's address range in CIDR notation",
          "defaultValue": null,
          "optionSource": null,
          "type": "text",
          "advanced": false,
          "required": true,
          "editable": false,
          "creatable": true,
          "config": {
          },
          "displayOrder": 2,
          "wrapperClass": null,
          "enabled": true,
          "noBlank": false,
          "dependsOnCode": null,
          "contextualDefault": false
        },
        {
          "id": 1141,
          "name": "subnetCidr",
          "code": "network.azure.subnet.cidr",
          "description": null,
          "fieldName": "subnetCidr",
          "fieldLabel": "Subnet Cidr",
          "fieldContext": "config",
          "fieldGroup": null,
          "fieldClass": null,
          "fieldAddOn": null,
          "fieldComponent": null,
          "placeHolder": null,
          "helpBlock": "The subnet's address range in CIDR notation (e.g. 192.168.1.0/24). It must be contained by the address space of the virtual network.",
          "defaultValue": null,
          "optionSource": null,
          "type": "text",
          "advanced": false,
          "required": true,
          "editable": false,
          "creatable": true,
          "config": {
          },
          "displayOrder": 4,
          "wrapperClass": null,
          "enabled": true,
          "noBlank": false,
          "dependsOnCode": null,
          "contextualDefault": false
        }
      ]
    },
    {
      "id": 50,
      "code": "azureSubnet",
      "name": "Subnet",
      "description": "",
      "category": null,
      "externalType": null,
      "creatable": false,
      "overlay": false,
      "nameEditable": false,
      "cidrEditable": false,
      "dhcpServerEditable": false,
      "dnsEditable": false,
      "gatewayEditable": false,
      "vlanIdEditable": false,
      "canAssignPool": false,
      "deletable": false,
      "optionTypes": [

      ]
    }
  ],
  "meta": {
    "size": 25,
    "total": 52,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves all Network Types. The sample response has been abbreviated.

### HTTP Request

`GET https://api.gomorpheus.com/api/network-types`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | If specified will return an exact match on name
code |  | If specified will return an exact match on code
phrase |  | If specified will return a partial match on name

## Get a Specific Network


```shell
curl "$MORPHEUS_API_URL/api/network-types/9" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkType": {
    "id": 9,
    "code": "amazonSubnet",
    "name": "Amazon Subnet",
    "description": "",
    "category": "amazon",
    "externalType": null,
    "creatable": true,
    "overlay": false,
    "nameEditable": false,
    "cidrEditable": false,
    "dhcpServerEditable": false,
    "dnsEditable": false,
    "gatewayEditable": false,
    "vlanIdEditable": false,
    "canAssignPool": false,
    "deletable": true,
    "optionTypes": [
      {
        "id": 1022,
        "name": "availabilityZone",
        "code": "network.amazon.availabilityZone",
        "description": null,
        "fieldName": "availabilityZone",
        "fieldLabel": "Availability Zone",
        "fieldContext": "domain",
        "fieldGroup": null,
        "fieldClass": null,
        "fieldAddOn": null,
        "fieldComponent": null,
        "placeHolder": null,
        "helpBlock": "",
        "defaultValue": null,
        "optionSource": "amazonAvailabilityZones",
        "type": "select",
        "advanced": false,
        "required": false,
        "editable": true,
        "creatable": true,
        "config": {
        },
        "displayOrder": 32,
        "wrapperClass": null,
        "enabled": true,
        "noBlank": false,
        "dependsOnCode": null,
        "contextualDefault": false
      },
      {
        "id": 1015,
        "name": "assignPublicIp",
        "code": "network.global.assignPublicIp",
        "description": null,
        "fieldName": "assignPublicIp",
        "fieldLabel": "Assign Public",
        "fieldContext": "domain",
        "fieldGroup": null,
        "fieldClass": null,
        "fieldAddOn": null,
        "fieldComponent": null,
        "placeHolder": null,
        "helpBlock": "",
        "defaultValue": null,
        "optionSource": null,
        "type": "checkbox",
        "advanced": false,
        "required": false,
        "editable": true,
        "creatable": true,
        "config": {
        },
        "displayOrder": 33,
        "wrapperClass": null,
        "enabled": true,
        "noBlank": false,
        "dependsOnCode": null,
        "contextualDefault": false
      },
      {
        "id": 871,
        "name": "cidr",
        "code": "network.global.cidr",
        "description": null,
        "fieldName": "cidr",
        "fieldLabel": "cidr",
        "fieldContext": "domain",
        "fieldGroup": null,
        "fieldClass": null,
        "fieldAddOn": null,
        "fieldComponent": null,
        "placeHolder": null,
        "helpBlock": "",
        "defaultValue": null,
        "optionSource": null,
        "type": "text",
        "advanced": false,
        "required": true,
        "editable": true,
        "creatable": true,
        "config": {
        },
        "displayOrder": 10,
        "wrapperClass": null,
        "enabled": true,
        "noBlank": false,
        "dependsOnCode": null,
        "contextualDefault": false
      },
      {
        "id": 1014,
        "name": "zonePool",
        "code": "network.global.zonePool",
        "description": null,
        "fieldName": "zonePool.id",
        "fieldLabel": "VPC",
        "fieldContext": "domain",
        "fieldGroup": null,
        "fieldClass": null,
        "fieldAddOn": null,
        "fieldComponent": null,
        "placeHolder": null,
        "helpBlock": "",
        "defaultValue": null,
        "optionSource": "zonePoolsId",
        "type": "select",
        "advanced": false,
        "required": true,
        "editable": true,
        "creatable": true,
        "config": {
        },
        "displayOrder": 31,
        "wrapperClass": null,
        "enabled": true,
        "noBlank": false,
        "dependsOnCode": null,
        "contextualDefault": false
      }
    ]
  }
}
```

This endpoint retrieves a specific Network Type.


### HTTP Request

`GET https://api.gomorpheus.com/api/network-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Type to retrieve
