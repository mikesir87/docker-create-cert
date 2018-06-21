# Cert Creation 

I frequently need to create self-signed certs for various reasons. This utility makes it easy to create a cert with an arbitrary number of Subject Alternate Names (SANs).

## Running

```
docker container run --rm -v $(pwd):/out mikesir87/create-cert my-app.localhost another-app.localhost
```

You'll see a `key.pem` and `cert.pem` in the current directory. The key will be self-signed with SANs of `my-app.localhost` and `another-app.localhost`.

