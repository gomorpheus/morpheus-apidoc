# Contacts

These entities are notification settings such as name, email and phone number. Contacts are used by [alerts](#alerts) to send notifications.

## Get All Contacts

```shell
curl "<%= curl_url %>/api/monitoring/contacts" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "contacts": [
    {
      "id": 1,
      "emailAddress": "admin@yourapp.com",
      "name": "Admin",
      "smsAddress": "555-555-5555",
      "slackHook": null
    }
  ],
  "meta": {
    "offset": 0,
    "max": "1",
    "size": 1,
    "total": 8
  }
}
```

This endpoint retrieves all contacts.

### HTTP Request

`GET <%= api_url %>/api/monitoring/contacts`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name or email or sms

## Get a Specific Contact

```shell
curl "<%= curl_url %>/api/monitoring/contacts/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "contact": {
    "id": 1,
    "emailAddress": "admin@yourapp.com",
    "name": "Admin",
    "smsAddress": "555-555-5555",
    "slackHook": null
  }
}
```

This endpoint retrieves a specific contact.

### HTTP Request

`GET <%= api_url %>/api/monitoring/contacts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the contact

## Create a Contact

```shell
curl -XPOST "<%= curl_url %>/api/monitoring/contacts" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"contact":{
    "name": "IT Admin",
    "emailAddress": "admin@yourapp.com",
    "smsAddress": "555-555-6789"
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single contact

### HTTP Request

`POST <%= api_url %>/api/monitoring/contacts`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Unique name scoped to your account for the contact
emailAddress      |  | Email notification address
smsAddress      |  | SMS notification address
slackHook      |  | Slack Hook

## Updating a Contact

```shell
curl -XPUT "<%= curl_url %>/api/monitoring/contacts/3" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"contact":{
    "name": "Jane Doe"
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single contact 

### HTTP Request

`PUT <%= api_url %>/api/monitoring/contacts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the contact

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Unique name scoped to your account for the contact
emailAddress      |  | Email notification address
smsAddress      |  | SMS notification address
slackHook      |  | Slack Hook

## Delete a Contact

```shell
curl -XDELETE "<%= curl_url %>/api/monitoring/contacts/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE <%= api_url %>/api/monitoring/contacts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the contact
