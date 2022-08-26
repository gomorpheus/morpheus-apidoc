# Roles

Provides API interfaces for managing the creation and modification of roles within <%= application_name %>. This API is scoped to the roles owned by the current user's account. System Admin users will also be able to access the system roles: *System Admin* and *Account Admin*.

## Get All Roles

```shell
curl "<%= curl_url %>/api/roles"
  -H "Authorization: BEARER <%= curl_token %>"
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
      "ownerId": null,
      "owner": null,
      "defaultPersona": null
    },
    {
      "id": 1,
      "authority": "System Admin",
      "description": "Super User",
      "dateCreated": "2015-11-10T18:58:55+0000",
      "lastUpdated": "2015-11-10T18:58:55+0000",
      "scope": "Admin",
      "ownerId": null,
      "owner": null,
      "defaultPersona": null
    },
    {
      "id": 3,
      "authority": "Another Role",
      "description": "A custom role",
      "dateCreated": "2015-11-10T19:01:45+0000",
      "lastUpdated": "2015-11-10T19:02:01+0000",
      "scope": "Account",
      "ownerId": 1,
      "owner": {
        "id": 1,
        "name": "Root Account"
      },
      "defaultPersona": null
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

`GET <%= api_url %>/api/roles`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
phrase |  | Filter by matching authority
authority |  | Filter by authority
tenant |  | Filter by tenant/account


## Get a Specific Role

```shell
curl "<%= curl_url %>/api/roles/3" \
  -H "Authorization: BEARER <%= curl_token %>"
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
    "ownerId": 1,
    "owner": {
      "id": 1,
      "name": "Root Account"
    },
    "defaultPersona": null
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
  "instanceTypes": [
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
  "appTemplates": [],
  "globalCatalogItemTypeAccess": "full",
  "catalogItemTypes": [
    {
      "id": 1,
      "code": "app1",
      "name": "App 1",
      "access": "full"
    },
    {
      "id": 2,
      "code": "app2",
      "name": "App 2",
      "access": "full"
    }
  ],
  "personas": [
    {
      "id": 1,
      "code": "standard",
      "name": "Standard",
      "access": "full"
    },
    {
      "id": 2,
      "code": "serviceCatalog",
      "name": "Service Catalog",
      "access": "full"
    }
  ],
  "globalVdiPoolAccess": "custom",
  "vdiPools": [
    {
      "id": 1,
      "name": "Desktop 1",
      "access": "full"
    },
    {
      "id": 2,
      "name": "Desktop 2",
      "access": "none"
    }
  ],
  "globalReportTypeAccess": "custom",
  "reportTypes": [
    {
      "id": 21,
      "code": "appCost",
      "name": "Application Cost",
      "access": "full"
    },
    {
      "id": 5,
      "code": "cloudCost",
      "name": "cloud Cost",
      "access": "none"
    }
  ],
}
```

> The sample JSON above shows only a small subset of the featurePermissions, instanceTypes and reportTypes that exist.

This endpoint will retrieve a specific role by id if the user has permission to access the role.

### HTTP Request

`GET <%= api_url %>/api/roles/:id`

## Create a Role

```shell
curl -XPOST "<%= curl_url %>/api/roles" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"role":{
    "authority": "Test Role",
    "description": "A test role",
    "baseRoleId": 2,
    "roleType": "user",
    "defaultPersona": {"code": "standard"},
    "globalSiteAccess": "custom",
    "globalInstanceTypeAccess": "custom",
    "globalAppTemplateAccess": "custom",
    "globalCatalogItemTypeAccess": "custom",
    "globalVdiPoolAccess": "custom",
    "globalReportTypeAccess": "custom",
    "permissions": [
      {
        "code": "dashboard",
        "access": "read"
      },
      {
        "code": "operations-wiki",
        "access": "full"
      }
    ],
    "sites": [
      {
        "name": "Group B",
        "access": "full"
      },
      {
        "id": 43,
        "access": "none"
      }
    ],
    "instanceTypes": [
      {
        "code": "php",
        "access": "full"
      },
      {
        "code": "postgres",
        "access": "full"
      },
      {
        "code": "activemq",
        "access": "full"
      },
      {
        "code": "windows",
        "access": "full"
      }
    ],
    "appTemplates": [
      {
        "name": "my blueprint",
        "access": "full"
      },
      {
        "id": 55,
        "access": "none"
      }
    ],
    "catalogItemTypes": [
      {
        "name": "apache",
        "access": "full"
      },
      {
        "id": 6,
        "access": "none"
      }
    ],
    "personas": [
      {
        "code": "standard",
        "access": "full"
      },
      {
        "code": "serviceCatalog",
        "access": "full"
      },
      {
        "code": "vdi",
        "access": "full"
      }
    ],
    "vdiPools": [
      {
        "name": "Notepad",
        "access": "full"
      },
      {
        "id": 22,
        "access": "none"
      }
    ],
    "reportTypes": [
      {
        "code": "appCost",
        "access": "full"
      },
      {
        "code": "cloudCost",
        "access": "full"
      }
    ]
  }}'
