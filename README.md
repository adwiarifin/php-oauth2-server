To use it, run following URL in your browser:

`http://localhost/authorize.php?response_type=code&client_id=testclient&state=xyz`

You will be prompted with an authorization form, and receive an authorization code upon clicking “yes”

The Authorization Code can now be used to receive an access token from your previously created token.php endpoint. Just call this endpoint using the returned authorization code:

`curl -u testclient:testpass http://localhost/token.php -d 'grant_type=authorization_code&code=YOUR_CODE'`

And just as before, you will receive an access token:

`{"access_token":"6f05ad622a3d32a5a81aee5d73a5826adb8cbf63","expires_in":3600,"token_type":"bearer","scope":null}`

Note: Be sure to do this quickly, because Authorization Codes expire in 30 seconds!