# App Templates

This is gone, Blueprints it is...

Provides a list of all available app templates that can be used for creating an application as well as an ability to define custom app templates.


## Get All App Templates

```shell
curl "$MORPHEUS_API_URL/api/app-types" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this

```json
{
  "appTypes": [
    {
      "id": 3,
      "name": "Tomcat - Mysql",
      "code": "tomcatmysql",
      "instanceTypes": []
    },
    appTypeCount: 1
  ]
}
```

### HTTP Request

`GET https://api.gomorpheus.com/api/app-types`

## Get Specific App Template

```shell
curl "$MORPHEUS_API_URL/api/app-types/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this

```json
{
  "success": true,
  "appType": {
    "id": 1,
    "name": "Tomcat - Mysql",
    "code": "tomcatmysql",
    "instanceTypes": []
  }
}
```
### HTTP Request

`GET https://api.gomorpheus.com/api/app-types/:id`

