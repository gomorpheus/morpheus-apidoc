# Clouds

Clouds are a means of zoning various servers based on provisioning type or subnets. Typically an instance or host belongs to a cloud. The cloud holds the credentials necessary to provision virtual machines on the cloud provider's api.  Cloud provider types include: Openstack, Amazon AWS, Nutanix, VMWare vCenter, etc.  Of course, we also have the Standard cloud type which allows for manual vm procurement.

A Cloud may also be referred to as a *Zone* or *zone*.

## Get All Clouds

```shell
curl "$MORPHEUS_API_URL/api/zones"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "zones": [
    {
      "id": 1,
      "accountId": 1,
      "groupId": 1,
      "name": "Davids Laptop",
      "description": "My Laptop Vagrant",
      "location": null,
      "visibility": "public",
      "zoneTypeId": 1
    }
  ]
}
```

This endpoint retrieves all zones and a list of zones associated with the zone by id.

### HTTP Request

`GET https://api.gomorpheus.com/api/zones`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
lastUpdated |  | A date filter, restricts query to only load zones updated more recent or equal to the date specified
name |  | If specified will return an exact match zone
type |  | If specified will return all zones by type code (`standard`,`openstack`,`amazon`)
groupId |  | If specified will return all zones assigned to a server group by id.


## Get a Specific Cloud


```shell
curl "$MORPHEUS_API_URL/api/zones/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "zone": {
    "id": 1,
    "accountId": 1,
    "groupId": 1,
    "name": "Davids Laptop",
    "description": "My Laptop Vagrant",
    "location": null,
    "visibility": "public",
    "zoneTypeId": 1
  }
}
```

This endpoint retrieves a specific zone.


### HTTP Request

`GET https://api.gomorpheus.com/api/zones/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the zone to retrieve

## Create a Cloud

```shell
curl -XPOST "$MORPHEUS_API_URL/api/zones" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"zone":{
    "name": "My Cloud",
    "code": "mycloud",
    "description": "My description",
    "location": "US EAST",
    "zoneType": {"code": "standard"},
    "groupId": 1
  }}'
```

> The above command returns JSON structured like getting a single cloud:

### HTTP Request

`POST https://api.gomorpheus.com/api/zones`

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

Additional config properties are dynamic and depend on the specified type of cloud. See [Cloud Types](#cloud-types).

## Updating a Cloud

```shell
curl -XPUT "$MORPHEUS_API_URL/api/zones/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"zone":{
    "name": "My Cloud",
    "description": "My description",
    "location": "US EAST",
    "zoneType": {"code": "standard"},
    "groupId": 1,
    "config": null
  }}'
```

> The above command returns JSON structured like getting a single zone:

### HTTP Request

`PUT https://api.gomorpheus.com/api/zones/:id`

### JSON Cloud Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name scoped to your account for the zone
description |  | Optional description field if you want to put more info there
code      |  | Optional code for use with policies
location  |  | Optional location for your zone
visibility      | private | private or public
accountId |  | Specifies which Tenant this zone should be assigned to
config |  | For non standard zone types, this is a json encoded string with config properties for openstack and Amazon. See the section on specific zone types for details.

Additional config properties are dynamic and depend on the type of cloud. See [Cloud Types](#cloud-types).

## Delete a Cloud

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/zones/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

If a zone has zones or servers still tied to it, a delete action will fail

### HTTP Request

`DELETE https://api.gomorpheus.com/api/zones/:id`

## Get Security Groups

```shell
curl -XGET "https://api.gomorpheus.com/api/zones/1/security-groups" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

`GET https://api.gomorpheus.com/api/zones/:id/security-groups`


## Set Security Groups

```shell
curl -XPOST "$MORPHEUS_API_URL/api/zones/1/security-groups" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "securityGroupIds": [19, 2] }'
```

> The above command returns JSON structure similar to the 'get' of security groups.

### HTTP Request

`POST https://api.gomorpheus.com/api/zones/:id/security-groups`

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
securityGroupIds |  | List of all security groups ids which should be applied.  If no security groups should apply, pass '[]'

