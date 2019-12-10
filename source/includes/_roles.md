# Roles

Provides API interfaces for managing the creation and modification of roles within Morpheus. This API is scoped to the roles owned by the current user's account. System Admin users will also be able to access the system roles: *System Admin* and *Account Admin*.

## Get All Roles

```shell
curl "$MORPHEUS_API_URL/api/roles"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "roles": [
		{
      "id": 2,
      "authority": "Account Admin",
      "description": "Service account holder",
      "dateCreated": "2016-08-27T23:26:19+0000",
      "lastUpdated": "2016-08-27T23:26:19+0000",
      "scope": "Account",
      "instanceLimits": null,
      "ownerId": null,
      "owner": null
    },
    {
      "id": 1,
      "authority": "System Admin",
      "description": "Super User",
      "dateCreated": "2015-11-10T18:58:55+0000",
      "lastUpdated": "2015-11-10T18:58:55+0000",
      "scope": "Admin",
      "instanceLimits": null,
      "ownerId": null,
      "owner": null
    },
    {
      "id": 3,
      "authority": "Another Role",
      "description": "A custom role",
      "dateCreated": "2015-11-10T19:01:45+0000",
      "lastUpdated": "2015-11-10T19:02:01+0000",
      "scope": "Account",
      "instanceLimits": null,
      "ownerId": 1,
      "owner": {
        "id": 1,
        "name": "Root Account"
      }
    },
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 3,
    "total": 3
  }
}
```

This endpoint retrieves all roles.

### HTTP Request

`GET https://api.gomorpheus.com/api/roles`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
phrase |  | Filter by matching authority
authority |  | Filter by authority


## Get a Specific Role

```shell
curl "$MORPHEUS_API_URL/api/roles/3" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
	"role": {
    "id": 3,
    "authority": "Another Role",
    "description": "A custom role",
    "dateCreated": "2015-11-10T19:01:45+0000",
    "lastUpdated": "2015-11-10T19:02:01+0000",
    "scope": "Account",
    "instanceLimits": null,
    "ownerId": 1,
    "owner": {
      "id": 1,
      "name": "Root Account"
    }
  },
  "featurePermissions": [
    {
      "id": 8,
      "code": "admin-users",
      "name": "Admin: Users",
      "access": "full"
    },
    {
      "id": 18,
      "code": "backups",
      "name": "Backups",
      "access": "full"
    },
    {
      "id": 19,
      "code": "dashboard",
      "name": "Dashboard",
      "access": "read"
    },
  ],
  "globalSiteAccess": "custom",
  "sites": [
    {
      "id": 1,
      "name": "group1",
      "access": "full"
    },
    {
      "id": 2,
      "name": "group2",
      "access": "none"
    }
  ],
  "globalZoneAccess": "full",
  "zones": [
    {
      "id": 1,
      "name": "zone1",
      "access": "full"
    },
    {
      "id": 2,
      "name": "zone2",
      "access": "full"
    },
  ],
  "globalInstanceTypeAccess": "custom",
  "instanceTypePermissions": [
    {
      "id": 1,
      "code": "activemq",
      "name": "ActiveMQ",
      "access": "full"
    },
    {
      "id": 2,
      "code": "amazon",
      "name": "Amazon",
      "access": "full"
    },
    {
      "id": 5,
      "code": "ansible",
      "name": "Ansible",
      "access": "full"
    },
  ],
  "globalAppTemplateAccess": "full",
  "appTemplatePermissions": []
}
```

> The sample JSON above shows only a small subset of the featurePermissions and instanceTypePermissions that exist.

This endpoint will retrieve a specific role by id if the user has permission to access the role.

### HTTP Request

`GET https://api.gomorpheus.com/api/roles/:id`

## Create a Role

```shell
curl -XPOST "$MORPHEUS_API_URL/api/roles" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"role":{
    "authority": "Test Role",
    "description": "A test role",
    "baseRoleId": 2,
    "instanceLimits": {
      "maxCpu": 0,
      "maxMemory": 0,
      "maxStorage": 0
    }
  }}'
```

> The above command returns JSON structured like getting a single role:

### HTTP Request

`POST https://api.gomorpheus.com/api/roles`

### JSON Role Parameters

Parameter | Default | Description
--------- | ------- | -----------
authority  |  | A name for the role
description     |  | Optional description field if you want to put more info there
baseRoleId |  | A role to copy feature permissions and access from (optional)
multitenant | false | A Multitenant role is automatically copied into all existing subtenants as well as placed into a subtenant when created. Useful for providing a set of predefined roles a Customer can use 
multitenantLocked | false | Prevents subtenants from branching off this role/modifying it


