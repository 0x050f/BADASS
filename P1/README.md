# P1

## build

```
docker build . -t host --target host
docker build . -t router --target router
```

## run

```
docker run --name host -d host
docker run --name router -d router
```

## exec

```
docker exec -it host sh
docker exec -it router sh
```

## useful commands

`docker rm -f $(docker ps -a -q)`: delete all containers
