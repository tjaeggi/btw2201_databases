---
pdf: true
---
# Useful Docker commands

These commands can be used in the terminal. Docker-Desktop provides features for the same in the GUI.



## Verify that Container is running

``` yaml
docker ps -a
```
Lists containers stopped and running

oder auch

``` yaml
docker container ls
```

## Show Docker logs of a Container

``` yaml
docker logs <container name or id>
```

## Stop/Start/Restart Container

``` yaml
docker stop <container name or id>
```
``` yaml
docker start <container name or id>
```
``` yaml
docker restart <container name or id>
```

## Delete a Container

``` yaml

docker rm <container name or id>

```

## List Container-Images

``` yaml
docker image ls

```

## Delete Container-Image

``` yaml
docker rmi <image name or id>

```

## Remove all Containers

``` yaml
sudo docker rm -f $(sudo docker ps -a -q)

```

or

``` yaml
docker container prune
```

## Remove all images

``` yaml
sudo docker image remove -f $(sudo docker images -a -q)
```


## Enter Filesystem as root of created Container

``` yaml
docker exec -it <container name or id> sh
```


## Enter Filesystem as User XXX of created Container

``` yaml
docker exec -it  -u XXX <container name or id> sh
```
