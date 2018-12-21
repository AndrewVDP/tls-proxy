## Build
Build the image:

```shell
docker build -t tls-proxy .
```

## Run an TLS Termination Proxy from the CLI
  Certs and Keys need to be mounted by volumes.
  Modify the below command to include the actual address or host name you want to proxy to, as well as the correct /path/to/secrets for your cert and key:

  ```shell
  docker run \
    -e TARGET_SERVICE=THE_ADDRESS_OR_HOST_YOU_ARE_PROXYING_TO \
    -v /path/to/secrets/cert.crt:/etc/ssl/certs/server.crt \
    -v /path/to/secrets/key.pem:/etc/ssl/certs/server.key \
    tls-proxy
  ```
