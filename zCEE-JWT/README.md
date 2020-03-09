Header:
{
  "alg": "RS256",
  "typ": "JWT"
}

Body:
{
  "token_type": "Bearer",
  "aud": "zCEE",
  "sub": "ypge@au1.ibm.com",
  "realm": "ADCDPL",
  "iss": "liberty",
  "exp": 1681479469,
  "iat": 1581472269
}

[george@thinkpad-p50 intermediate]$ openssl rsa -in private/jwt.key.pem -outform PEM
writing RSA key
[george@thinkpad-p50 intermediate]$ openssl rsa -in private/jwt.key.pem -pubout -outform PEM
writing RSA key





