# Virtual Images

Virtual Images can be managed via the API.


## Get List of Virtual Images

```shell
curl "<%= curl_url %>/api/virtual-images"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "virtualImages": [
    {
      "id": 470,
      "name": "<%= application_name %> MongoDB 3.2 on Ubuntu 14.04.3 v2",
      "description": null,
      "ownerId": null,
      "tenant": null,
      "imageType": "ovf",
      "userUploaded": false,
      "userDefined": false,
      "systemImage": true,
      "isCloudInit": true,
      "sshUsername": "ubuntu",
      "sshPassword": "************",
      "sshKey": null,
      "osType": {
        "id": 5,
        "code": "ubuntu.14.04.64",
        "name": "ubuntu 14 64-bit",
        "description": null,
        "vendor": "canonical",
        "category": "ubuntu",
        "osFamily": "debian",
        "osVersion": "14.04",
        "bitCount": 64,
        "platform": "linux"
      },
      "minRam": null,
      "minRamGB": null,
      "minDisk": 2147483648,
      "minDiskGB": 2,
      "rawSize": null,
      "rawSizeGB": null,
      "trialVersion": false,
      "virtioSupported": true,
      "isAutoJoinDomain": null,
      "vmToolsInstalled": true,
      "installAgent": true,
      "isForceCustomization": null,
      "isSysprep": null,
      "userData": null,
      "consoleKeymap": null,
      "guestConsoleType": null,
      "guestConsoleUsername": null,
      "guestConsolePassword": null,
      "guestConsolePasswordHash": null,
      "guestConsolePort": null,
      "linkedClone": false,
      "storageProvider": null,
      "externalId": null,
      "visibility": "private",
      "accounts": [

      ],
      "config": {
      },
      "volumes": [
        {
          "name": "root",
          "maxStorage": 2147483648,
          "rawSize": 2147483648,
          "size": 2,
          "rootVolume": true,
          "resizeable": true
        }
      ],
      "storageControllers": [
        {
          "name": "SCSI 0",
          "type": {
            "id": 4,
            "code": "vmware-lsiLogic",
            "name": "SCSI LSI Logic Parallel"
          },
          "maxDevices": 15,
          "reservedUnitNumber": 7
        },
        {
          "name": "IDE 0",
          "type": {
            "id": 2,
            "code": "vmware-ide",
            "name": "IDE"
          },
          "maxDevices": 2,
          "reservedUnitNumber": -1
        },
        {
          "name": "IDE 1",
          "type": {
            "id": 2,
            "code": "vmware-ide",
            "name": "IDE"
          },
          "maxDevices": 2,
          "reservedUnitNumber": -1
        }
      ],
      "networkInterfaces": [
        {
          "name": "eth0",
          "description": null,
          "dhcp": true,
          "primaryInterface": true,
          "type": {
            "id": 2,
            "code": "e1000",
            "name": "E1000"
          },
          "ipMode": null
        }
      ],
      "tags": [

      ],
      "dateCreated": null,
      "lastUpdated": null,
      "status": "Active"
    }
  ],
  "filterType": "User",
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 25,
    "total": 43
  }
}
```

This endpoint retrieves a list of virtual images for the specified filter.

### HTTP Request

`GET <%= api_url %>/api/virtual-images`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
name |  | Filter by name
phrase |  | Filter by wildcard search of name
lastUpdated |  | Date filter, restricts query to only records with a timestamp is more recent or equal to the date specified
filterType | "User" | Filter by type, "User", "System", "Synced", or "All"
imageType |  | Filter by image type code, "vmware", "ami", etc
tags |  | Filter by tags (metadata). This allows filtering by arbitrary tag names and values like this `tags.foo=bar`.

## Get a Specific Virtual Image


