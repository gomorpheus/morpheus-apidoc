# Setup

The Morpheus API can be used to initialize a fresh installation of the morpheus appliance.

## Check Appliance

```shell
curl "$MORPHEUS_API_URL/api/setup/check"
```

> The above command returns JSON structured like this:

```json
{
    "success":true,
    "buildVersion":"3.5.1",
    "setupNeeded":false
}
```

This endpoint can be used to check if the appliance needs to be setup or not, and what version it is running.

### HTTP Request

`GET https://api.gomorpheus.com/api/setup/check`


## Initialize Appliance

```shell
curl -XPOST "$MORPHEUS_API_URL/api/setup/init" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "applianceName": "myenterprise-morpheus",
  "applianceUrl": "https://morpheus.myenterprise.com",
  "accountName": "root",
  "username": "admin",
  "password": "69f49632b13e",
  "email": "admin@myenterprise.com",
  "firstName": "Admin"
    
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Initialize the appliance, creating the master account and user.

<aside class="info">
This api can only be used successfully one time. Subsequent attempts will return an HTTP 400 error.
</aside>


### HTTP Request

`POST https://api.gomorpheus.com/api/setup/init`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
applianceUrl      |  | Appliance URL
applianceName      |  | Appliance Name
accountName      |  | Master Account Name
username      |  | Username
password      |  | Password
email      |  | Email Address
firstName      |  | First Name
lastName      |  | Last Name

