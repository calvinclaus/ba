To build the Docker container
```
docker build -t ivy .
```

To run the Docker container with X-Window System. You have to adjust the path you want to mount into src to a path on your system.
Also, be sure XQuartz has "Allow connections form network clients" enabled.
```
open -a XQuartz
docker run -it -v /Users/Calvin/Dropbox/TU/6.Semester/ba/src/:/src -e DISPLAY=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}'):0 ivy bash
```