```shell
curl "<%= curl_url %>/api/virtual-images/764" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "virtualImage": {
    "id": 470,
    "name": "<%= application_name %> MongoDB 3.2 on Ubuntu 14.04.3 v2",
    "description": null,
    "ownerId": null,
    "tenant": null,
    "imageType": "ovf",
    "userUploaded": false,
    "userDefined": false,
    "systemImage": true,
    "isCloudInit": true,
    "sshUsername": "ubuntu",
    "sshPassword": "************",
    "sshKey": null,
    "osType": {
      "id": 5,
      "code": "ubuntu.14.04.64",
      "name": "ubuntu 14 64-bit",
      "description": null,
      "vendor": "canonical",
      "category": "ubuntu",
      "osFamily": "debian",
      "osVersion": "14.04",
      "bitCount": 64,
      "platform": "linux"
    },
    "minRam": null,
    "minRamGB": null,
    "minDisk": 2147483648,
    "minDiskGB": 2,
    "rawSize": null,
    "rawSizeGB": null,
    "trialVersion": false,
    "virtioSupported": true,
    "isAutoJoinDomain": null,
    "vmToolsInstalled": true,
    "installAgent": true,
    "isForceCustomization": null,
    "isSysprep": null,
    "userData": null,
    "consoleKeymap": null,
    "guestConsoleType": null,
    "guestConsoleUsername": null,
    "guestConsolePassword": null,
    "guestConsolePasswordHash": null,
    "guestConsolePort": null,
    "linkedClone": false,
    "storageProvider": null,
    "externalId": null,
    "visibility": "private",
    "accounts": [

    ],
    "config": {
    },
    "volumes": [
      {
        "name": "root",
        "maxStorage": 2147483648,
        "rawSize": 2147483648,
        "size": 2,
        "rootVolume": true,
        "resizeable": true
      }
    ],
    "storageControllers": [
      {
        "name": "SCSI 0",
        "type": {
          "id": 4,
          "code": "vmware-lsiLogic",
          "name": "SCSI LSI Logic Parallel"
        },
        "maxDevices": 15,
        "reservedUnitNumber": 7
      },
      {
        "name": "IDE 0",
        "type": {
          "id": 2,
          "code": "vmware-ide",
          "name": "IDE"
        },
        "maxDevices": 2,
        "reservedUnitNumber": -1
      },
      {
        "name": "IDE 1",
        "type": {
          "id": 2,
          "code": "vmware-ide",
          "name": "IDE"
        },
        "maxDevices": 2,
        "reservedUnitNumber": -1
      }
    ],
    "networkInterfaces": [
      {
        "name": "eth0",
        "description": null,
        "dhcp": true,
        "primaryInterface": true,
        "type": {
          "id": 2,
          "code": "e1000",
          "name": "E1000"
        },
        "ipMode": null
      }
    ],
    "tags": [

    ],
    "dateCreated": null,
    "lastUpdated": null,
    "status": "Active"
  }
}
```

This endpoint retrieves a specific virtual image and its files.

### HTTP Request

`GET <%= api_url %>/api/virtual-images/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the virtual image

## Create a Virtual Image

```shell
curl -XPOST "<%= curl_url %>/api/virtual-images" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"virtualImage":{
    "name": "testimage2",
    "imageType": "vmware",
    "isCloudInit": true,
    "installAgent": true,
    "sshUsername": "root",
    "sshPassword": "mygoodpassword123",
    "sshKey": null,
    "osType": {
      "id": 9
    },
    "guestConsoleType": "auto",
    "guestConsoleUsername": null,
    "guestConsolePassword": null,
    "guestConsolePort": null,
    "linkedClone": false,
    "virtioSupported": true,
    "vmToolsInstalled": true,
    "config": {
    }
  }}'
