
docker image rm host
docker image rm router

docker build . -t router --target router
docker build . -t host --target host
