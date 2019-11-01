# Server_Unturned

## 3, 2, 1 ... PLAY !

Build docker container.

```
docker build -t unturned_server:0.0 .
```

Start a docker instance with this image.

```
docker run -it  -p 27015:27015/udp -p 27016:27016/udp unturned_server:0.0 /bin/bash
```

Start the server.

```
./untserver start
```

Now you can access the server via your machine's IP in your local network :)
