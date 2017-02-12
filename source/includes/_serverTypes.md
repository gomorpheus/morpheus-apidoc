# Server Types

Provides an API endpoint to list the different server types available in the system. This endpoint also provides a list of optionTypes which specifies the template necessary to create one of these servers.
.
## Get All Server Types

```shell
curl "https://api.gomorpheus.com/api/server-types"
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this

```json
{
{
  "serverTypes": [
    {
      "code": "vmwareVm",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": false,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": null,
      "id": 11,
      "managed": true,
      "name": "Vmware Instance",
      "nodeType": "morpheus-vm-node",
      "optionTypes": [
        
      ],
      "platform": "linux",
      "selectable": false,
      "vmHypervisor": null
    },
    {
      "code": "vmwareWindowsVm",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": false,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": null,
      "id": 12,
      "managed": true,
      "name": "Vmware Instance",
      "nodeType": "morpheus-windows-vm-node",
      "optionTypes": [
        
      ],
      "platform": "windows",
      "selectable": false,
      "vmHypervisor": null
    },
    {
      "code": "amazonLinux",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": true,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": null,
      "id": 19,
      "managed": true,
      "name": "Amazon Linux Node",
      "nodeType": "morpheus-node",
      "optionTypes": [
        {
          "defaultValue": null,
          "fieldContext": null,
          "fieldNmae": "imageType",
          "name": "imageType",
          "required": true,
          "type": "radio"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "imageId",
          "name": "imageType",
          "required": true,
          "type": "selectAmazonImage"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "publicKeyId",
          "name": "publicKeyId",
          "required": true,
          "type": "keyPairSelect"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "templateTypeSelect",
          "name": "templateTypeSelect",
          "required": true,
          "type": "radio"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "publicImageId",
          "name": "imageType",
          "required": true,
          "type": "text"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "diskSize",
          "name": "diskSize",
          "required": true,
          "type": "text"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "flavorId",
          "name": "flavorId",
          "required": true,
          "type": "selectAmazonFlavor"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "availabilityId",
          "name": "availabilityId",
          "required": true,
          "type": "selectAmazonZone"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "amazonUsr",
          "name": "amazonUsr",
          "required": true,
          "type": "text"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "securityId",
          "name": "securityId",
          "required": true,
          "type": "selectAmazonSecurityGroup"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "subnetId",
          "name": "imageType",
          "required": true,
          "type": "selectAmazonSubnet"
        }
      ],
      "platform": "linux",
      "selectable": false,
      "vmHypervisor": null
    },
    {
      "code": "esxiVm",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": false,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": true,
      "id": 26,
      "managed": true,
      "name": "ESXi Instance",
      "nodeType": "morpheus-vm-node",
      "optionTypes": [
        
      ],
      "platform": "linux",
      "selectable": false,
      "vmHypervisor": null
    },
    {
      "code": "esxiWindowsVm",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": false,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": true,
      "id": 27,
      "managed": true,
      "name": "ESXi Instance",
      "nodeType": "morpheus-windows-vm-node",
      "optionTypes": [
        
      ],
      "platform": "windows",
      "selectable": false,
      "vmHypervisor": null
    },
    {
      "code": "nutanixVm",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": false,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": true,
      "id": 29,
      "managed": true,
      "name": "Nutanix Instance",
      "nodeType": "morpheus-vm-node",
      "optionTypes": [
        
      ],
      "platform": "linux",
      "selectable": false,
      "vmHypervisor": null
    },
    {
      "code": "nutanixWindowsVm",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": false,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": true,
      "id": 30,
      "managed": true,
      "name": "Nutanix Instance",
      "nodeType": "morpheus-windows-vm-node",
      "optionTypes": [
        
      ],
      "platform": "windows",
      "selectable": false,
      "vmHypervisor": null
    }
}
```

### HTTP Request

`GET https://api.gomorpheus.com/api/server-types`

## Get Specific Server Type

```shell
curl "https://api.gomorpheus.com/api/server-types/1"
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this

```json
{
  "success": true,
  {
  "serverTypes": [
    {
      "code": "vmwareVm",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": false,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": null,
      "id": 11,
      "managed": true,
      "name": "Vmware Instance",
      "nodeType": "morpheus-vm-node",
      "optionTypes": [
        
      ],
      "platform": "linux",
      "selectable": false,
      "vmHypervisor": null
    },
    {
      "code": "vmwareWindowsVm",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": false,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": null,
      "id": 12,
      "managed": true,
      "name": "Vmware Instance",
      "nodeType": "morpheus-windows-vm-node",
      "optionTypes": [
        
      ],
      "platform": "windows",
      "selectable": false,
      "vmHypervisor": null
    },
    {
      "code": "amazonLinux",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": true,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": null,
      "id": 19,
      "managed": true,
      "name": "Amazon Linux Node",
      "nodeType": "morpheus-node",
      "optionTypes": [
        {
          "defaultValue": null,
          "fieldContext": null,
          "fieldNmae": "imageType",
          "name": "imageType",
          "required": true,
          "type": "radio"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "imageId",
          "name": "imageType",
          "required": true,
          "type": "selectAmazonImage"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "publicKeyId",
          "name": "publicKeyId",
          "required": true,
          "type": "keyPairSelect"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "templateTypeSelect",
          "name": "templateTypeSelect",
          "required": true,
          "type": "radio"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "publicImageId",
          "name": "imageType",
          "required": true,
          "type": "text"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "diskSize",
          "name": "diskSize",
          "required": true,
          "type": "text"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "flavorId",
          "name": "flavorId",
          "required": true,
          "type": "selectAmazonFlavor"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "availabilityId",
          "name": "availabilityId",
          "required": true,
          "type": "selectAmazonZone"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "amazonUsr",
          "name": "amazonUsr",
          "required": true,
          "type": "text"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "securityId",
          "name": "securityId",
          "required": true,
          "type": "selectAmazonSecurityGroup"
        },
        {
          "defaultValue": null,
          "fieldContext": "config",
          "fieldNmae": "subnetId",
          "name": "imageType",
          "required": true,
          "type": "selectAmazonSubnet"
        }
      ],
      "platform": "linux",
      "selectable": false,
      "vmHypervisor": null
    },
    {
      "code": "esxiVm",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": false,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": true,
      "id": 26,
      "managed": true,
      "name": "ESXi Instance",
      "nodeType": "morpheus-vm-node",
      "optionTypes": [
        
      ],
      "platform": "linux",
      "selectable": false,
      "vmHypervisor": null
    },
    {
      "code": "esxiWindowsVm",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": false,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": true,
      "id": 27,
      "managed": true,
      "name": "ESXi Instance",
      "nodeType": "morpheus-windows-vm-node",
      "optionTypes": [
        
      ],
      "platform": "windows",
      "selectable": false,
      "vmHypervisor": null
    },
    {
      "code": "nutanixVm",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": false,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": true,
      "id": 29,
      "managed": true,
      "name": "Nutanix Instance",
      "nodeType": "morpheus-vm-node",
      "optionTypes": [
        
      ],
      "platform": "linux",
      "selectable": false,
      "vmHypervisor": null
    },
    {
      "code": "nutanixWindowsVm",
      "containerHypervisor": null,
      "controlPower": true,
      "controlSuspend": true,
      "creatable": false,
      "description": "",
      "displayOrder": 0,
      "enabled": true,
      "hasAgent": true,
      "id": 30,
      "managed": true,
      "name": "Nutanix Instance",
      "nodeType": "morpheus-windows-vm-node",
      "optionTypes": [
        
      ],
      "platform": "windows",
      "selectable": false,
      "vmHypervisor": null
    }
}
```
### HTTP Request

`GET https://api.gomorpheus.com/api/server-types/:id`

