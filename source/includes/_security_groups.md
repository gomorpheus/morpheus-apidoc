# Security Groups

A Security Group is a grouping of rules.  Each rule is a whitelist entry for a particular IP address to either a port range or a particular Morpheus instance type.  A Security Group may be applied to multiple Clouds, Apps, and Instances.

## Get All Security Groups

```shell
curl "$MORPHEUS_API_URL/api/security-groups"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "securityGroups": [
    {
      "id": 18,
      "name": "Colorado office",
      "description": "All the Colorado office to access anywhere",
      "accountId": 1,
      "groupSource": null,
      "externalId": null,
      "enabled": null,
      "syncSource": "internal",
      "zone": null,
      "locations": [
        {
          "id": 429,
          "name": "Colorado office",
          "externalId": "sg-01c120cf02de97410",
          "iacId": null,
          "zone": {
            "id": 8,
            "name": "test-aws"
          },
          "zonePool": null,
          "status": "available"
        }
      ],
      "rules": [
        {
          "id": 30,
          "name": "my app ports",
          "ruleType": "customRule",
          "customRule": true,
          "instanceTypeId": null
          "direction": "ingress",
          "policy": "accept",
          "sourceType": "cidr",
          "source": "0.0.0.0/0",
          "sourceGroup": null,
          "sourceTier": null,
          "portRange": "5565-5570",
          "protocol": "tcp",
          "destinationType": "instance",
          "destination": null,
          "destinationGroup": null,
          "destinationTier": null,
          "externalId": null,
          "enabled": null,
        }
      ]
    }
  ],
  "meta": {
    "size": 1,
    "total": 1,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves all security groups and their JSON encoded configuration attributes.

### HTTP Request

`GET https://api.gomorpheus.com/api/security-groups`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
phrase |  | Name or description filter, restricts query to only load security groups which contain the phrase specified

## Get a Specific Security Group


```shell
curl "$MORPHEUS_API_URL/api/security-groups/18" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "securityGroup": {
    "id": 18,
    "name": "Colorado office",
    "description": "All the Colorado office to access anywhere",
    "accountId": 1,
    "groupSource": null,
    "externalId": null,
    "enabled": null,
    "syncSource": "internal",
    "zone": null,
    "locations": [
      {
        "id": 429,
        "name": "Colorado office",
        "externalId": "sg-01c120cf02de97410",
        "iacId": null,
        "zone": {
          "id": 8,
          "name": "bertramlabs-aws"
        },
        "zonePool": null,
        "status": "available"
      }
    ],
    "rules": []
  }
}
```

This endpoint retrieves a specific security group.

### HTTP Request

`GET https://api.gomorpheus.com/api/security-groups/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the security group

## Create a Security Group

```shell
curl -XPOST "$MORPHEUS_API_URL/api/security-groups" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "securityGroup": {
  "name": "My New Security Group",
  "description": "My Description"
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single security group 

### HTTP Request

`POST https://api.gomorpheus.com/api/security-groups`

### JSON Security Group Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name for your security group
description |  | Optional description field
zoneId      |  | Scoped Cloud ID.
customOptions.vpc      |  | External ID of Amazon VPC.
customOptions.resourceGroup      |  | External ID of the Azure Resource Group to scope to.

## Updating a Security Group

```shell
curl -XPUT "$MORPHEUS_API_URL/api/security-groups/18" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "securityGroup": {
  "name": "My New Security Group",
  "description": "My Description"
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single security group 

### HTTP Request

`PUT https://api.gomorpheus.com/api/security-groups/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the security group

### JSON Security Group Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name for your security group
description |  | Optional description field

## Delete a Security Group

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/security-groups/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a security group and update all clouds, apps, and instances which are currently using the security group.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/security-groups/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the security group


## Create a Security Group Location

```shell
curl -XPOST "$MORPHEUS_API_URL/api/security-groups/18/locations" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "securityGroupLocation": {
    "zoneId": 5,
    "customOptions": {
      "resourceGroup": 1
    },
    }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single security group rule 

Will add a security group to the specified cloud.

### HTTP Request

`POST https://api.gomorpheus.com/api/security-groups/:id/locations`

### JSON Security Group Location Parameters

Parameter | Default | Description
--------- | ------- | -----------
zoneId      |  | The ID of the Zone (Cloud)
customOptions.vpc      |  | External ID of Amazon VPC.
customOptions.resourceGroup      |  | External ID of the Azure Resource Group to scope to.

## Delete a Security Group Location

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/security-groups/18/locations/29" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns a similar JSON structure when submitting a GET request for a single security group rule 

Will remove a security group from a cloud.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/security-groups/:id/locations/:locationId`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the security group
locationId | The ID of the security group location
