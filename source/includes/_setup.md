# Setup

<!-- The <%= application_name %> API can be used to initialize a fresh installation of the <%= application_name %> appliance.

## Initialize
 -->

```shell
curl -XPOST "<%= curl_url %>/api/setup/init" \
  -H "Content-Type: application/json" \
  -d '{
  "applianceName": "myappliance",
  "applianceUrl": "https://myappliance.<%= company_domain %>",
  "accountName": "root",
  "username": "admin",
  "password": "69f49632b13e",
  "email": "admin@<%= company_domain %>",
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

This will initialize a freshly installed <%= application_name %> appliance by creating the master [Tenant](#tenants) and [User](#users).

Setup includes connecting to the [<%= application_name %> Hub](<%= hub_url %>). This is done either by registering a new account or logging in to an existing account, which connects your appliance to your organization's hub account. By default, a community license key will be generated and installed in your new appliance.

If you choose not to connect to the hub, you will need to install a license key manually later on. A license can be installed using the [Install License](#install-license) endpoint.

Some community builds of the <%= application_name %> appliance will come with a pre-installed license, so you can skip the license install step.

The [Ping](#ping) api can be used to check if setup is needed or not, it returns a boolean flag called `setupNeeded` when the appliance is a fresh install and still needs to be setup.

<aside class="info">
This api can only be used successfully one time. Subsequent attempts will return an HTTP 400 error indicating the appliance is already setup.
</aside>


### HTTP Request

`POST <%= api_url %>/api/setup/init`

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
hubMode      | skip | Hub Mode ie. `register`, `login`, `skip`. The default is `skip`, which means do not connect to the hub. Pass `login` or `register` to connect with the [<%= application_name %> Hub](<%= hub_url %>) during setup.
hub      | | Object containing <%= application_name %> Hub connection settings. Either [Hub Register Parameters](#hub-register-parameters) or [Hub Login Parameters](#hub-login-parameters). This is only required if `hubMode` is `register` or `login`.

### Hub Register Parameters

Parameter | Default | Description
--------- | ------- | -----------
email      |  | Email Address of your new <%= application_name %> Hub user.
password      |  | Password of your new <%= application_name %> Hub user.
firstName      |  | First Name
lastName      |  | Last Name
jobTitle      |  | Job Title
companyName      |  | Company Name

These are the parameters for registering with the <%= application_name %> Hub. This will create a new hub account.

### Hub Login Parameters

Parameter | Default | Description
--------- | ------- | -----------
email      |  | Email Address of your <%= application_name %> Hub user.
password      |  | Password of your <%= application_name %> Hub user.

These are the parameters for logging into the <%= application_name %> Hub account. This will link this appliance to your existing hub account.
