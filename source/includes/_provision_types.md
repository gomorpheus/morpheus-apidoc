<!-- ## Provision Types -->

## Get All Provision Types


Fetch the list of available provision types.

```shell
curl "<%= curl_url %>/api/provision-types"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this

```json
{
    "provisionTypes": [
        {
            "id": 9,
            "name": "Amazon",
            "description": null,
            "code": "amazon",
            "aclEnabled": false,
            "multiTenant": false,
            "managed": true,
            "hostNetwork": true,
            "customSupported": false,
            "mapPorts": false,
            "exportServer": null,
            "viewSet": "amazonCustom",
            "serverType": "ami",
            "hostType": "vm",
            "addVolumes": true,
            "hasDatastore": false,
            "hasNetworks": null,
            "maxNetworks": null,
            "customizeVolume": true,
            "rootDiskCustomizable": true,
            "lvmSupported": true,
            "hostDiskMode": "lvm",
            "minDisk": 0,
            "maxDisk": null,
            "resizeCopiesVolumes": true,
            "optionTypes": [
                {
                    "name": "subnet",
                    "description": null,
                    "fieldName": "subnetId",
                    "fieldLabel": "Subnet",
                    "fieldContext": "config",
                    "fieldAddOn": null,
                    "placeHolder": null,
                    "helpBlock": "",
                    "defaultValue": null,
                    "optionSource": "amazonSubnet",
                    "type": "select",
                    "advanced": false,
                    "required": true,
                    "editable": false,
                    "config": [],
                    "displayOrder": 100
                },
                {
                    "name": "security group",
                    "description": null,
                    "fieldName": "securityId",
                    "fieldLabel": "Security Group",
                    "fieldContext": "config",
                    "fieldAddOn": null,
                    "placeHolder": null,
                    "helpBlock": "",
                    "defaultValue": null,
                    "optionSource": "amazonSecurityGroup",
                    "type": "select",
                    "advanced": false,
                    "required": true,
                    "editable": false,
                    "config": [],
                    "displayOrder": 101
                },
                {
                    "name": "public key",
                    "description": null,
                    "fieldName": "publicKeyId",
                    "fieldLabel": "Public Key",
                    "fieldContext": "config",
                    "fieldAddOn": null,
                    "placeHolder": null,
                    "helpBlock": "",
                    "defaultValue": null,
                    "optionSource": "keyPairs",
                    "type": "select",
                    "advanced": false,
                    "required": false,
                    "editable": false,
                    "config": [],
                    "displayOrder": 9
                }
            ],
            "customOptionTypes": [],
            "networkTypes": [],
            "storageTypes": [
                {
                    "id": 7,
                    "code": "amazon-sc1",
                    "name": "sc1",
                    "displayOrder": 4,
                    "defaultType": false,
                    "customLabel": true,
                    "customSize": true,
                    "customSizeOptions": null
                },
                {
                    "id": 4,
                    "code": "amazon-io1",
                    "name": "io1",
                    "displayOrder": 2,
                    "defaultType": false,
                    "customLabel": true,
                    "customSize": true,
                    "customSizeOptions": null
                },
                {
                    "id": 5,
                    "code": "amazon-gp2",
                    "name": "gp2",
                    "displayOrder": 1,
                    "defaultType": true,
                    "customLabel": true,
                    "customSize": true,
                    "customSizeOptions": null
                },
                {
                    "id": 6,
                    "code": "amazon-st1",
                    "name": "st1",
                    "displayOrder": 3,
                    "defaultType": false,
                    "customLabel": true,
                    "customSize": true,
                    "customSizeOptions": null
                }
            ],
            "rootStorageTypes": [
                {
                    "id": 7,
                    "code": "amazon-sc1",
                    "name": "sc1",
                    "displayOrder": 4,
                    "defaultType": false,
                    "customLabel": true,
                    "customSize": true,
                    "customSizeOptions": null
                },
                {
                    "id": 4,
                    "code": "amazon-io1",
                    "name": "io1",
                    "displayOrder": 2,
                    "defaultType": false,
                    "customLabel": true,
                    "customSize": true,
                    "customSizeOptions": null
                },
                {
                    "id": 5,
                    "code": "amazon-gp2",
                    "name": "gp2",
                    "displayOrder": 1,
                    "defaultType": true,
                    "customLabel": true,
                    "customSize": true,
                    "customSizeOptions": null
                },
                {
                    "id": 6,
                    "code": "amazon-st1",
                    "name": "st1",
                    "displayOrder": 3,
                    "defaultType": false,
                    "customLabel": true,
                    "customSize": true,
                    "customSizeOptions": null
                }
            ],
            "controllerTypes": []
        }
    ]
}
```

### HTTP Request

`GET <%= api_url %>/api/provision-types`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name and code, restricts query to only load provision types which contain the phrase specified
name |  | Name filter, restricts query to only load type matching name specified
code |  | Code filter, restricts query to only load type matching code specified

## Get Specific Provision Type

```shell
curl "<%= curl_url %>/api/provision-types/9"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this