```

> The above command returns JSON structured like getting a single virtual image.

This endpoint creates a new virtual image, without any files yet.

### HTTP Request

`POST <%= api_url %>/api/virtual-images`

### JSON Virtual Image Parameters

Parameter | Default | Description
--------- | ------- | -----------
name  |  | A name for the virtual image
imageType  |  | Code of image type. eg. vmware, ami, etc.
storageProvider |  | A Map containing the id of the Storage Provider
isCloudInit | false | Cloud Init Enabled? true or false
userData |  | Cloud-Init User Data, a bash script
installAgent | false | Install Agent? true or false
sshUsername |  | SSH Username
sshPassword |  | SSH Password
sshKey |  | SSH Key
osType |  | A Map containing the id of the OS Type. This can also be passed as a string (code or name) instead.
visibility | "private" | private or public
accounts  |  | Array of tenant account ids that are allowed access.
isAutoJoinDomain | false | Auto Join Domain?
virtioSupported | true | VirtIO Drivers Loaded?
vmToolsInstalled | true | VM Tools Installed?
isForceCustomization | false | Force Guest Customization?
trialVersion | false | Trial Version
isSysprep | false | Sysprep Enabled?
config |  | Map of configuration properties, varies by image type. See below for more information
tags |  | Metadata tags, Array of objects having a name and value
guestConsoleType | auto | The Type of guest console this vm provides such as auto, disabled, vnc, rdp, ssh
guetConsoleUsername | | The optional guest console username if you dont want to use the user defaults
guestConsolePassword | | The optional guest console password if not using the accessing users creds
guestConsolePort | | The port the guest console is being accessed from

## Create an Azure Reference Virtual Image

```shell
curl -XPOST "<%= curl_url %>/api/virtual-images" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"virtualImage":{
    "name": "azure-nginx-test",
    "imageType": "azure-reference",
    "isCloudInit": true,
    "installAgent": true,
    "sshUsername": "root",
    "sshPassword": "mygoodpassword123",
    "sshKey": null,
    "osType": {
      "id": 9
    },
    "config": {
      "publisher": "miri-infotech-pvt-ltd",
      "offer": "Nginx",
      "sku": "nginx",
      "version": "1.1.1"
    },
    "tags": [
      {"name": "Category", "value": "Web"}
    ]
  }}'
```

> The above command returns JSON structured like getting a single virtual image.

This endpoint creates a new Azure Reference virtual image.

### HTTP Request

`POST <%= api_url %>/api/virtual-images`

### Azure Reference Virtual Image Parameters

Same as [Create](#create-a-virtual-image).

#### Azure Reference Config Parameters

Creating a virtual image of type Azure Reference requires the following settings to be passed under `config`.

Parameter | Default | Description
--------- | ------- | -----------
publisher  |  | The name of the publisher in the Azure Marketplace
offer  |  | The name of the offer in the Azure Marketplace
sku  |  | The name of the version in the Azure Marketplace
version  |  | The name of the version in the Azure Marketplace

## Upload Virtual Image File

```shell
curl -XPOST "<%= curl_url %>/api/virtual-images/765/upload?filename=disk-0.vmdk" \
  -H "Authorization: BEARER <%= curl_token %>" \
  --data-binary '@/path/to/file'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will upload the file and associate it to the Virtual Image.

### HTTP Request

`POST <%= api_url %>/api/virtual-images/:id/upload`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the virtual image

### Query Parameters

Parameter | Description
--------- | -----------
url | Download the file from a remote url. This can be used instead of uploading a local file.
filename | Specify a filename for new file.

## Remove Virtual Image File

```shell
curl -XDELETE "<%= curl_url %>/api/virtual-images/765/files?filename=testimage.ovf" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE <%= api_url %>/api/virtual-images/:id/files?filename=`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the virtual image

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
filename  |  | The name of the file to be deleted

## Update a Virtual Image

```shell
curl -XPUT "<%= curl_url %>/api/virtual-images/:id" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"virtualImage":{
    "installAgent": true,
    "sshUsername": "root",
    "sshPassword": "aGreatpassword12345!"
    "addTags": [
      {"name": "Category", "value": "Cache"}
    ],
    "removeTags": [
      {"name": "OldThing"}
    ]
  }}'
```

> The above command returns JSON structured like getting a single virtual image.

This endpoint updates an existing virtual image.

### HTTP Request

