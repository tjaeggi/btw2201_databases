# Useful Docker commands

These commands can be used in the terminal. Docker-Desktop provides features for the same in the GUI.

## Verify that Container is running

```
docker ps -a
```

## Show Docker logs of a Container

```
docker logs <container name or id>
```

## Stop/Start/Restart Container

```
docker stop <container name or id>
```
```
docker start <container name or id>
```
```
docker restart <container name or id>
```

## Delete a Container

```

docker rm <container name or id>

```

## List Container-Images

```
docker image ls

```

## Delete Container-Image

```
docker rmi <image name or id>
```

## Remove all Containers

```
sudo docker rm -f $(sudo docker ps -a -q)

```

or

```
docker container prune
```

## Remove all images

```
sudo docker image remove -f $(sudo docker images -a -q)
```


## Enter Filesystem as root of created Container

```
docker exec -it <container name or id> sh
```


## Enter Filesystem as User XXX of created Container

```
docker exec -it  -u XXX <container name or id> sh
```
