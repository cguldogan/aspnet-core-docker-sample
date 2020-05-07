## ASP.NET CORE 2.2 DOCKER LINUX CONTAINER SAMPLE APP

* Build  
  
```
docker build --rm -f "Dockerfile" -t docker-app:latest .
```

* Run  
  
```
$ docker run --rm -it -p 5000:80/tcp docker-app:latest   
```

* Test
```
http://localhost:5000
```

* Tools
_VSCode_ and _Docker extension_
![Docker extension for VSCode](https://i.imgur.com/SAb1zs9.png)

....