`PUT <%= api_url %>/api/virtual-images/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the virtual image

### JSON Update Virtual Image Parameters

Parameter | Default | Description
--------- | ------- | -----------
name  |  | A name for the virtual image
imageType  |  | Code of image type. eg. vmware, ami, etc.
storageProvider |  | A Map containing the id of the Storage Provider
isCloudInit | false | Cloud Init Enabled? true or false
userData |  | Cloud-Init User Data, a bash script
installAgent | false | Install Agent? true or false
sshUsername |  | SSH Username
sshPassword |  | SSH Password
sshKey |  | SSH Key
osType |  | A Map containing the id of the OS Type. This can also be passed as a string (code or name) instead.
visibility | "private" | private or public
accounts  |  | Array of tenant account ids that are allowed access.
isAutoJoinDomain | false | Auto Join Domain?
virtioSupported | true | VirtIO Drivers Loaded?
vmToolsInstalled | true | VM Tools Installed?
isForceCustomization | false | Force Guest Customization?
trialVersion | false | Trial Version
isSysprep | false | Sysprep Enabled?
config |  | Map of configuration properties, varies by image type. See below for more information
tags |  | Metadata tags, Array of objects having a name and value, this adds or updates the specified tags and removes any tags not specified.
addTags |  | Add or update value of Metadata tags, Array of objects having a name and value
removeTags |  | Remove Metadata tags, Array of objects having a name and an optional value. If value is passed, it must match to be removed.
guestConsoleType | auto | The Type of guest console this vm provides such as auto, disabled, vnc, rdp, ssh
guetConsoleUsername | | The optional guest console username if you dont want to use the user defaults
guestConsolePassword | | The optional guest console password if not using the accessing users creds
guestConsolePort | | The port the guest console is being accessed from

## Delete a Virtual Image

```shell
curl -XDELETE "<%= curl_url %>/api/virtual-images/765" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a virtual image and any associated files, use `removeFromCloud=true` to also delete image locations from all clouds.

### HTTP Request

`DELETE <%= api_url %>/api/virtual-images/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the virtual image

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
removeFromCloud | false | Remove from all clouds, all the image locations will be deleted from the cloud as well.

## Get a List of Virtual Image Locations


```shell
curl "<%= curl_url %>/api/virtual-images/17600/locations" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "locations": [
    {
      "id": 796792,
      "cloud": {
        "id": 39,
        "code": "dev-amazon",
        "name": "dev-amazon"
      },
      "code": "amazon.ec2.image.39.ami-04d00cc409aeccd32",
      "internalId": null,
      "externalId": "ami-04d00cc409aeccd32",
      "externalDiskId": "snap-0ad5833d9dcc3ce1f",
      "remotePath": null,
      "imagePath": null,
      "imageName": "CentOS-8.2-x86_64-Minimal-8GiB-HVM-20200616_131752-84a857fb-30b1-429f-8e92-3065cf289a61-ami-07f119b85966cd8a5.4",
      "imageRegion": "us-west-1",
      "imageFolder": null,
      "refType": "ComputeZone",
      "refId": 39,
      "nodeRefType": null,
      "nodeRefId": null,
      "subRefType": null,
      "subRefId": null,
      "isPublic": false,
      "systemImage": false,
      "diskIndex": 0,
      "pricePlan": null,
      "volumes": [

      ],
      "storageControllers": [

      ],
      "networkInterfaces": [

      ],
      "virtualImage": {
        "id": 17600,
        "code": "amazon.ec2.image.39.ami-04d00cc409aeccd32",
        "name": "CentOS-8.2-x86_64-Minimal-8GiB-HVM-20200616_131752-84a857fb-30b1-429f-8e92-3065cf289a61-ami-07f119b85966cd8a5.4",
        "imageType": "ami"
      }
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 1,
    "total": 1
  }
}
```

This endpoint retrieves a specific virtual image and its files.

### HTTP Request

`GET <%= api_url %>/api/virtual-images/:id/locations`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the virtual image

## Delete a Virtual Image Location

```shell
curl -XDELETE "<%= curl_url %>/api/virtual-images/17600/locations/796792" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a virtual image location, use `removeFromCloud=true` to all also delete image locations from all clouds as well.

### HTTP Request

`DELETE <%= api_url %>/api/virtual-images/:id/locations/:locationId`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the virtual image
locationId | ID of the virtual image location

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
removeFromCloud | false | Remove from cloud, the location will be deleted from the cloud as well.
