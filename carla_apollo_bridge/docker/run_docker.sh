xhost +
docker run \
    -it --rm \
    --privileged \
    -e DISPLAY \
    --gpus=all \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -tid \
    -v $PWD/..:/apollo/cyber/carla_bridge \
    --name carla_cyber_0.9.13 \
    -v /usr/lib/nvidia:/usr/lib/nvidia \
    -v /usr/lib32/nvidia:/usr/lib32/nvidia \
    carla_cyber:0.9.13
