## User Sources

User Sources can be configured for each Tenant.
Supported types include LDAP, JumpCloud, Active Directory, and others.

<aside class="notice">
This API is only available to the master account.
</aside>

<!--## Get All User Sources-->

```shell
curl "$MORPHEUS_API_URL/api/user-sources"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "userSources": [
    {
      "id": 17,
      "name": "jump cloud",
      "description": "our jump cloud users",
      "code": "KsUGxwhTU",
      "type": "jumpCloud",
      "active": true,
      "deleted": false,
      "autoSyncOnLogin": true,
      "externalLogin": false,
      "allowCustomMappings": false,
      "account": {
        "id": 59,
        "name": "acme"
      },
      "defaultAccountRole": {
        "id": 19,
        "authority": "Basic User"
      },
      "roleMappings": [

      ],
      "subdomain": "acme",
      "dateCreated": "2018-03-22T01:57:12+0000",
      "lastUpdated": "2018-03-22T01:57:12+0000"
    }
  ],
  "meta": {
    "size": 1,
    "total": 1,
    "max": 25,
    "offset": 0
  }
}
```

This endpoint retrieves all user sources.

### HTTP Request

`GET https://api.gomorpheus.com/api/user-sources`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
phrase |  | Filter on wildcard match of name or description
name |  | Filter on exact match of name
type |  | Filter on exact match of type code

## Get a Specific User Source

```shell
curl "$MORPHEUS_API_URL/api/user-sources/2" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "userSource": {
    "id": 17,
    "name": "jump cloud",
    "description": "our jump cloud users",
    "code": "KsUGxwhTU",
    "type": "jumpCloud",
    "active": true,
    "deleted": false,
    "autoSyncOnLogin": true,
    "externalLogin": false,
    "allowCustomMappings": false,
    "account": {
      "id": 59,
      "name": "acme"
    },
    "defaultAccountRole": {
      "id": 19,
      "authority": "Basic User"
    },
    "config": {
      "organizationId": "34a927g43e21be3786b2343b",
      "bindingPassword": "************",
      "bindingUsername": "jumpadmin",
      "requiredRole": "MorpheusTag"
    },
    "roleMappings": [

    ],
    "subdomain": "acme",
    "loginURL": "https://app.gomorpheusdata.com/login/account/acme",
    "dateCreated": "2018-03-22T01:57:12+0000",
    "lastUpdated": "2018-03-22T01:57:12+0000"
  }
}
```

This endpoint retrieves a specific user source.


### HTTP Request

`GET https://api.gomorpheus.com/api/user-sources/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the user source

## Create a User Source

```shell
curl -XPOST "$MORPHEUS_API_URL/api/accounts/60/user-sources" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"userSource": {
    "type": "activeDirectory",
    "name": "Ninja AD",
    "config": {
      "url": "10.30.10.155",
      "domain": "ad.morpheusdata.ninja",
      "useSSL": "on",
      "bindingUsername": "adadmin",
      "bindingPassword": "96119ec75001",
      "requiredGroup": "MorpheusUsers",
      "searchMemberGroups": "off"
    },
    "defaultAccountRole": {
      "id": 1
    }
  }
}'
```

> The above command returns JSON structured like getting a single user source: 

### HTTP Request

`POST https://api.gomorpheus.com/api/accounts/:accountId/user-sources`

### URL Parameters

Parameter | Description
--------- | -----------
accountId | The ID of the subtenant account to associate the user source with

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
type      |  | Type code (ldap, jumpCloud, activeDirectory, okta, oneLogin, saml, customExternal, customApi)
description |  | Description (optional)
defaultAccountRole.id |  | Default Role ID
roleMappings | | Map of Morpheus Role ID : Fully Qualified Role Name
roleMappingNames | | Map of Morpheus Role ID : Role Name
config | | Map of configuration options which vary by type.

### JSON Parameters for LDAP

Parameter | Default | Description
--------- | ------- | -----------
config.url      |  | URL
config.bindingUsername      |  | Binding Username
config.bindingPassword      |  | Binding Password
config.requiredGroup      |  | Required group name (a.k.a. tag)