```

> The above command returns JSON structured like getting a single role:

### HTTP Request

`POST <%= api_url %>/api/roles`

### JSON Role Parameters

Parameter | Default | Description
--------- | ------- | -----------
authority  |  | A name for the role
description     |  | Optional description field if you want to put more info there
baseRoleId |  | A role to copy feature permissions and access from (optional)
roleType | | The type of role to be created. Accepted values are either 'user' to create a User role or 'account' to create a Tenant role
multitenant | false | A Multitenant role is automatically copied into all existing subtenants as well as placed into a subtenant when created. Useful for providing a set of predefined roles a Customer can use 
multitenantLocked | false | Prevents subtenants from branching off this role/modifying it
defaultPersona.code      |  | Default Persona code, eg. standard, serviceCatalog, or vdi
permissions      |  | Array of objects containing permission and access level. Permissions can be identified by code, name or id. This provides [updating role feature permissions](#updating-role-feature-permissions) in bulk. Only the specified permissions are updated.
globalSiteAccess      |  | Global Group Access can be set to `full`, `custom` or `none`
sites      |  | Array of objects containing group (site) and access level. Groups can be identified by id or name. This provides [customizing group access](#customizing-group-access) in bulk. Only the specified groups are updated. Only applicable when `globalSiteAccess` is `custom`. Only applicable to User roles.
globalZoneAccess      |  | Global Cloud Access can be set to `full`, `custom` or `none`
zones      |  | Array of objects containing cloud (zone) and access level. Clouds can be identified by id or name. This provides [customizing cloud access](#customizing-cloud-access) in bulk. Only the specified clouds are updated. Only applicable when `globalZoneAccess` is `custom`. Only applicable to Tenant roles.
globalInstanceTypeAccess      |  | Global Instance Type Access can be set to `full`, `custom` or `none`
instanceTypes      |  | Array of objects containing instance type and access level. Instance types can be identified by id, code or name. This provides [customizing instance type access](#customizing-instance-type-access) in bulk. Only the specified instance types are updated. Only applicable when `globalInstanceTypeAccess` is `custom`.
globalAppTemplateAccess      |  | Global Blueprint Access can be set to `full`, `custom` or `none`
appTemplates      |  | Array of objects containing blueprint and access level. Blueprints can be identified by id or name. This provides [customizing blueprint access](#customizing-blueprint-access) in bulk. Only the specified blueprints are updated. Only applicable when `globalAppTemplateAccess` is `custom`.
globalCatalogItemTypeAccess      |  | Global Catalog Item Type Access can be set to `full`, `custom` or `none`
catalogItemTypes      |  | Array of objects containing catalog item type and access level. Catalog item types can be identified by id, code or name. This provides [customizing catalog item type access](#customizing-catalog-item-type-access) in bulk. Only the specified catalog item types are updated. Only applicable when `globalCatalogItemTypeAccess` is `custom`.
personas      |  | Array of objects containing persona and access level. Personas can be identified by code or name. This provides [customizing persona access](#customizing-persona-access) in bulk. Only the specified personas are updated.
globalVdiPoolAccess      |  | Global VDI Pool Access can be set to `full`, `custom` or `none`
vdiPools      |  | Array of objects containing VDI pool and access level. VDI pools can be identified by id or name. This provides [customizing VDI pool access](#customizing-vdi-pool-access) in bulk. Only the specified VDI pools are updated. Only applicable when `globalVdiPoolAccess` is `custom`.
globalReportTypeAccess      |  | Global Report Type can be set to `full`, `custom` or `none`
reportTypes      |  | Array of objects containing report type code and access level. Report types can be identified by id, code or name. This provides [customizing report type access](#customizing-report-type-access) in bulk. Only the specified report types are updated. Only applicable when `globalReportTypeAccess` is `custom`.
resetPermissions      | false | Reset all feature permission access to none. This can be used in conjunction with `permissions` to recreate the feature permission access for the role.
resetAllAccess      | false | Reset all access to none including permissions, global groups, instance types, etc. This can be used in conjunction with `permissions`, `sites`, `instanceTypes`, etc to recreate the access for the role.
owner |  |  Specify the tenant/owner/account for the role.  Can only be used by users with admin-accounts and admin-roles permissions set to full.

## Updating a Role

```shell
curl -XPUT "<%= curl_url %>/api/roles/4" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"role":{
    "authority": "Test Role",
    "description": "A new description of test role",
    "defaultPersona": {"code": "serviceCatalog"},
    "globalSiteAccess": "custom",
    "globalInstanceTypeAccess": "custom",
    "globalAppTemplateAccess": "custom",
    "globalCatalogItemTypeAccess": "custom",
    "globalVdiPoolAccess": "custom",
    "globalReportTypeAccess": "custom",
    "permissions": [
      {
        "code": "dashboard",
        "access": "read"
      },
      {
        "code": "operations-wiki",
        "access": "full"
      }
    ],
    "sites": [
      {
        "name": "Group B",
        "access": "full"
      },
      {
        "id": 43,
        "access": "none"
      }
    ],
    "instanceTypes": [
      {
        "code": "php",
        "access": "full"
      },
      {
        "code": "postgres",
        "access": "full"
      },
      {
        "code": "activemq",
        "access": "full"
      },
      {
        "code": "windows",
        "access": "full"
      }
    ],
    "appTemplates": [
      {
        "name": "my blueprint",
        "access": "full"
      },
      {
        "id": 55,
        "access": "none"
      }
    ],
    "catalogItemTypes": [
      {
        "name": "apache",
        "access": "full"
      },
      {
        "id": 6,
        "access": "none"
      }
    ],
    "personas": [
      {
        "code": "standard",
        "access": "full"
      },
      {
        "code": "serviceCatalog",
        "access": "full"
      },
      {
        "code": "vdi",
        "access": "full"
      }
    ],
    "vdiPools": [
      {
        "name": "Notepad",
        "access": "full"
      },
      {
        "id": 22,
        "access": "none"
      }
    ],
    "reportTypes": [
      {
        "code": "appCost",
        "access": "full"
      },
      {
        "code": "cloudCost",
        "access": "full"
      }
    ]
  }}'
