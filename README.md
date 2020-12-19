# nodejs
A nodejs web app for CICD pipeline with jenkins

# commands
sudo apt-get update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker -v

ids=$(sudo docker ps -a -q)
for id in $ids
do
  echo "$id"
  sudo docker stop $id && sudo docker rm $id
done

ids=$(sudo docker images -q)
for id in $ids
do
  echo "$id"
  sudo docker rmi $id
done

sudo docker build /home/ubuntu/workspace/nodejs_main -t webapp

sudo docker run -d -p 3000:1000 webapp
