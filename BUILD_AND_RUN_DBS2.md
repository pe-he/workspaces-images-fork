**Verzeichnis**  
cd /Users/ph/git_scratch/kasm-peter/workspaces-images-fork

**create network if it does not exist**
docker network create dbs2

**build docker container dbs2**  
docker build -t peterhertkorn/dbs2:develop -f dockerfile-dbs2 .

docker build -t peterhertkorn/dbs2:ws23 -f dockerfile-dbs2 .



**create docker container**  
docker run -it --name dbs2-test --network=dbs2 --shm-size=1024m -p 6901:6901 -v /Users/ph/Documents/Docker/dbs2/mki:/home/mki -e VNC_PW=dbs2 peterhertkorn/dbs2:develop



**create docker container**  
docker run -it --name dbs2-test-ws23 --network=dbs2 --shm-size=1024m -p 6901:6901 -v /Users/ph/Documents/Docker/dbs2/mki-ws23:/home/mki -e VNC_PW=dbs2 peterhertkorn/dbs2:ws23



**Push to Docker Hub**

docker login -u peterhertkorn (dann Access Token: Docker Hub Access Token)

docker push peterhertkorn/dbs2-workspace:ws23





Analog mit dbs2-arm-workspace