```

> The above command returns JSON structured like getting a single role:

### HTTP Request

`PUT <%= api_url %>/api/roles/:id`

### JSON Role Parameters

Parameter | Default | Description
--------- | ------- | -----------
authority  |  | A name for the role
description     |  | Optional description field if you want to put more info there
multitenant | false | A Multitenant role is automatically copied into all existing subtenants as well as placed into a subtenant when created. Useful for providing a set of predefined roles a Customer can use
multitenantLocked | false | Prevents subtenants from branching off this role/modifying it
defaultPersona.code      |  | Default Persona code, eg. standard, serviceCatalog, or vdi
permissions      |  | Array of objects containing permission and access level. Permissions can be identified by code, name or id. This provides [updating role feature permissions](#updating-role-feature-permissions) in bulk. Only the specified permissions are updated.
globalSiteAccess      |  | Global Group Access can be set to `full`, `custom` or `none`
sites      |  | Array of objects containing group (site) and access level. Groups can be identified by id or name. This provides [customizing group access](#customizing-group-access) in bulk. Only the specified groups are updated. Only applicable when `globalSiteAccess` is `custom`. Only applicable to User roles.
globalZoneAccess      |  | Global Cloud Access can be set to `full`, `custom` or `none`
zones      |  | Array of objects containing cloud (zone) and access level. Clouds can be identified by id or name. This provides [customizing cloud access](#customizing-cloud-access) in bulk. Only the specified clouds are updated. Only applicable when `globalZoneAccess` is `custom`. Only applicable to Tenant roles.
globalInstanceTypeAccess      |  | Global Instance Type Access can be set to `full`, `custom` or `none`
instanceTypes      |  | Array of objects containing instance type and access level. Instance types can be identified by id, code or name. This provides [customizing instance type access](#customizing-instance-type-access) in bulk. Only the specified instance types are updated. Only applicable when `globalInstanceTypeAccess` is `custom`.
globalAppTemplateAccess      |  | Global Blueprint Access can be set to `full`, `custom` or `none`
appTemplates      |  | Array of objects containing blueprint and access level. Blueprints can be identified by id or name. This provides [customizing blueprint access](#customizing-blueprint-access) in bulk. Only the specified blueprints are updated. Only applicable when `globalAppTemplateAccess` is `custom`.
globalCatalogItemTypeAccess      |  | Global Catalog Item Type Access can be set to `full`, `custom` or `none`
catalogItemTypes      |  | Array of objects containing catalog item type and access level. Catalog item types can be identified by id, code or name. This provides [customizing catalog item type access](#customizing-catalog-item-type-access) in bulk. Only the specified catalog item types are updated. Only applicable when `globalCatalogItemTypeAccess` is `custom`.
personas      |  | Array of objects containing persona and access level. Personas can be identified by code or name. This provides [customizing persona access](#customizing-persona-access) in bulk. Only the specified personas are updated.
globalVdiPoolAccess      |  | Global VDI Pool Access can be set to `full`, `custom` or `none`
vdiPools      |  | Array of objects containing VDI pool and access level. VDI pools can be identified by id or name. This provides [customizing VDI pool access](#customizing-vdi-pool-access) in bulk. Only the specified VDI pools are updated. Only applicable when `globalVdiPoolAccess` is `custom`.
globalReportTypeAccess      |  | Global Report Type can be set to `full`, `custom` or `none`
reportTypes      |  | Array of objects containing report type code and access level. Report types can be identified by id, code or name. This provides [customizing report type access](#customizing-report-type-access) in bulk. Only the specified report types are updated. Only applicable when `globalReportTypeAccess` is `custom`.
resetPermissions      | false | Reset all feature permission access to none. This can be used in conjunction with `permissions` to recreate the feature permission access for the role.
resetAllAccess      | false | Reset all access to none including permissions, global groups, instance types, etc. This can be used in conjunction with `permissions`, `sites`, `instanceTypes`, etc to recreate the access for the role.

## Updating Role Feature Permissions

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-permission" \
  -H "Authorization: BEARER <%= curl_token %>" \
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

`PUT <%= api_url %>/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | The code of the permission being changed
access     |  | The new access level. **full**, **read**, **none**

