docker build -t node_test_app .
docker run -it \
    -p 8080:8080\
    --mount type=bind,source="$(pwd)",target=/usr/src \
    --restart always \
    node_test_app