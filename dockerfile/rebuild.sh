
docker image rm router
docker image rm host

docker build . -t host --target host
docker build . -t router --target router