## Global Group Access

> Global Group Access is controlled via the **update-permission** API

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-permission" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "permissionCode": "ComputeSite",
    "access": "custom"
  }'
```

### HTTP Request

`PUT <%= api_url %>/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | **ComputeSite** is the code for Global Group Access
access     |  | **full**, **custom**, **read**, or **none**

## Customizing Group Access

> Global Group Access must first be changed to **custom** as seen above.

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-group" \
  -H "Authorization: BEARER <%= curl_token %>" \
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

`PUT <%= api_url %>/api/roles/:id/update-group`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
groupId  |  | id of the group (site)
access     |  | **full**, **read**, or **none**

## Global Cloud Access

> Global Cloud Access is controlled via the **update-permission** API

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-permission" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "permissionCode": "ComputeZone",
    "access": "custom"
  }'
```

### HTTP Request

`PUT <%= api_url %>/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | **ComputeZone** is the code for Global Cloud Access
access     |  | **full**, **custom**, or **none**

## Customizing Cloud Access

> Global Cloud Access must first be changed to **custom** as seen above.

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-cloud" \
  -H "Authorization: BEARER <%= curl_token %>" \
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

`PUT <%= api_url %>/api/roles/:id/update-cloud`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
cloudId  |  | id of the cloud (zone)
access     |  | **full**, **read**, or **none**

