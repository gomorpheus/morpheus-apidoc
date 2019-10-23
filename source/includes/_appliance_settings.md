# Appliance Settings

Provides API interfaces for managing appliance settings within Morpheus

## Get Appliance Settings

```shell
curl "https://api.gomorpheus.com/api/appliance-settings" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "applianceSettings": {
    "applianceUrl": "http://foo.com",
    "internalApplianceUrl": "172.16.0.1",
    "corsAllowed": "bar.com",
    "registrationEnabled": true,
    "defaultRoleId": "2",
    "defaultUserRoleId": "4",
    "dockerPrivilegedMode": true,
    "expirePwdDays": "1000",
    "disableAfterAttempts": "100",
    "disableAfterDaysInactive": "2000",
    "warnUserDaysBefore": "10",
    "smtpMailFrom": "dan.devilbiss@gmail.com",
    "smtpServer": "smtp.gmail.com",
    "smtpPort": "465",
    "smtpSSL": true,
    "smtpTLS": true,
    "smtpUser": "dan.devilbiss@gmail.com",
    "smtpPassword": "************",
    "proxyHost": "proxy.com",
    "proxyPort": "8080",
    "proxyUser": "ddevilbiss",
    "proxyPassword": "************",
    "proxyDomain": "proxy.com",
    "proxyWorkstation": "work",
    "currencyProvider": "openexchange",
    "currencyKey": "1234",
    "enabledZoneTypes": [
      {
        "id": 12,
        "name": "Amazon"
      }
    ]
  }
}     
```

This endpoint retrieves appliance settings.

### HTTP Request

`GET https://api.gomorpheus.com/api/appliance-settings`


## Update Appliance Settings

```shell
curl -XPUT "https://api.gomorpheus.com/api/appliance-settings" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{"applianceSettings": {
        "registrationEnabled": true,
        "applianceUrl": "http://10.0.2.2:8080/",
        "internalApplianceUrl": null,
        "corsAllowed": null,
        "dockerPrivilegedMode": true,
        "expirePwdDays": 30,
        "disableAfterAttempts": 5,
        "disableAfterDaysInactive": 90,
        "warnUserDaysBefore": 10,
        "smtpMailFrom": "stubby.toes@gmail.com",
        "smtpServer": "smtp.gmail.com",
        "smtpPort": 465,
        "smtpSSL": true,
        "smtpTLS": true,
        "smtpUser": "stubby.toes@gmail.com",
        "smtpPassword": "password",
        "proxyHost": null,
        "proxyPort": null,
        "proxyUser": "stubbytoes",
        "proxyPassword": "password",
        "proxyDomain": null,
        "proxyWorkstation": null,
        "currencyProvider": "openexchange",
        "currencyKey": null,
        "enableZoneTypes": [1, 2],
        "disableZoneTypes": [9],
        "defaultRoleId": 2,
        "defaultUserRoleId": 4
      }}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/appliance-settings`

### JSON Parameters

Parameter | Description
--------- | -----------
applianceUrl | Appliance URL
internalApplianceUrl | Internal Appliance URL (PXE)
corsAllowed | API Allowed Origins
registrationEnabled  | Registration enabled (true, false)
defaultRoleId | Default tenant role ID
defaultUserRoleId | Default user role ID
dockerPrivilegedMode | Docker privileged mode (true, false)
expirePwdDays | Expire password after days. Setting to 0 disabled this feature
disableAfterAttempts | Disable user after number of attempts. Set to 0 to disable this feature
disableAfterDaysInactive | Disable user if inactive for specified days. Set to 0 to disable this feature
warnUserDaysBefore | Send warning email before deactivating. Set to 0 to disable this feature
smtpFromEmail | From email address
stmpServer | SMTP server / host
smtpPort | SMTP port
smtpSSL | Use SSL for SMTP connection
smtpTLS | Use TLS for SMTP connections
smtpUser | SMTP username
smtpPassword | SMTP password
proxyHost | Proxy host
proxyPort | Proxy port
proxyUser | Proxy username
proxyPassword | Proxy password
proxyDomain | Proxy domain
proxyWorkstation | Proxy workstation
currencyProvider | Currency provider
currencyKey | Currency provider API key
enableAllZoneTypes | Set all cloud types enabled status on, overrides enableZoneTypes and disableZoneTypes parameters
enableZoneTypes | List of cloud type IDs to set enabled status on
disableZoneTypes | List of cloud type IDs to set enabled status off