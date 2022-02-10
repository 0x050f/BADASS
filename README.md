# BADASS
Bgp At Doors of Autonomous Systems is Simple

# Setup VM

ParrotOS
```
wget https://download.parrot.sh/parrot/iso/4.11.3/Parrot-home-4.11.3_virtual.ova
```

## Credentials
`user:toor`

## ssh

```
sudo apt-get install openssh-server
systemctl enable ssh
systemctl restart ssh
```

# P1

## build

```
docker build . -t host --target host
docker build . -t router --target router
```

## run (not needed bc done by GNS3)

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
