# Identity Sources

Identity sources may be configured to allow users to authenticate with a separate service in order to gain access to the <%= application_name %> appliance. When authenticating, <%= application_name %> checks the credentials against the third party service and if successful will log the user into the appliance. If it's the first time for that username, the user is created before logging in. This way users and their passwords are not managed directly in <%= application_name %>.  Each identity source has role mappings that determine the access level in <%= application_name %> which users will receive when authenticating and successfully logging in.

The supported identity source types are LDAP (`ldap`), JumpCloud (`jumpCloud`), Active Directory (`activeDirectory`), Okta (`okta`), One Login (`oneLogin`), SAML (`saml`) and Azure SAML (`azureSaml`). Custom types are also supported.

An Identity Source may also be referred to as a *User Source* or *userSource*.


## Get All Identity Sources

```shell
curl "<%= curl_url %>/api/user-sources"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "userSources": [
    {
      "id": 4761,
      "name": "AD Example",
      "description": "Active Directory Example",
      "code": "vaRnweSFq",
      "type": "activeDirectory",
      "active": true,
      "deleted": false,
      "autoSyncOnLogin": true,
      "externalLogin": false,
      "allowCustomMappings": false,
      "account": {
        "id": 1552,
        "name": "Auto Tenant 1"
      },
      "defaultAccountRole": {
        "id": 19112,
        "authority": "Default: User"
      },
      "config": {
        "url": "10.10.20.1",
        "domain": "qa.ad.myorg.com",
        "useSSL": "off",
        "bindingUsername": "admin",
        "bindingPassword": "************",
        "requiredGroup": "MyOrgUsers",
        "searchMemberGroups": true,
        "requiredGroupDN": "CN=MyOrgUsers,CN=Users,DC=qa,DC=ad,DC=myorg,DC=com"
      },
      "roleMappings": [
        {
          "sourceRoleName": "Mathematicians",
          "sourceRoleFqn": "CN=Mathematicians,CN=Users,DC=qa,DC=ad,DC=myorg,DC=com",
          "mappedRole": {
            "id": 19117,
            "authority": "Sub Role"
          }
        }
      ],
      "subdomain": "auto",
      "loginURL": "https://dev.myorg.com/login/account/auto",
      "providerSettings": {
      },
      "dateCreated": "2020-02-06T17:00:13Z",
      "lastUpdated": "2021-01-30T08:54:21Z"
    },
    
    
    {
      "id": 5400,
      "name": "FreeIPA LDAP",
      "description": null,
      "code": "uciTGxHGT",
      "type": "ldap",
      "active": false,
      "deleted": false,
      "autoSyncOnLogin": true,
      "externalLogin": false,
      "allowCustomMappings": false,
      "account": {
        "id": 1633,
        "name": "ctaylor"
      },
      "defaultAccountRole": {
        "id": 24436,
        "authority": "A Persona User Role"
      },
      "config": {
        "url": "ldaps://gw-freeipa.prod.den.myorg.com:636",
        "bindingUsername": "admin",
        "bindingPassword": "************",
        "userFqnExpression": "uid=$username,cn=users,cn=accounts,dc=prod,dc=den,dc=myorg,dc=com",
        "requiredRoleFqn": "cn=ipausers,cn=groups,cn=accounts,dc=prod,dc=den,dc=myorg,dc=com",
        "usernameAttribute": "",
        "commonNameAttribute": "",
        "firstNameAttribute": "",
        "lastNameAttribute": "",
        "emailAttribute": "",
        "uniqueMemberAttribute": "",
        "memberOfAttribute": "memberOf"
      },
      "roleMappings": [

      ],
      "subdomain": "ctaylor",
      "loginURL": "https://dev.myorg.com/login/account/ctaylor",
      "providerSettings": {
      },
      "dateCreated": "2021-01-07T09:03:52Z",
      "lastUpdated": "2021-01-07T18:07:37Z"
    },
    {
      "id": 4771,
      "name": "Jump Cloud QA",
      "description": "jumpcloud trial",
      "code": "E81DYhKVN",
      "type": "jumpCloud",
      "active": true,
      "deleted": false,
      "autoSyncOnLogin": true,
      "externalLogin": false,
      "allowCustomMappings": false,
      "account": {
        "id": 1552,
        "name": "Auto Tenant 1"
      },
      "defaultAccountRole": {
        "id": 19112,
        "authority": "Default: User"
      },
      "config": {
        "organizationId": "22ba1130591be3786b2343a1",
        "bindingUsername": "jcgauss",
        "bindingPassword": "************",
        "requiredRole": "MyOrgTag"
      },
      "roleMappings": [
        {
          "sourceRoleName": "mathematicians",
          "sourceRoleFqn": "cn=mathematicians,ou=Users,o=56ba8430591be3786b2343b0,dc=jumpcloud,dc=com",
          "mappedRole": {
            "id": 19117,
            "authority": "Sub Role"
          }
        }
      ],
      "subdomain": "auto",
      "loginURL": "https://dev.myorg.com/login/account/auto",
      "providerSettings": {
      },
      "dateCreated": "2020-02-06T17:52:07Z",
      "lastUpdated": "2021-01-30T10:41:52Z"
    },
    {
      "id": 4782,
      "name": "Okta QA",
      "description": "oktapreview trial",
      "code": "eZiReLj9W",
      "type": "okta",
      "active": true,
      "deleted": false,
      "autoSyncOnLogin": true,
      "externalLogin": false,
      "allowCustomMappings": false,
      "account": {
        "id": 1552,
        "name": "Auto Tenant 1"
      },
      "defaultAccountRole": {
        "id": 19112,
        "authority": "Default: User"
      },
      "config": {
        "url": "https://dev-911522.oktapreview.com",
        "administratorAPIToken": "************",
        "requiredGroup": "myorg",
        "requiredGroupId": "00g88dvxc64kvt6UR0h7"
      },
      "roleMappings": [
        {
          "sourceRoleName": "mathematicians",
          "sourceRoleFqn": "00g86tlvyuJlw3OqZ0h7",
          "mappedRole": {
            "id": 19117,
            "authority": "Sub Role"
          }
        }
      ],
      "subdomain": "auto",
      "loginURL": "https://dev.myorg.com/login/account/auto",
      "providerSettings": {
      },
      "dateCreated": "2020-02-06T18:16:40Z",
      "lastUpdated": "2021-01-30T09:40:35Z"
    },
    {
      "id": 4783,
      "name": "OneLogin QA",
      "description": "onelogin test",
      "code": "stfG0VlIT",
      "type": "oneLogin",
      "active": true,
      "deleted": false,
      "autoSyncOnLogin": true,
      "externalLogin": false,
      "allowCustomMappings": false,
      "account": {
        "id": 1552,
        "name": "Auto Tenant 1"
      },
      "defaultAccountRole": {
        "id": 19112,
        "authority": "Default: User"
      },
      "config": {
        "subdomain": "myorg-labs-dev",
        "region": "us",
        "clientSecret": "************",
        "clientId": "3c9f6960b4dd8af33dfd7e8022569a095c3d09256657082ea03d40f6b1583260",
        "requiredRole": "Admin Role",
        "requiredRoleId": "144498"
      },
      "roleMappings": [
        {
          "sourceRoleName": "Mathematician Role",
          "sourceRoleFqn": "145780",
          "mappedRole": {
            "id": 19117,
            "authority": "Sub Role"
          }
        }
      ],
      "subdomain": "auto",
      "loginURL": "https://dev.myorg.com/login/account/auto",
      "providerSettings": {
      },
      "dateCreated": "2020-02-06T18:16:46Z",
      "lastUpdated": "2021-01-30T09:09:45Z"
    },
    {
      "id": 207,
      "name": "OneLogin SAML",
      "description": "saml test",
      "code": "cD9bPD9oa",
      "type": "saml",
      "active": false,
      "deleted": false,
      "autoSyncOnLogin": true,
      "externalLogin": true,
      "allowCustomMappings": false,
      "account": {
        "id": 1,
        "name": "MyOrg QA"
      },
      "defaultAccountRole": {
        "id": 17,
        "authority": "Default: User"
      },
      "config": {
        "roleAttributeName": "firstName",
        "requiredAttributeValue": "Carl",
        "givenNameAttribute": "firstName",
        "surnameAttribute": "lastName",
        "logoutUrl": "https://myorg-dev.onelogin.com/trust/saml2/http-redirect/slo/618040",
        "doNotIncludeSAMLRequest": false,
        "emailAttribute": "email",
        "url": "https://myorg-dev.onelogin.com/trust/saml2/http-post/sso/618040",
        "doNotValidateSignature": false,
        "doNotValidateStatusCode": false,
        "doNotValidateDestination": false,
        "doNotValidateIssueInstants": false,
        "doNotValidateAssertions": false,
        "doNotValidateAuthStatements": false,
        "doNotValidateSubject": false,
        "doNotValidateConditions": false,
        "doNotValidateAudiences": false,
        "doNotValidateSubjectRecipients": false,
        "SAMLSignatureMode": "SelfSigned"
      },
      "roleMappings": [
        {
          "sourceRoleName": "Carl",
          "sourceRoleFqn": null,
          "mappedRole": {
            "id": 2486,
            "authority": "Sub Admin"
          }
        }
      ],
      "subdomain": "1",
      "loginURL": "https://dev.myorg.com/login/account/1",
      "providerSettings": {
        "entityId": "https://dev.myorg.com/saml/cD9bPD9oa",
        "acsUrl": "https://dev.myorg.com/externalLogin/callback/cD9bPD9oa",
        "spMetadata": "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><EntityDescriptor entityID=\"https://dev.myorg.com/saml/cD9bPD9oa\" xmlns=\"urn:oasis:names:tc:SAML:2.0:metadata\"><SPSSODescriptor AuthnRequestsSigned=\"true\" WantAssertionsSigned=\"true\" protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\"><NameIDFormat>urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified</NameIDFormat><AssertionConsumerService index=\"0\" isDefault=\"true\" Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST\" Location=\"https://dev.myorg.com/externalLogin/callback/cD9bPD9oa\"/></SPSSODescriptor></EntityDescriptor>"
      },
      "dateCreated": "2017-05-24T03:52:51Z",
      "lastUpdated": "2021-01-30T10:58:16Z"
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 11,
    "total": 11
  }
}
```

