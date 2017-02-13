# Provisioning

Provisioning options will depend heavily on the cloud you are provisioning to.  This section is broken out into options based on the instance-type that is being created.

## Provision an Instance

```shell
curl -X POST "https://api.gomorpheus.com/api/instances" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{
  "zoneId": 6,
  "instance": {
    "name": "api-testing2",
    "site": {
      "id": 3
    },
    "instanceType": {
      "code": "Ubuntu"
    },
    "layout": {
      "id": 105
    }
  },
  "servicePlan": 11,
  "servicePlanId": 11,
  "volumes": [
    {
      "id": -1,
      "rootVolume": true,
      "name": "root",
      "size": 10,
      "sizeId": null,
      "storageType": 1,
      "datastoreId": "auto"
    },
    {
      "id": -1,
      "rootVolume": false,
      "name": "data",
      "size": 5,
      "sizeId": null,
      "storageType": 1,
      "datastoreId": "auto"
    }
  ],
  "networkInterfaces": [
    {
      "network": {
        "id": 5
      },
      "networkInterfaceTypeId": 4
    }
  ],
  "publicKeyId": 14,
  "vmwareResourcePoolId": "resgroup-56",
  "hostId": null,
  "vmwareUsr": "morpheus-api",
  "vmwarePwd": "password",
  "vmwareDomainName": null,
  "vmwareCustomSpec": null
}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single check 

### HTTP Request

`POST https://api.gomorpheus.com/api/instances`

### JSON Instance Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
instance  | Y | n/a | Key for name, site, instanceType and layout
name | Y | null | Name of the instance to be created
site | Y | null | The group ID to provision the instance into
instanceType | Y | null | The type of instance by code we want to fetch
servicePlanId | Y | null | Service plans designate layout and capacity
layout |  Y | null | The layout id for the instance type that you want to provision. i.e. single process or cluster
servicePlan | Y | null | The id for the memory and storage option pre-configured within Morpheus
zoneId | Y | null | The Cloud ID to provision the instance onto

### JSON Instance Parameters VMware Specific

Parameter | Required | Default | Description
--------- | -------- | ------- | ------------
volumes | Y | n/a | Key for LV configuration, can create additional LVs at provision
id | N | -1 | The id for the LV configuration being created
rootVolume | N | true | If set to false then a non-root LV will be created
name | Y | root | Name/type of the LV being created
size | N | servicePlanId size | Size of the LV to be created in GBs
sizeId | N | null | Can be used to select pre-existing LV choices from Morpheus
storageType | N | null | Identifier for LV type
datastoreId | Y | null | The ID of the specific datastore 
servicePlanOptions | N | null | Map of custom options depending on selected service plan . An example would be `maxMemory`, or `maxCores`.
publicKeyId | N | null | ID of a public key to add to the instance
vmwareResroucePoolId | Y | null | ID of the resource group to use for instance
hostId | N | null | Specific host to deploy to if so desired
vmwareUsr | N | null | Additional user to provision to instance
vmwarePwd | N | null | Password for additional user
vmwareDomainName | N | null | Domain name to be given to instance
vmwareCustomSpec | N | null | Customization spec ID



There can be additional properties to apply to the instance. For example mysql provisioning requires a set of initial credentials. You can get a list of what these input options are by fetching the instance-types list via the `instance-types` api and getting available layouts as well as the provision type option types associated with the layout. Currently these input options are available from the option-types map. These however, can be overridden in the event a config options map exists on the layout object within. **NOTE**: See the API Document on OptionTypes for figuring out how to build property maps from them.