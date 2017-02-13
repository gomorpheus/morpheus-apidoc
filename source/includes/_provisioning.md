# Provisioning

Provisioning options will depend heavily on the cloud you are provisioning to.  This section is broken out into options based on the instance-type that is being created.

## Provision an Instance

```shell
curl -X POST "https://api.gomorpheus.com/api/instances" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{
  "servicePlanId": 5,
  "zoneId": 6,
  "instance": {
    "name": "api-test",
    "site": {
      "id": 3
    },
    "instanceType": {
      "code": "Ubuntu"
    },
    "layout": {
      "id": 104
    }
  },
  "volumes": [
    {
      "id": -1,
      "rootVolume": true,
      "name": "root",
      "size": 10,
      "sizeId": null,
      "storageType": null,
      "datastoreId": null
    }
  ],
  "servicePlanOptions": {
  }
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
volumes | N | n/a | Key for additional LV configuration, can create additional LVs at provision
id | N | -1 | The id for the LV configuration being created
rootVolume | N | true | If set to false then a non-root LV will be created
name | N | root | Name of the LV being created
size | N | servicePlan size | Size of the LV to be created in GBs
sizeId | N | null | Can be used to select pre-existing LV choices from Morpheus
storageType | N | null | Identifier for LV type (e.g. Local, S3, etc...)
datastoreId | N | null | The ID of the specific datastore
servicePlanOptions | N | null | Map of custom options depending on selected service plan . An example would be `maxMemory`, or `maxCores`.


There can be additional properties to apply to the instance. For example mysql provisioning requires a set of initial credentials. You can get a list of what these input options are by fetching the instance-types list via the `instance-types` api and getting available layouts as well as the provision type option types associated with the layout. Currently these input options are available from the option-types map. These however, can be overridden in the event a config options map exists on the layout object within. **NOTE**: See the API Document on OptionTypes for figuring out how to build property maps from them.