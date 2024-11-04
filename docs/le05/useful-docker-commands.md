# Useful Docker commands

These commands can be used in the terminal. Docker-Desktop provides features for the same in the GUI.

## Verify that the container is running

```
docker ps -a
```

## Show Docker logs

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

## Delete the container

```

docker rm <container name or id>

```

## List Images

```
docker image ls

```

## Delete the downloaded image

```
docker rmi <image name or id>
```

## Remove all containers

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


## Enter the filesystem as root of the created container

```
docker exec -it <container name or id> sh
```


## Enter Filesystem as User XXX

```
docker exec -it  -u XXX <container name or id> sh
```