```json
{
  "success": true,
  "provisionType": {
        "id": 9,
        "name": "Amazon",
        "description": null,
        "code": "amazon",
        "aclEnabled": false,
        "multiTenant": false,
        "managed": true,
        "hostNetwork": true,
        "customSupported": false,
        "mapPorts": false,
        "exportServer": null,
        "viewSet": "amazonCustom",
        "serverType": "ami",
        "hostType": "vm",
        "addVolumes": true,
        "hasDatastore": false,
        "hasNetworks": null,
        "maxNetworks": null,
        "customizeVolume": true,
        "rootDiskCustomizable": true,
        "lvmSupported": true,
        "hostDiskMode": "lvm",
        "minDisk": 0,
        "maxDisk": null,
        "resizeCopiesVolumes": true,
        "optionTypes": [
            {
                "name": "subnet",
                "description": null,
                "fieldName": "subnetId",
                "fieldLabel": "Subnet",
                "fieldContext": "config",
                "fieldAddOn": null,
                "placeHolder": null,
                "helpBlock": "",
                "defaultValue": null,
                "optionSource": "amazonSubnet",
                "type": "select",
                "advanced": false,
                "required": true,
                "editable": false,
                "config": [],
                "displayOrder": 100
            },
            {
                "name": "security group",
                "description": null,
                "fieldName": "securityId",
                "fieldLabel": "Security Group",
                "fieldContext": "config",
                "fieldAddOn": null,
                "placeHolder": null,
                "helpBlock": "",
                "defaultValue": null,
                "optionSource": "amazonSecurityGroup",
                "type": "select",
                "advanced": false,
                "required": true,
                "editable": false,
                "config": [],
                "displayOrder": 101
            },
            {
                "name": "public key",
                "description": null,
                "fieldName": "publicKeyId",
                "fieldLabel": "Public Key",
                "fieldContext": "config",
                "fieldAddOn": null,
                "placeHolder": null,
                "helpBlock": "",
                "defaultValue": null,
                "optionSource": "keyPairs",
                "type": "select",
                "advanced": false,
                "required": false,
                "editable": false,
                "config": [],
                "displayOrder": 9
            }
        ],
        "customOptionTypes": [],
        "networkTypes": [],
        "storageTypes": [
            {
                "id": 7,
                "code": "amazon-sc1",
                "name": "sc1",
                "displayOrder": 4,
                "defaultType": false,
                "customLabel": true,
                "customSize": true,
                "customSizeOptions": null
            },
            {
                "id": 4,
                "code": "amazon-io1",
                "name": "io1",
                "displayOrder": 2,
                "defaultType": false,
                "customLabel": true,
                "customSize": true,
                "customSizeOptions": null
            },
            {
                "id": 5,
                "code": "amazon-gp2",
                "name": "gp2",
                "displayOrder": 1,
                "defaultType": true,
                "customLabel": true,
                "customSize": true,
                "customSizeOptions": null
            },
            {
                "id": 6,
                "code": "amazon-st1",
                "name": "st1",
                "displayOrder": 3,
                "defaultType": false,
                "customLabel": true,
                "customSize": true,
                "customSizeOptions": null
            }
        ],
        "rootStorageTypes": [
            {
                "id": 7,
                "code": "amazon-sc1",
                "name": "sc1",
                "displayOrder": 4,
                "defaultType": false,
                "customLabel": true,
                "customSize": true,
                "customSizeOptions": null
            },
            {
                "id": 4,
                "code": "amazon-io1",
                "name": "io1",
                "displayOrder": 2,
                "defaultType": false,
                "customLabel": true,
                "customSize": true,
                "customSizeOptions": null
            },
            {
                "id": 5,
                "code": "amazon-gp2",
                "name": "gp2",
                "displayOrder": 1,
                "defaultType": true,
                "customLabel": true,
                "customSize": true,
                "customSizeOptions": null
            },
            {
                "id": 6,
                "code": "amazon-st1",
                "name": "st1",
                "displayOrder": 3,
                "defaultType": false,
                "customLabel": true,
                "customSize": true,
                "customSizeOptions": null
            }
        ],
        "controllerTypes": []
    }
}
```

### HTTP Request

`GET <%= api_url %>/api/provision-types/:id`
