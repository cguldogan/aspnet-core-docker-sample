#ASP.NET CORE 2.2 APP RUNS ON DOCKER LINUX CONTAINER SAMPLE APP

* Build  
  
```
docker build --rm -f "Dockerfile" -t docker-app:latest .
```

* Run  
  
```
$ docker run --rm -it -p 5000:80/tcp docker-app:latest   
```

* Test

http://localhost:5000