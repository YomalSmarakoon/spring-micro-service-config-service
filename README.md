# spring-microservice
`mvn spring-boot:run` - start a Spring Boot application using Maven.

`docker info`

```shell

docker run -d --name vault -p 8200:8200 \
  -e 'VAULT_DEV_ROOT_TOKEN_ID=myroot' \
  -e 'VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:8200' \
  hashicorp/vault:1.16.1
```

```shell

 docker run -d   --network spring-micro-net   --name config-server-new   -p 8071:8071   config-server-new
```

[//]: # (Run:)

[//]: # (docker ps -a)

[//]: # ()
[//]: # (You’ll see something like:)

[//]: # (CONTAINER ID   IMAGE                    STATUS     PORTS                    NAMES)

[//]: # (eb9d837cbfe7   hashicorp/vault:1.16.1   Exited     8200/tcp                 vault)

[//]: # (9f6f5a6b1489   config-server-new        Exited     8071/tcp                 config-server-new)

[//]: # ()
[//]: # (Now remove both containers:)

[//]: # (docker rm -f vault config-server-new)

[//]: # ()
[//]: # (create a Shared Network &#40;only once&#41;)

[//]: # (If you haven’t created it yet:)

[//]: # (docker network create spring-micro-net)

[//]: # ()
[//]: # (&#40;If it already exists, Docker will say “network already exists,” which is fine.&#41;)

[//]: # ()
[//]: # (Run Vault)

[//]: # (docker run -d \)

[//]: # (--network spring-micro-net \)

[//]: # (--name vault \)

[//]: # (-p 8200:8200 \)

[//]: # (-e 'VAULT_DEV_ROOT_TOKEN_ID=myroot' \)

[//]: # (-e 'VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:8200' \)

[//]: # (hashicorp/vault:1.16.1)

[//]: # ()
[//]: # (Run Config Server)

[//]: # ()
[//]: # (Now start the Config Server container, on the same network, so it can reach Vault by the name vault:)

[//]: # (docker run -d \)

[//]: # (--network spring-micro-net \)

[//]: # (--name config-server-new \)

[//]: # (-p 8071:8071 \)

[//]: # (config-server-new)