## Updating Basic Role Settings

```shell
curl -XPUT "$MORPHEUS_API_URL/api/roles/4" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"role":{
    "authority": "Test Role",
    "description": "A new description of test role"
  }}'
```

> The above command returns JSON structured like getting a single role:

### HTTP Request

`PUT https://api.gomorpheus.com/api/roles/:id`

### JSON Role Parameters

Parameter | Default | Description
--------- | ------- | -----------
authority  |  | A name for the role
description     |  | Optional description field if you want to put more info there
multitenant | false | A Multitenant role is automatically copied into all existing subtenants as well as placed into a subtenant when created. Useful for providing a set of predefined roles a Customer can use 
multitenantLocked | false | Prevents subtenants from branching off this role/modifying it

## Updating Role Feature Permissions

```shell
curl -XPUT "$MORPHEUS_API_URL/api/roles/4/update-permission" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "permissionCode": "admin-users",
    "access": "read"
  }'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "access": "read"
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | The code of the permission being changed
access     |  | The new access level. **full**, **read**, **none**

## Global Group Access

> Global Group Access is controlled via the **update-permission** API

```shell
curl -XPUT "$MORPHEUS_API_URL/api/roles/4/update-permission" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "permissionCode": "ComputeSite",
    "access": "custom"
  }'
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | **ComputeSite** is the code for Global Group Access
access     |  | **full**, **custom**, **read**, or **none**

## Customizing Group Access

> Global Group Access must first be changed to **custom** as seen above.

```shell
curl -XPUT "$MORPHEUS_API_URL/api/roles/4/update-group" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "groupId": 2,
    "access": "full"
  }'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "access": "full"
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/roles/:id/update-group`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
groupId  |  | id of the group (site)
access     |  | **full**, **read**, or **none**

## Global Cloud Access

> Global Cloud Access is controlled via the **update-permission** API

```shell
curl -XPUT "$MORPHEUS_API_URL/api/roles/4/update-permission" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "permissionCode": "ComputeZone",
    "access": "custom"
  }'
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | **ComputeZone** is the code for Global Cloud Access
access     |  | **full**, **custom**, or **none**

## Customizing Cloud Access

> Global Cloud Access must first be changed to **custom** as seen above.

```shell
curl -XPUT "$MORPHEUS_API_URL/api/roles/4/update-cloud" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "cloudId": 2,
    "access": "full"
  }'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "access": "full"
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/roles/:id/update-cloud`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
cloudId  |  | id of the cloud (zone)
access     |  | **full**, **read**, or **none**

## Global Instance Type Access

> Global Instance Type Access is controlled via the **update-permission** API

```shell
curl -XPUT "$MORPHEUS_API_URL/api/roles/4/update-permission" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "permissionCode": "InstanceType",
    "access": "custom"
  }'
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | **InstanceType** is the code for Global Instance Type Access
access     |  | **full**, **custom**, or **none**

## Customizing Instance Type Access

> Global Instance Type Access must first be changed to **custom** as seen above.

```shell
curl -XPUT "$MORPHEUS_API_URL/api/roles/4/update-instance-type" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "instanceTypeId": 1,
    "access": "full"
  }'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "access": "full"
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/roles/:id/update-instance-type`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
instanceTypeId  |  | id of the instance type
access     |  | **full** or **none**

## Global Blueprint Access

> Global Blueprint Access is controlled via the **update-permission** API

```shell
curl -XPUT "$MORPHEUS_API_URL/api/roles/4/update-permission" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "permissionCode": "AppTemplate",
    "access": "custom"
  }'
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | **AppTemplate** is the code for Global Blueprint Access
access     |  | **full**, **custom**, or **none**

## Customizing Blueprint Access

> Global Blueprint Access must first be changed to **custom** as seen above.

```shell
curl -XPUT "$MORPHEUS_API_URL/api/roles/4/update-blueprint" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "appTemplateId": 2,
    "access": "full"
  }'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "access": "full"
}
```
### HTTP Request

`PUT https://api.gomorpheus.com/api/roles/:id/update-blueprint`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
appTemplateId  |  | id of the blueprint (appTemplate)
access     |  | **full**, **read**, or **none**

## Delete a Role

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/roles/4" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE https://api.gomorpheus.com/api/roles/:id`

If a role still has accounts or users tied to it, The delete will fail.