This endpoint retrieves all identity sources.  The master tenant will see identity sources for all tenants.

### HTTP Request

`GET <%= api_url %>/api/user-sources`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
phrase |  | Filter on wildcard match of name or description
name |  | Filter on exact match of name
type |  | Filter on exact match of type code
accountId |  | Filter on a Tenant ID. *Only available to the master tenant.*

## Get a Specific Identity Source

```shell
curl "<%= curl_url %>/api/user-sources/2" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "userSource": {
    "id": 4761,
    "name": "AD Example",
    "description": "Example AD",
    "code": "vaRnweSFq",
    "type": "activeDirectory",
    "active": true,
    "deleted": false,
    "autoSyncOnLogin": true,
    "externalLogin": false,
    "allowCustomMappings": false,
    "account": {
      "id": 1552,
      "name": "Auto Tenant 1"
    },
    "defaultAccountRole": {
      "id": 19112,
      "authority": "Default: User"
    },
    "config": {
      "url": "10.10.20.1",
      "domain": "qa.ad.myorg.com",
      "useSSL": "off",
      "bindingUsername": "admin",
      "bindingPassword": "************",
      "requiredGroup": "MyOrgUsers",
      "searchMemberGroups": true,
      "requiredGroupDN": "CN=MyOrgUsers,CN=Users,DC=qa,DC=ad,DC=myorg,DC=com"
    },
    "roleMappings": [
      {
        "sourceRoleName": "Mathematicians",
        "sourceRoleFqn": "CN=Mathematicians,CN=Users,DC=qa,DC=ad,DC=myorg,DC=com",
        "mappedRole": {
          "id": 19117,
          "authority": "Sub Role"
        }
      }
    ],
    "subdomain": "auto",
    "loginURL": "https://dev.myorg.com/login/account/auto",
    "providerSettings": {
    },
    "dateCreated": "2020-02-06T17:00:13Z",
    "lastUpdated": "2021-01-30T08:54:21Z"
  }
}

```

