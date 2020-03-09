#Sample JWT used here

Can be generated & verified from [jwt.io].

*Header:*
```json
{
  "alg": "RS256",
  "typ": "JWT"
}

```json
*Body:*
{
  "token_type": "Bearer",
  "aud": "zCEE",
  "sub": "ypge@au1.ibm.com",
  "realm": "ADCDPL",
  "iss": "liberty",
  "exp": 1681479469,
  "iat": 1581472269
}

#Commands to extract public / private key from the certificate.
```
[george@thinkpad-p50 intermediate]$ openssl rsa -in private/jwt.key.pem -outform PEM
writing RSA key
[george@thinkpad-p50 intermediate]$ openssl rsa -in private/jwt.key.pem -pubout -outform PEM
writing RSA key
```