### JSON Parameters for jumpCloud

Parameter | Default | Description
--------- | ------- | -----------
config.organizationId      | false | Organization ID
config.bindingUsername      |  | Binding Username
config.bindingPassword      |  | Binding Password
config.requiredRole      |  | Required group name (a.k.a. tag)

### JSON Parameters for activeDirectory

Parameter | Default | Description
--------- | ------- | -----------
config.url      |  | AD Server
config.domain      |  | Domain
config.useSSL      | false | Use SSL
config.bindingUsername      |  | Binding Username
config.bindingPassword      |  | Binding Password
config.requiredGroup      |  | Required Group
config.searchMemberGroups      |  | Include Member Groups

### JSON Parameters for okta

Parameter | Default | Description
--------- | ------- | -----------
config.url      |  | OKTA URL
config.administratorAPIToken      |  | Adminstrator API Token
config.requiredGroup      |  | Required Group

### JSON Parameters for oneLogin

Parameter | Default | Description
--------- | ------- | -----------
config.subdomain      |  | OneLogin Subdomain
config.region      |  | OneLogin Region
config.clientSecret      |  | API Client Secret
config.clientId      |  | API Client ID
config.requiredRole      |  | Required Role

### JSON Parameters for saml

Parameter | Default | Description
--------- | ------- | -----------
config.url      |  | Login Redirect URL
config.doNotIncludeSAMLRequest      | false | Exclude SAMLRequest Parameter
config.logoutUrl      |  | Logout Post URL
config.publicKey      |  | Signing Public Key

### JSON Parameters for customExternal

Parameter | Default | Description
--------- | ------- | -----------
config.loginUrl      |  | External Login URL
config.doNotIncludeSAMLRequest      | false | Do not include SAMLRequest
config.logout      |  | External Logout URL
config.encryptionAlgo      |  | Encryption Algorithm ('NONE','AES','DES','DESede','HmacSHA1', 'HmacSHA256')
config.encryptionKey      |  | Encryption Key

### JSON Parameters for customApi

Parameter | Default | Description
--------- | ------- | -----------
config.endpoint      |  | API Endpoint
config.apiStyle      |  | API Style ('Form URL Encoded [GET]','Form URL Encoded [POST]','JSON [POST]','XML [POST]','HTTP Basic [GET]')
config.encryptionAlgo      |  | Encryption Algorithm ('NONE','AES','DES','DESede','HmacSHA1', 'HmacSHA256')
config.encryptionKey      |  | Encryption Key

## Updating a User Source

```shell
curl -XPUT "$MORPHEUS_API_URL/api/user-sources/3" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"userSource": {
    "type": "activeDirectory",
    "name": "Ninja AD",
    "config": {
      "url": "10.30.10.155",
      "domain": "ad.morpheusdata.ninja",
      "useSSL": "on",
      "bindingUsername": "adadmin",
      "bindingPassword": "96119ec75001",
      "requiredGroup": "MorpheusUsers",
      "searchMemberGroups": "off"
    },
    "defaultAccountRole": {
      "id": 1
    }
  }
}'
```

> The above command returns JSON structured like getting a single user source: 

### HTTP Request

`PUT https://api.gomorpheus.com/api/user-sources/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the user source

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description |  | Description (optional)
active      |  | Activate (true) or disable (false) the user source
defaultAccountRole.id |  | Default Role ID
roleMappings | | Map of Morpheus Role ID : Fully Qualified Role Name
roleMappingNames | | Map of Morpheus Role ID : Role Name
config | | Map of configuration options which vary by type.

## Updating Subdomain for a User Source

```shell
curl -XPUT "$MORPHEUS_API_URL/api/user-sources/3/subdomain" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"subdomain": "ninjas"}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/user-sources/:id/subdomain`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the user source

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
subdomain      |  | New Subdomain for account

This endpoint updates the subdomain for the account associated with the user source.

## Delete a User Source

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/user-sources/3" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE https://api.gomorpheus.com/api/user-sources/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the user source

Will delete a user source from the system and make it no longer usable.

<aside class="info">
If a user source is tied to existing users, a delete will fail.
</aside>
