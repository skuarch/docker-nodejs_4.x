docker build --no-cache=true -t skuarch/nodejs:4.x .
docker run --name node -itd -v /home/skuarch/NodeProjects/:/NodeProjects -p 9999:9999 skuarch/nodejs:4.x /bin/bash
docker start node
docker exec -i -t node /bin/bash