This endpoint retrieves a specific identity source.


### HTTP Request

`GET <%= api_url %>/api/user-sources/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the identity source

## Create an Identity Source

```shell
curl -XPOST "<%= curl_url %>/api/accounts/60/user-sources" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "userSource": {
    "type": "activeDirectory",
    "name": "Ninja AD",
    "config": {
      "url": "10.10.10.22",
      "domain": "ad.<%= company_domain %>",
      "useSSL": "on",
      "bindingUsername": "adadmin",
      "bindingPassword": "96119ec75001",
      "requiredGroup": "MyOrgUsers",
      "searchMemberGroups": false
    },
    "defaultAccountRole": {
      "id": 19
    },
    "roleMappings": [
      {
        "sourceRoleName": "Mathematicians",
        "sourceRoleFqn": "CN=Mathematicians,CN=Users,DC=qa,DC=ad,DC=myorg,DC=com",
        "mappedRole": {
          "id": 19117,
          "authority": "Euler"
        }
      },
      {
        "sourceRoleName": "Philosophers",
        "sourceRoleFqn": "CN=Philosophers,CN=Users,DC=qa,DC=ad,DC=myorg,DC=com",
        "mappedRole": {
          "id": 19118,
          "authority": "Socrates"
        }
      }
    ]
  }
}'
```

> The above command returns JSON structured like getting a single identity source: 

### HTTP Request

`POST <%= api_url %>/api/accounts/:accountId/user-sources`

### URL Parameters

Parameter | Description
--------- | -----------
accountId | The ID of the subtenant account to associate the identity source with

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
type      |  | Type code (ldap, jumpCloud, activeDirectory, okta, oneLogin, saml, customExternal, customApi)
description |  | Description (optional)
defaultAccountRole.id |  | Default Role ID
roleMappings | | List of [Role Mapping Objects](#json-parameters-for-role-mapping).
roleMappings | | *(Legacy)* Map of <%= application_name %> Role ID : Fully Qualified Role Name.
roleMappingNames | | *(Legacy)* Map of <%= application_name %> Role ID : Role Name.
config | | Map of configuration options which vary by type.

### JSON Parameters for Role Mapping

Parameter | Default | Description
--------- | ------- | -----------
mappedRole.id |  | Role ID of the <%= application_name %> role in the identity source tenant
mappedRole.authority |  | Role authority of the <%= application_name %> role in the identity source tenant
sourceRoleFqn      |  | Fully Qualified Name of the role in the identity source
sourceRoleName      |  | Name of the role in the identity source

This object defines a mapping from the <%= application_name %> role to the identity source role. The <%= application_name %> role is identified by passing `mappedRole.id` or `mappedRole.authority` and the identity source role must be identified by passing either `sourceRoleFqn` or `sourceRoleName` to match on.

### JSON Parameters for ldap

Parameter | Default | Description
--------- | ------- | -----------
config.url      |  | URL
config.bindingUsername      |  | Binding Username
config.bindingPassword      |  | Binding Password
config.requiredGroup      |  | Required group name (a.k.a. tag)
config.userFqnExpression      |  | User DN Expression eg. `uid=$username,cn=users,cn=account,dc=example,dc=veritas,dc=com`

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
config.SAMLSignatureMode      | NoSignature | SAML Request signing mode, possible values: *NoSignature*, *SelfSigned*, or *CustomSignature*
config.request509Certificate      |  | X.509 Certificate. Only applies when `SAMLSignatureMode=CustomSignature`
config.requestPrivateKey      |  | RSA Private Key. Only applies when `SAMLSignatureMode=CustomSignature`
config.doNotValidateSignature      | true | SAML Response signing flag, `"true"` or `"false"`
config.publicKey      |  | Signing Public Key. Only applies when `doNotValidateSignature=true`
config.privateKey      |  | Encryption RSA Private Key
config.givenNameAttribute      |  | Given Name Attribute Name
config.surnameAttribute      |  | Surname Attribute Name
config.roleAttributeName      |  | Role Attribute Name eg. `firstName`
config.requiredAttributeValue      |  | Role Attribute Required Value


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

## Updating an Identity Source

```shell
curl -XPUT "<%= curl_url %>/api/user-sources/3" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "userSource": {
    "type": "activeDirectory",
    "name": "Ninja AD",
    "config": {
      "url": "10.10.10.22",
      "domain": "ad.<%= company_domain %>",
      "useSSL": "on",
      "bindingUsername": "adadmin",
      "bindingPassword": "96119ec75001",
      "requiredGroup": "MyOrgUsers",
      "searchMemberGroups": "off"
    },
    "defaultAccountRole": {
      "id": 19
    },
    "roleMappings": [
      {
        "sourceRoleName": "Mathematicians",
        "sourceRoleFqn": "CN=Mathematicians,CN=Users,DC=qa,DC=ad,DC=myorg,DC=com",
        "mappedRole": {
          "id": 19119,
          "authority": "Pascal"
        }
      },
      {
        "sourceRoleName": "Philosophers",
        "sourceRoleFqn": "CN=Philosophers,CN=Users,DC=qa,DC=ad,DC=myorg,DC=com",
        "mappedRole": {
          "id": 19200,
          "authority": "Plato"
        }
      }
    ]
  }
}'
```

> The above command returns JSON structured like getting a single identity source: 

### HTTP Request

`PUT <%= api_url %>/api/user-sources/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the identity source

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description |  | Description (optional)
active      |  | Activate (true) or disable (false) the identity source
defaultAccountRole.id |  | Default Role ID
roleMappings | | List of [Role Mapping Objects](#json-parameters-for-role-mapping). This removes any mappings for roles which are not included in the list.
roleMappings | | *(Legacy)* Map of <%= application_name %> Role ID : Fully Qualified Role Name. This does NOT remove any mappings for roles which are not included in the map.
roleMappingNames | | *(Legacy)* Map of <%= application_name %> Role ID : Role Name. This does NOT remove any mappings for roles which  are not included in the map.
config | | Map of configuration options which vary by type.

## Updating Subdomain for an Identity Source

```shell
curl -XPUT "<%= curl_url %>/api/user-sources/3/subdomain" \
  -H "Authorization: BEARER <%= curl_token %>" \
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

`PUT <%= api_url %>/api/user-sources/:id/subdomain`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the user source

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
subdomain      |  | New Subdomain for account

This endpoint updates the subdomain for the account associated with the user source.

## Delete an Identity Source

```shell
curl -XDELETE "<%= curl_url %>/api/user-sources/3" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE <%= api_url %>/api/user-sources/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the user source

Will delete an identity source from the system and make it no longer usable.

<aside class="info">
If an identity source is tied to existing users, delete will fail.
</aside>
