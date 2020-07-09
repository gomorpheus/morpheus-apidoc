# Setup

<!-- The Morpheus API can be used to initialize a fresh installation of the Morpheus appliance.

## Initialize
 -->

```shell
curl -XPOST "$MORPHEUS_API_URL/api/setup/init" \
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

This will initialize a freshly installed Morpheus appliance by creating the master [Tenant] (#tenants) and [User](#users).

Setup includes connecting to the [Morpheus Hub](https://morpheushub.com). This is done either by registering a new account or logging in to an existing account, which connects your appliance to your organization's hub account. By default, a community license key will be generated and installed in your new appliance.

If you choose not to connect to the hub, you will need to install a license key manually later on. A license can be installed using the [Install License](#install-license) endpoint.

Some community builds of the Morpheus appliance will come with a pre-installed license, so you can skip the license install step.

<aside class="info">
This api can only be used successfully one time. Subsequent attempts will return an HTTP 400 error indicating the appliance is already setup.
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
backups      | false | Enable Backups
monitoring      | false | Enable Monitoring
logs      | false | Enable Logs
hubMode      | skip | Hub Mode ie. `register`, `login`, `skip`. The default is `skip`, which means do not connect to the hub. Pass `login` or `register` to connect with the [Morpheus Hub](https://morpheushub.com) during setup.
hub      | | Object containing Morpheus Hub connection settings. Either [Hub Register Parameters](#hub-register-parameters) or [Hub Login Parameters](#hub-login-parameters). This is only required if `hubMode` is `register` or `login`.

### Hub Register Parameters

Parameter | Default | Description
--------- | ------- | -----------
email      |  | Email Address of your new Morpheus Hub user.
password      |  | Password of your new Morpheus Hub user.
firstName      |  | First Name
lastName      |  | Last Name
jobTitle      |  | Job Title
companyName      |  | Company Name

These are the parameters for registering with the Morpheus Hub. This will create a new hub account.

### Hub Login Parameters

Parameter | Default | Description
--------- | ------- | -----------
email      |  | Email Address of your Morpheus Hub user.
password      |  | Password of your Morpheus Hub user.

These are the parameters for logging into the Morpheus Hub account. This will link this appliance to your existing hub account.
