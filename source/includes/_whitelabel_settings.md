# Whitelabel Settings

Provides API interfaces for managing whitelabel settings within <%= application_name %>.

## Get Whitelabel Settings

```shell
curl "<%= curl_url %>/api/whitelabel-settings" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "whitelabelSettings": {
    "enabled": true,
    "applianceName": "My Appliance",
    "disableSupportMenu": false,
    "headerLogo": "http://10.0.2.2:8080/storage/uploads/uploads/ApplianceInstance/1/headerLogo/header_logo_original.png",
    "footerLogo": "http://10.0.2.2:8080/storage/uploads/uploads/ApplianceInstance/1/footerLogo/footer_logo_original.png",
    "loginLogo": "http://10.0.2.2:8080/storage/uploads/uploads/ApplianceInstance/1/loginLogo/login_logo_original.png",
    "favicon": "http://10.0.2.2:8080/storage/uploads/uploads/ApplianceInstance/1/favicon/favicon_original.ico",
    "headerBgColor": "#ffffff",
    "headerFgColor": "black",
    "navBgColor": "#ffffff",
    "navFgColor": "pink",
    "navHoverColor": "green",
    "primaryButtonBgColor": "red",
    "primaryButtonFgColor": "blue",
    "primaryButtonHoverBgColor": "orange",
    "primaryButtonHoverFgColor": "gray",
    "footerBgColor": "brown",
    "footerFgColor": "yellow",
    "loginBgColor": "aqua",
    "overrideCss": "div {\r\n    font-size: 16px;\r\n}",
    "copyrightString": "My copywriter",
    "termsOfUse": "These are my terms of use.",
    "privacyPolicy": "Here is my privacy policy.",
    "supportMenuLinks": [
      {
        "url": "http://helpmenu.com",
        "label": "Help",
        "labelCode": "help"
      }
    ]
  }
}    
```

This endpoint retrieves whitelabel settings.

### HTTP Request

`GET <%= api_url %>/api/whitelabel-settings`


## Update Whitelabel Settings

```shell
curl -XPUT "<%= curl_url %>/api/whitelabel-settings" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{"whitelabelSettings": {
        "navBgColor": "#fff",
        "enabled": true,
        "applianceName": "My Appliance",
        "disableSupportMenu": false,
        "resetHeaderLogo": true,
        "resetFooterLogo": true,
        "resetLoginLogo": true,
        "resetFavicon": true,
        "headerBgColor": "#fff",
        "headerFgColor": "black",
        "navFgColor": "pink",
        "navHoverColor": "green",
        "primaryButtonBgColor": "red",
        "primaryButtonFgColor": "blue",
        "primaryButtonHoverBgColor": "orange",
        "primaryButtonHoverFgColor": "gray",
        "footerBgColor": "brown",
        "footerFgColor": "yellow",
        "loginBgColor": "cyan",
        "copyrightString": "My copywriter",
        "overrideCss": "div {\n    font-size: 16px;\n}",
        "termsOfUse": "These are my terms of use.",
        "privacyPolicy": "Here is my privacy policy.",
        "supportMenuLinks": [
          {
            "url": "http://helpme.com",
            "label": "Help Label",
            "labelCode": "help-code"
          },
          {
            "url": "http://helpmemore.com",
            "label": "Help More Label",
            "labelCode": "help-more-code"
          }
        ]
      }}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT <%= api_url %>/api/whitelabel-settings`

### JSON Parameters

Parameter | Description
--------- | -----------
enabled | Can be used to enable / disable whitelabel feature [true&#124;false]
applianceName | Appliance name. Master account only
disableSupportMenu | Can be used to disable support menu [true&#124;false]
resetHeaderLogo | Resets header logo to default header logo [true&#124;false]
resetFooterLogo | Resets footer logo to default footer logo [true&#124;false]
resetLoginLogo | Resets login logo to default login logo [true&#124;false]
resetFavicon | Resets favicon to default favicon [true&#124;false]
headerBgColor | Header background color
headerFgColor | Header foreground color
navBgColor | Nav background color
navFgColor | Nav foreground color
navHoverColor | Nav hover color
primaryButtonBgColor | Primary button background color
primaryButtonFgColor | Primary button foreground color
primaryButtonHoverBgColor | Primary button hover background color
primaryButtonHoverFgColor | Primary button hover foreground color
footerBgColor | Footer background color
footerFgColor | Footer foreground color
loginBgColor | Login background color
copyrightString | Copyright String
overrideCss | Override CSS
termsOfUse | Terms of use content
privacyPolicy | Privacy policy content
supportMenuLinks | Support menu links. See [Support Menu Links](#support-menu-links)
        
#### Support Menu Links

Parameter | Description
--------- | -----------
url | URL to support menu link
label | Label for support menu link
labelCode | Label code for support menu link


## Update Images

```shell
curl -XPOST "<%= curl_url %>/api/whitelabel-settings/images" \
  -H "Authorization: BEARER access_token" \
  -F 'headerLogo.file=@filename.png;type=image/png' \
  -F 'footerLogo.file=@filename.png;type=image/png' \
  -F 'loginLogo.file=@filename.png;type=image/png' \
  -F 'favicon.file=@filename.ico;type=image/ico'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`POST <%= api_url %>/api/whitelabel-settings/images`

### HTTP Headers

Header | Description
--------- | -----------
Content-Type     | `multipart/form-data` is expected.

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
headerLogo.file | N | Header logo image file, valid image types [png&#124;jpg&#124;svg]
resetHeaderLogo | N | Resets header logo to default [true&#124;false]
footerLogo.file | N | Footer logo image file, valid image types [png&#124;jpg&#124;svg]
resetFooterLogo | N | Resets footer logo to default [true&#124;false]
loginLogo.file | N | Login logo image file, valid image types [png&#124;jpg&#124;svg]
resetLoginLogo | N | Resets login logo to default [true&#124;false]
favicon.file | N | Favicon image file, valid image type ico
resetFavicon | N | Resets favicon logo to default [true&#124;false]

Uploads whitelabel images.  Expects multipart form data as the request format, not JSON.


## Reset Image

```shell
curl -XDELETE "<%= curl_url %>/api/whitelabel-settings/images/:imageType" \
  -H "Authorization: BEARER access_token" 
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE <%= api_url %>/api/whitelabel-settings/images/:imageType`

Resets the specified image to the <%= application_name %> default. See [Valid Image Types](#valid-image-types)

#### Valid Image Types
* headerLogo
* footerLogo 
* loginLogo 
* favicon


## Download Image

```shell
curl -XGET "<%= curl_url %>/api/whitelabel-settings/images/:imageType" \
  -H "Authorization: BEARER access_token" 
```

> The above command returns binary output of the specified image

### HTTP Request

`GET <%= api_url %>/api/whitelabel-settings/images/:imageType`

Downloads the specified image. See [Valid Image Types](#valid-image-types)