## Global Instance Type Access

> Global Instance Type Access is controlled via the **update-permission** API

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-permission" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "permissionCode": "InstanceType",
    "access": "custom"
  }'
```

### HTTP Request

`PUT <%= api_url %>/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | **InstanceType** is the code for Global Instance Type Access
access     |  | **full**, **custom**, or **none**

## Customizing Instance Type Access

> Global Instance Type Access must first be changed to **custom** as seen above.

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-instance-type" \
  -H "Authorization: BEARER <%= curl_token %>" \
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

`PUT <%= api_url %>/api/roles/:id/update-instance-type`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
instanceTypeId  |  | id of the instance type
access     |  | **full** or **none**

## Global Blueprint Access

> Global Blueprint Access is controlled via the **update-permission** API

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-permission" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "permissionCode": "AppTemplate",
    "access": "custom"
  }'
```

### HTTP Request

`PUT <%= api_url %>/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | **AppTemplate** is the code for Global Blueprint Access
access     |  | **full**, **custom**, or **none**

## Customizing Blueprint Access

> Global Blueprint Access must first be changed to **custom** as seen above.

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-blueprint" \
  -H "Authorization: BEARER <%= curl_token %>" \
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

`PUT <%= api_url %>/api/roles/:id/update-blueprint`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
appTemplateId  |  | id of the blueprint (appTemplate)
access     |  | **full**, **read**, or **none**


### HTTP Request

`PUT <%= api_url %>/api/roles/:id/update-cloud`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
cloudId  |  | id of the cloud (zone)
access     |  | **full**, **read**, or **none**

## Global Catalog Item Type Access

> Global Catalog Item Type Access is controlled via the **update-permission** API

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-permission" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "permissionCode": "CatalogItemType",
    "access": "custom"
  }'
```

### HTTP Request

`PUT <%= api_url %>/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | **CatalogItemType** is the code for Global Catalog Item Type Access
access     |  | **full**, **custom**, or **none**

## Customizing Catalog Item Type Access

> Global Catalog Item Type Access must first be changed to **custom** as seen above.

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-catalog-item-type" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "catalogItemTypeId": 1,
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

`PUT <%= api_url %>/api/roles/:id/update-catalog-item-type`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
catalogItemTypeId  |  | id of the catalog item type
access     |  | **full** or **none**


## Customizing Persona Access

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-persona" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "personaCode": "serviceCatalog",
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

`PUT <%= api_url %>/api/roles/:id/update-persona`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
personaCode  |  | code of the Persona, eg. **standard** or **serviceCatalog**
access     |  | **full** or **none**

## Global VDI Pool Access

> Global VDI Pool Access is controlled via the **update-permission** API

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-permission" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "permissionCode": "VdiPools",
    "access": "custom"
  }'
```

### HTTP Request

`PUT <%= api_url %>/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | **VdiPools** is the code for Global VDI Pool Access
access     |  | **full**, **custom**, or **none**

## Customizing VDI Pool Access

> Global VDI Pool Access must first be changed to **custom** as seen above.

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-vdi-pool" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "vdiPoolId": 1,
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

`PUT <%= api_url %>/api/roles/:id/update-vdi-pool`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
vdiPoolId  |  | id of the VDI pool
access     |  | **full** or **none**


## Global Report Type Access

> Global Report Type Access is controlled via the **update-permission** API

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-permission" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "permissionCode": "ReportTypes",
    "access": "custom"
  }'
```

### HTTP Request

`PUT <%= api_url %>/api/roles/:id/update-permission`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
permissionCode  |  | **ReportTypes** is the code for Global Report Type Access
access     |  | **full**, **custom**, or **none**

## Customizing Report Type Access

> Global Report Type Access must first be changed to **custom** as seen above.

```shell
curl -XPUT "<%= curl_url %>/api/roles/4/update-report-type" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "reportTypeId": 1,
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

`PUT <%= api_url %>/api/roles/:id/update-report-type`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
reportTypeId  |  | id of the report type
access     |  | **full** or **none**

## Delete a Role

```shell
curl -XDELETE "<%= curl_url %>/api/roles/4" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE <%= api_url %>/api/roles/:id`

If a role still has accounts or users tied to it, The delete will fail.
