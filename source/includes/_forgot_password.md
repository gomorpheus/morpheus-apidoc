<!-- # Forgot Password -->

## Forgot Password Email

```shell
curl -XPOST "$MORPHEUS_API_URL/api/forgot/send-email" \
  -H "Content-Type: application/json" \
  -d '{
    "username": "example"
  }'
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "msg": "Reset password instructions have been sent to the user 'example', if they exist."
}
```

This endpoint will trigger the *Reset your password* email to be sent to the specified user.

The [User](#users) is identified by `username` and, if they exist, will be notified via their configured email address. The email notification will indicate a Reset Password Request was made and it will include a token. 

Once you obtain the token from the email, it may be used to [reset the password](#reset-password) of your user.

<aside class="info">
This is an unauthorized endpoint and the response will always appear successful, it is not possible determine from the response whether the user exists or if an email was sent.
</aside>

### HTTP Request

`POST https://api.gomorpheus.com/api/forgot/send-email`


### Request Parameters

Parameter | Default | Description
--------- | ------- | -----------
username      |  | Username of the [User](#users) who would like to reset their password. Subtenant users will need to pass their subdomain prefix like <code>domain\username</code>. The default subdomain is the tenant account ID. Example: <code>2\neo</code>


## Reset Password

```shell
curl -XPOST "$MORPHEUS_API_URL/api/forgot/reset-password" \
  -H "Content-Type: application/json" \
  -d '{
    "token": "3d0e0f652f884196b2349756b89f3dfd"
    "password": "WywCx@L5rM5f3W^a"
  }'
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "msg": "Password has been updated and account unlocked"
}
```

This endpoint will reset the password for a user, updating it to the specified value. A secret `token` must be passed to identify the user who is being updated. 

<aside class="info">You can obtain this token by inspecting the URL of the "Click here to reset" link seen in the email.</aside>

### HTTP Request

`POST https://api.gomorpheus.com/api/forgot/reset-password`

### Request Parameters

Parameter | Default | Description
--------- | ------- | -----------
token      |  | The secret Reset Password token that was included in the [Forgot Password Email](#forgot-password-email).
password      |  | [User](#users) new password. This is the new password for your user
