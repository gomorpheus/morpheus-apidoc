# Virtual Images

Virtual Images can be managed via the API.


## Get List of Virtual Images

```shell
curl "https://api.gomorpheus.com/api/virtual-images"
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "virtualImages": [
    {
      "id": 764,
      "name": "testimage",
      "description": null,
      "ownerId": 1,
      "imageType": "vmware",
      "userUploaded": true,
      "userDefined": false,
      "systemImage": false,
      "isCloudInit": true,
      "sshUsername": "root",
      "sshPassword": "****",
      "sshKey": null,
      "osType": {
        "id": 9,
        "name": "ubuntu 64-bit",
        "description": null,
        "vendor": "canonical",
        "category": "ubuntu",
        "osFamily": "debian",
        "osVersion": "all",
        "bitCount": 64,
        "platform": "linux"
      },
      "minDisk": null,
      "minRam": null,
      "rawSize": 56077536,
      "trialVersion": false,
      "virtioSupported": true,
      "isAutoJoinDomain": false,
      "userData": null
    }
  ],
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

`GET https://api.gomorpheus.com/api/virtual-images`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
name | null | Filter by name
phrase | null | Filter by wildcard search of name
lastUpdated | null | Date filter, restricts query to only records with a timestamp is more recent or equal to the date specified
filterType | "User" | Filter by type, "User", "System" or "All"
imageType | null | Filter by image type code, "vmware", "ami", etc

## Get a Specific Virtual Image


```shell
curl "https://api.gomorpheus.com/api/virtual-images/764" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "virtualImage": {
    "id": 764,
    "name": "testimage",
    "description": null,
    "ownerId": 1,
    "imageType": "vmware",
    "userUploaded": true,
    "userDefined": false,
    "systemImage": false,
    "isCloudInit": true,
    "sshUsername": "root",
    "sshPassword": "****",
    "sshKey": null,
    "osType": {
      "id": 9,
      "name": "ubuntu 64-bit",
      "description": null,
      "vendor": "canonical",
      "category": "ubuntu",
      "osFamily": "debian",
      "osVersion": "all",
      "bitCount": 64,
      "platform": "linux"
    },
    "minDisk": null,
    "minRam": null,
    "rawSize": 56077536,
    "trialVersion": false,
    "virtioSupported": true,
    "isAutoJoinDomain": false,
    "userData": null
  },
  "cloudFiles": [
    {
      "name": "morpheus-virtual-images/764/testimage.vmdk",
      "size": 1034592
    },
    {
      "name": "morpheus-virtual-images/764/testimage.ovf",
      "size": 28038768
    }
  ]
}
```

This endpoint retrieves a specific virtual image and its files.

### HTTP Request

`GET https://api.gomorpheus.com/api/virtual-images/:id`


## Create a Virtual Image

```shell
curl -XPOST "https://api.gomorpheus.com/api/virtual-images" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{"virtualImage":{
    "name": "testimage2",
    "imageType": "vmware",
    "isCloudInit": true,
    "sshUsername": "root",
    "sshPassword": "mygoodpassword123",
    "sshKey": null,
    "osType": {
      "id": 9
    },
    "virtioSupported": true,
    "isAutoJoinDomain": false,
    "userData": null

  }}'
```

> The above command returns JSON structured like getting a single virtual image.

This endpoint creates a new virtual image, without any files yet.

### HTTP Request

`POST https://api.gomorpheus.com/api/virtual-images`

### JSON Virtual Image Parameters

Parameter | Default | Description
--------- | ------- | -----------
name  | null | A name for the virtual image
imageType  | null | Code of image type. eg. vmware, ami, etc.
storageProvider | null | A map containing the id of the Storage Provider
isCloudInit | "off" | Cloud Init Enabled? "on" or "off"
sshUsername | null | SSH Username
sshPassword | null | SSH Password
sshKey | null | SSK Key
osType | null | A Map containing the id of the OS Type
virtioSupported | "on" | VirtIO Drivers Loaded?
isAutoJoinDomain | "off" | Auto Join Domain?
userData | null | Cloud-Init User Data, a bash script

## Upload Virtual Image File

```shell
curl -XPOST "https://api.gomorpheus.com/api/virtual-images/765/upload" \
  -H "Authorization: BEARER access_token" \
  -F 'file=@filename'
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
}
```

This will upload the file and associate it to the Virtual Image.

### HTTP Request

`POST https://api.gomorpheus.com/api/virtual-images/:id/upload`

## Remove Virtual Image File

```shell
curl -XDELETE "https://api.gomorpheus.com/api/virtual-images/765/files?filename=" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
}
```

### HTTP Request

`DELETE https://api.gomorpheus.com/api/virtual-images/:id/files?filename=`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
filename  | null | The name of the file to be deleted

## Delete a Virtual Image

```shell
curl -XDELETE "https://api.gomorpheus.com/api/virtual-images/765" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a virtual image and any associated files.
