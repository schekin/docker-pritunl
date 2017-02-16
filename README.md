
[記事](http://sambaiz.net/article/39/)

```
$ docker run -itd -p 80:80 -p 443:443 -p 11001:11001/udp 11002:11002/udp 11003:11003/udp 11004:11004/tcp 11005:11005/tcp --privileged sambaiz/pritunl
$ docker logs <id>
...
Setup Key: ***********
...
```
