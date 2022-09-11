sudo su
usermod -aG sudo labsuser
sudo usermod -aG sudo labsuser
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install     apt-transport-https     ca-certificates     curl     gnupg     lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo   "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker labsuser
whoami
docker
kubeadm
https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64
wget https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64
chmod +x ./ttyd.x86_64 
./ttyd.x86_64 --version
sudo ./ttyd.x86_64 /usr/local/bin/ttyd
sudo mv ./ttyd.x86_64 /usr/local/bin/ttyd
ttyd --version
ttyd
ttyd /bin/bash
/opt/scripts/voc_start_dcv_and_ttyd_and_monitor.sh
/opt/scripts/voc_start_ttyd.sh 
sudo vi /etc/dcv/dcv.conf 
sudo reboot
/opt/scripts/voc_start_dcv_and_ttyd_and_monitor.sh
sudo /opt/scripts/voc_start_dcv_and_ttyd_and_monitor.sh
sudo reboot
sudo /opt/scripts/voc_start_dcv_and_ttyd_and_monitor.sh
docker ps
docker pull docker.io/centos
docker images
docker run -dt centos
docker -ps
docker -p
docker ps
docker run -dt centos
docker ps
docker rename laughing_shamir gunjan
docker ps
docker images
docker stop 5b556f20ff21
docker ps
docker ps -a
docker pull openshift/hello-openshift
docker run --name=app1 -d opeshift/hello-openshift
docker images
docker run --name=app1 -d openshift/hello-openshift
docker ps
docker inspect app1
curl 172.17.0.3:8080
docker run -name=mysqld mysql:5:6
docker run --name=mysqld mysql:5:6
docker run --name=mysqld mysql
docker -e MYSQL_ROOT_PASSWORD 
docker -e MYSQL_ROOT_PASSWORD=sysdba 
docker run --name=mysqld mysql -e MYSQL_ROOT_PASSWORD=sysdba
docker run --name=mysqld-new mysql -e MYSQL_ROOT_PASSWORD=sysdba
pwd
docker run --name=DB-GUNJAN -e MYSQL_ROOT_PASSWORD=sysdba -e MYSQL_DATABASE=sysdba -d mysql:5.6
docker ps
docker run --name=DB1 -e MYSQL_ROOT_PASSWORD=sysdba -e MYSQL_DATABASE=sysdba -e MYSQL_USER=red1 -e MYSQL_PASSWORD=red1 -d mysql:5.6
docker exec -it c041e8570a5532ffae200b58f79b7dc2aeedd25eae55e18fb2e7437ccfc69973
docker ps
docker exed -it c041e8570a55
docker exed -it c041e8570a55 bash
docker ps
docker exec -it c041e8570a55 bash
docker run --name=postgres postgres:tag
docker run --name=postgres postgres
docker run --name=PGDB1 -e POSTGRES_PASSWORD=postgres -d postgres:10
docker ps
docker exec -it 2a103a6742eb bash
docker run --name=PGDB2 -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=root -e POSTGRES_DB=PG1 -d postgres:10
docker exec -it 0da326e100414e13c3a676830da90507b1ea60d98bfe5a1a0d72d614313926dd bash 
docker ps
docker exec -it 0da326e10041
docker exec -it 0da326e10041 bash
docker run --name=DB1 -v /root/datadir -e MYSQL_ROOT_PASSWORD=sysdba -e MYSQL_DATABASE=sysdba -e MYSQL_USER=red1 -e MYSQL_PASSWORD=red1 -d mysql:5.6
docker run --name=DBV -v /root/datadir -e MYSQL_ROOT_PASSWORD=sysdba -e MYSQL_DATABASE=sysdba -e MYSQL_USER=red1 -e MYSQL_PASSWORD=red1 -d mysql:5.6
docker exec -it e44fb8186ad8380a415857e73b21cea61a3652e0379fcc5044bd6710adee194c bash
docker run --name=DBV1 -v /root/datadir:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=sysdba -e MYSQL_DATABASE=sysdba -e MYSQL_USER=red1 -e MYSQL_PASSWORD=red1 -d mysql:5.6
docker exec -it DBV1
docker exec -it e77018276eb85cd3513f50b91f723a88546315e145060ba8fbc755ff4d17adbc
docker -ps
docker ps
docker exec -it e77018276eb8 bash
docker run --name=DBV2 -v /root/own/datadir:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=sysdba -e MYSQL_DATABASE=sysdba -e MYSQL_USER=red1 -e MYSQL_PASSWORD=red1 -d mysql:5.6
docker ps
docker exec -it 0c077192474d bash
docker ps
docker inspect
docker inspect 0c077192474d
ls -lrt /
cd /root/
ls -rlt
docker run --name=DBV4 -v /datadir:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=sysdba -e MYSQL_DATABASE=sysdba -e MYSQL_USER=red1 -e MYSQL_PASSWORD=red1 -d mysql:5.6
cd /
ls -rlt
cd datadir/
ls -rlt
docker -ps
docker ps
docker exec -it 97ec76271746 bash
ls -rlt
sudo kubeadm reset
sudo hostnamectl set-hostname master.example.com
exec bash
hostname
sudo kubeadm init --pod-network-cidr=192.168.0.0/16
sudo <<EOF | sudo tee /etc/docker/daemon.json
{
 "exec-opts":[native.cgroupdriver=systemd"],
 "log-driver":"json-file",
 "log-opts":{
  "max-size":"100m"
 },
 "storage-driver":"overlay2"
}

sudo mkdir /etc/docker
sudo <<EOF | sudo tee /etc/docker/daemon.json
{
 "exec-opts":[native.cgroupdriver=systemd"],
 "log-driver":"json-file",
 "log-opts":{
  "max-size":"100m"
 },
 "storage-driver":"overlay2"
}
EOF

sudo <<EOF | sudo tee /etc/docker/daemon.json{ "exec-opts":[native.cgroupdriver=systemd"], "log-driver":"json-file", "log-opts":{  "max-size":"100m" }, "storage-driver":"overlay2"}EOF
sudo <<EOF | sudo tee /etc/docker/daemon.json{ "exec-opts":[native.cgroupdriver=systemd"], "log-driver":"json-file", "log-opts":{  "max-size":"100m" }, "storage-driver":"overlay2"} EOF
sudo << EOF | sudo tee /etc/docker/daemon.json { "exec-opts":[native.cgroupdriver=systemd"], "log-driver":"json-file", "log-opts":{  "max-size":"100m" }, "storage-driver":"overlay2"}EOF

cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}

cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}


cat << EOF | sudo tee /etc/docker/daemon.json { "exec-opts":[native.cgroupdriver=systemd"], "log-driver":"json-file", "log-opts":{  "max-size":"100m" }, "storage-driver":"overlay2"}EOF



cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

sudo kubeadm init --pod-network-cidr=192.168.0.0/16
sudo kubeadm reset
sudo kubeadm init --pod-network-cidr=192.168.0.0/16
sudo mkdir /etc/docker
cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

sudo kubeadm init --pod-network-cidr=192.168.0.0/16
sudo systemctl enable docker
sudo systemctl daemon-reload
sudo systemctl restart docker
sudo swapoff -a
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
sudo kubeadm token create --print-join-command
kubectl apply -f https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')
kubectl get nodes
sudo chown $(id -u):$(id -g) $HOME/.kube/config
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
sudo kubeadm token create --print-join-command
sudo kubeadm reset
sudo kubeadm init --pod-network-cidr=192.168.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
sudo kubeadm token create --print-join-command
kubectl apply -f https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')
kubectl get nodes
kubectl get namespaces
kubectl get pods --all-namespaces
ls
vi yaml10.yaml
kubectl create -f yaml10.yaml 
vi yaml10.yaml
kubectl create -f yaml10.yaml 
vi yaml10.yaml
kubectl create -f yaml10.yaml 
vi yaml10.yaml
kubectl create -f yaml10.yaml 
vi yaml10.yaml
kubectl create -f yaml10.yaml 
vi yaml10.yaml
kubectl create -f yaml10.yaml 
vi yaml10.yaml
kubectl create -f yaml10.yaml 
vi yaml10.yaml
kubectl create -f yaml10.yaml 
kubectl exec -it httpd bash
kubectl get pods
kubectl get svc -o wide
kubectl get pods
kubectl describe pods
curl http://10.44.0.1
cp yaml10.yaml yaml11.yaml 
vi yaml11.yaml
vi yaml10.yaml
vi yaml11.yaml
kubectl create -f yaml11.yaml 
kubectl get pods
kubectl describe pod httpd-gunjan
kubectl get pods
kubectl exec -it httpd-gunjan bash
kubectl describe pod httpd-gunjan
curl http://10.47.0.1
vi svchttpd.yaml
kubectl create -f svchttpd.yaml 
vi svchttpd.yaml
kubectl create -f svchttpd.yaml 
kubectl get svc
curl 10.111.77.82:8081
cp yaml10.yaml yaml12.yaml 
vi yaml12.yaml
cp yaml12.yaml yaml13.yaml
vi yaml13.yaml
kubectl create -f yaml12.yaml 
kubectl create -f yaml13.yaml 
kubectl exec -it opens1 bash
kubectl get pods
kubectl exec -it opens1 bash
kubectl describe pod opens1
kubectl exec -it opens1 bash
curl 10.44.0.2:8080
kubectl get pods
kubectl describe pod opens2
curl 10.47.0.2:8080
kubectl get pods
kubectl create deployment myhttpd --image=docker.io/httpd --dry-run=client -o yaml > httpdnew.yaml
vi httpdnew.yaml 
kubectl create -f httpdnew.yaml 
kubectl get deployment -o wide
ls
ls -lrt
cat yaml10.yaml
cat svchttpd.yaml 
ls -lrt
vi yaml10.yaml 
vi yaml12.yaml 
vi svchttpd.yaml 
vi yaml12.yaml 
kubectl get pod
vi openshift1-pod.yaml
kubectl create -f openshift1-pod.yaml 
cp openshift1-pod.yaml openshift2-pod.yaml 
vi openshift2-pod.yaml 
kubectl create -f openshift2-pod.yaml 
kubectl get pod
kubectl get pod -o wide
curl 10.44.0.2:80
curl 10.44.0.2:8080
curl 10.47.0.4:8080
vi postgres.yaml
history
vi postgres.yaml
history
vi postgres.yaml
kubectl -f create postgres.yaml 
kubectl create -f postgres.yaml 
vi postgres.yaml
kubectl create -f postgres.yaml 
vi postgres.yaml
kubectl create -f postgres.yaml 
vi mysql.yaml
kubectl create -f mysql.yaml 
kubectl get pos
kubectl get pod
kubectl exec -it mysql1 bash
vi mysql.yaml 
kubectl exec -it mysql1 bash
kubectl get pod
kubectl exec -it postgres1 bash
vi postgres.yaml
kubectl exec -it postgres1 bash
history
kubectl exec -it postgres1 bash
exit
kubectl get pod
ls
vi postgres.yaml
kubectl create -f postgres.yaml 
kubectl exec -it postgres2 bash
history
kubectl exec -it postgres1 bash
kubectl create deployment test1 --image=docker.io/httpd
kubectl get deployment
kubectl scale deployments test1 --replicas=4
kubectl get deployment
kubectl get deployment -o wide
kubectl get pos
kubectl get pod
kubectl delete pod test1-77bfc89b9d-6vtsz
kubectl get pod
kubectl expose deployment test1 --port=80
kubectl get service
curl 10.99.183.46:80
kubectl describe svc test
history
vi svchttpd.yaml
ls
vi openshift1-pod.yaml
kubectl create deployment openshift-gunjan --image=openshift/hello-openshift --replicas=3
kubectl get deployment -o wide
kubectl expose deployment openshift-gunjan --port=8081
kubectl describe svc openshift-gunjan
curl 10.96.6.244:8081
kubectl expose deployment openshift-gunjan --port=80
kubectl create deployment openshift-gunjan1 --image=openshift/hello-openshift --replicas=3
kubectl expose deployment openshift-gunjan1 --port=80
kubectl describe svc openshift-gunjan
kubectl get svc -o wide
curl 10.100.197.219:80
kubectl expose deployment openshift-gunjan3 --port=8082
kubectl create deployment openshift-gunjan3 --image=openshift/hello-openshift --replicas=3
kubectl expose deployment openshift-gunjan3 --port=8082
kubectl get svc -o wide
curl 10.99.197.215
curl 10.99.197.215:8082
curl 10.99.197.215
curl 10.111.77.82:8081
curl 10.100.197.219:80
curl 10.99.197.215
curl 10.99.183.46:80
kubectl get svc -o wide
curl 10.100.197.219
curl 10.100.197.219:80
vi svchttpd.yaml 
curl 10.100.197.219:80
kubectl delete svc openshift-gunjan1
kubectl get svc -o wide
kubectl delete svc openshift-gunjan3
kubectl delete svc openshift-gunjan
kubectl get svc -o wide
kubectl expose deployment openshift-gunjan --port=80
kubectl get svc -o wide
curl 10.102.246.151
curl 10.102.246.151:80
cat > openshift-dep.yaml
kubectl create -f openshift-dep.yaml 
cat > openservice.yaml
kubectl create -f openservice.yaml 
kubectl get svc -o wide
curl 10.106.241.88:8080
curl 10.106.241.88
curl http://10.106.241.88
curl 10.106.241.88:80
curl 10.106.241.88:8080
oc openshift-gunjan
kubectl get svc -o wide
kubectl describe svc openservice
curl 10.44.0.13:80
kubectl describe svc openservice
kubectl get svc -o wide
curl 10.111.77.82:8081
vi svchttpd.yaml 
vi yaml12.yaml 
kubectl get pos
kubectl get pod
kubectl describe pod opens1
curl 10.44.0.2:80
kubectl get pod
kubectl get svc -o wide
kubectl delete svc openshift-gunjan
kubectl get deployement -o wide
kubectl get deployment -o wide
kubectl delete deployment openshift-gunjan1
kubectl delete deployment openshift-gunjan3
kubectl get svc -o wide
kubectl get pod
kubectl get pod openshift-deployment-66456f5985-dp9r9
kubectl describe  pod openshift-deployment-66456f5985-dp9r9
10.44.0.13:8080
10.44.0.13:80
curl 10.44.0.13:80
clear
kubectl get deployment -o wide
kubectl get pod -o wide
kubectl edit deployment test1
kubectl roleout pause deployment test1
kubectl rollout pause deployment test1
kubectl edit deployment test1
kubectl edit deployment.v1.app test1
kubectl edit deployment.v1.apps/test1
kubectl rollout pause deployment.v1.apps/test1
kubectl edit deployment test1
kubectl rollout resume deployment.v1.apps/test1
kubectl get pod -o wide
vi pi.yaml
kubectl create -f pi.yaml 
kubectl get pod -o wide
kubectl edit pod pi1-nzwbc
kubectl get pod -o wide
kubectl log pi1-nzwbc
kubectl logs pi1-nzwbc
kubectl get pod -o wide
kubectl edit pod pi1-nzwbc
kubectl get pod -o wide
kubectl logs postgres1
kubectl get namespaces
kubectl get pods kube-node-lease
kubectl get pods -n kube-node-lease
kubectl get pods -n kube-public
kubectl get pods -n kube-system
kubectl get namespaces
kubectl get pods -n default
kubectl create namespace gunjan
kubectl get pods -n gunjan
ls -lrt
cp mysql.yaml mysql1.yaml
vi mysql1.yaml 
kubectl create -f mysql1.yaml 
vi mysql1.yaml 
kubectl create -f mysql1.yaml 
kubectl get pods -n gunjan
kubectl get pods -n default
kubectl get pods -n gunjan
kubectl get namespaces
kubectl get pods -n kube-node-lease
kubectl get pods -n kube-public
ls -rlt
cp openshift-dep.yaml httpd-dep.yaml
vi httpd-dep.yaml
kubectl create -f httpd-dep.yaml
kubectl get pod -n gunjan
vi httpd-dep.yaml
kubectl get pod -n gunjan
kubectl edit httpd-deployment-7d9f7b5bf8-dvgtt
kubectl edit pod httpd-deployment-7d9f7b5bf8-dvgtt
kubectl edit pod httpd-deployment-7d9f7b5bf8-dvgtt -n gunjan
kubectl edit pod httpd-deployment-7d9f7b5bf8-dvgtt -n default
kubectl edit pod httpd-deployment-7d9f7b5bf8-dvgtt -n gunjan --namespace=default
kubectl edit pod httpd-deployment-7d9f7b5bf8-dvgtt -n gunjan 
kubectl edit pod httpd-deployment-7d9f7b5bf8-dvgtt --namespace=default
history
kubectl create namespace openshift
ls -rlt
kubectl create deployment openshift-dep-cmd --image=openshift/hello-openshift -n openshift --replicas=2
kubectl get pod -n openshift
kubectl get nodes
kubectl delete node worker-node-2.example.com
kubectl get nodes
cat > node2add.jason
vi node2add.jason 
kubectl create -f node2add.jason 
kubectl get nodes
kubectl get pod -o wide
kubectl get nodes
kubectl get pod -o wide
kubectl get nodes
kubectl get pod -o wide
kubectl describe node worker-node-2.example.com
kubectl get pod -o wide
kubectl describe node worker-node-2.example.com
kubectl get pod -o wide
kubectl describe node worker-node-2.example.com
kubectl get pod -o wide
ls -ltr
vi mysql.yaml
kubectl create deployment mysql --image=docker.io/mysql --dry-run=client -o yaml > mysql-app.yaml
vi mysql-app.yaml
kubectl create -f mysql-app.yaml 
kubectl get pods
kubectl create deployment wordpress --image=wordpress --dry-run=client -o yaml > wordpressapp.yaml
vi wordpressapp.yaml 
kubectl create -f wordpressapp.yaml 
kubectl get svc - wide
kubectl get svc -o wide
kubectl get pod -o wide
kubectl get deployments
kubectl expose deployment mysql --port=3306
kubectl expose deployment wordpress --port=80
kubectl get svc
kubectl edit svc mysql
kubectl edit svc wordpress
kubectl get svc
kubectl describe svc mysql
kubectl get deployment
kubectl describe mysql
kubectl describe deployment mysql
ifconfig -a
kubectl get pod
kubectl describe pod mysql-77f7849bf9-njsr8
kubectl get node -o wide
kubectl get pod
kubectl get pod -o wide
kubectl get svc -o wide
kubectl get node -o wide
kubectl log mysql
kubectl get pod -o wide
kubectl log mysql-77f7849bf9-njsr8
kubectl logs mysql-77f7849bf9-njsr8
vi mysql-app.yaml 
vi wordpressapp.yaml 
vi mysql-app.yaml 
kubectl get pod -o wide
kubectl log wordpress-fb6df58c8-5rxnr
kubectl logs wordpress-fb6df58c8-5rxnr
kubectl logs mysql-77f7849bf9-njsr8
kubectl get pod -o wide
kubectl delete pod mysql-77f7849bf9-njsr8
kubectl create -f mysql-app.yaml 
kubectl get deployment
kubectl delete deployment mysql
kubectl get svc
kubectl delete svc mysql
kubectl create -f mysql-app.yaml 
kubectl expose deployment mysql --port=3306
kubectl edit svc mysql
kubectl get svc
kubectl get node -o wide
kubectl get pod -o wide
kubectl get svc -o wide
kubectl get node -o wide
kubectl get deployments
kubectl edit deployment wordpress
kubectl get node -o wide
kubectl get svc -o wide
kubectl get pod -o wide
kubectl create deployment psql --image=postgres --dry-run=client -o yaml > psql1.yaml
vi psql1.yaml 
kubectl create -f psql1.yaml 
kubectl create deployment gogs --image=docker.io/gogs/gogs --dry-run=client -o yaml > gogs.yaml
kubectl create -f gogs.yaml 
kubectl expose deployment psql --port=5432
kubectl expose deployment gogs --port=3000
kubectl get svc
kubectl edit svc gogs
kubectl edit svc psql
kubectl get node -o wide
kubectl get pod -o wide
kubectl get svc -o wide
kubectl create namespace vote
git clone https://github.com/dockersamples/example-voting-app.git
cd example-voting-app/
ls -rlt
kubectl get pods -n vote -o wide
kubectl get svc -n vote -o wide
kubectl get nodes -o wide
ls -rlt
vi docker-compose-k8s.yml
vi docker-compose.yml 
vi docker-compose-simple.yml 
vi docker-compose-windows.yml 
vi kube-deployment.yml 
cd ..
vi node1.yaml
kubectl create -f node1.yaml 
kubectl get pods -o wide
vi node1.yaml
kubectl label node worker-node-1.example.com env=cka
kubectl get node --show-lables
kubectl get node --show-lable
kubectl get node --show-labels
vi node1.yaml 
kubectl create -f node1.yaml 
kubectl get pods -o wide
kubectl label node worker-node-1.example.com color=black
kubectl label node worker-node-2.example.com color=white
cat > node-affinity.yaml
kubectl create -f node-affinity.yaml 
kubectl get pod -o wide
kubectl get node --show-label
kubectl get node --show-labels
cat > init.yaml
vi init.yaml 
kubectl create -f init.yaml 
vi init.yaml 
cat > init-new.yaml
kubectl create -f init-new.yaml 
cat > initsvc.yaml
kubectl create -f initsvc.yaml 
kubectl get pods
vi init.yaml 
kubectl create -f init.yaml 
kubectl get pods
vi initsvc1.yaml
cp initsvc1.yaml initdata.yaml
vi initdata.yaml 
kubectl create -f initsvc1.yaml 
kubectl get pods
kubectl create -f initdata1.yaml 
kubectl create -f initdata.yaml 
kubectl get pods
kubectl logs initpod-1
vi replicaset.yaml
kubectl create -f replicaset.yaml 
vi replicaset.yaml
kubectl create -f replicaset.yaml 
vi replicaset.yaml
kubectl create -f replicaset.yaml 
vi replicaset.yaml
kubectl create -f replicaset.yaml 
vi replicaset.yaml
kubectl create -f replicaset.yaml 
vi replicaset.yaml
kubectl create -f replicaset.yaml 
vi replicaset.yaml
kubectl create -f replicaset.yaml 
vi replicaset.yaml
kubectl create -f replicaset.yaml 
kubectl get pod
vi replicaset.yaml
kubectl get pod
kubectl create -f replicaset.yaml 
vi replicaset.yaml
kubectl create -f replicaset.yaml 
kubectl get pod
kubectl delete pod replicatest-fftl8
kubectl delete pod replicatest-jfnbp
kubectl delete pod replicatest-x6cz4
kubectl get pod
ls -lrt
which git
mkdir pod
cd pod/
pwd
vi staticpod.yaml
cd /etc/systemd/
ls
cd system/
ls
cd kubelet.service.d/
ls
pwd
sudo vi /etc/systemd/system/kubelet.service.d/10-kubeadm.conf 
pwd
sudo vi /etc/systemd/system/kubelet.service.d/10-kubeadm.conf 
systemctl restart kubelet
sudo systemctl restart kubelet
sudo systemctl daemon-reload 
cd /home/labsuser/pod/
ls -rlt
kubectl create -f staticpod.yaml 
sudo systemctl status kubelet
vi staticpod.yaml 
kubectl create -f staticpod.yaml 
vi staticpod.yaml 
kubectl create -f staticpod.yaml 
kubectl get pod
docker ps | grep httpd
sudo docker ps | grep httpd
kubectl get pods -n kube-system
sudo docker ps | grep https
sudo docker ps | grep httpd
kubectl get pod
kubectl descibe pod staticpod1
kubectl describe pod staticpod1
vi staticpod.yaml 
kubectl get pod
vi staticpod.yaml 
kubectl get pod
sudo vi /etc/systemd/system/kubelet.service.d/10-kubeadm.conf 
sudo systemctl daemon-reload 
sudo systemctl restart kubelet
sudo systemctl status kubelet
sudo systemctl daemon-reload 
sudo systemctl status kubelet
sudo systemctl restart kubelet
sudo vi /etc/systemd/system/kubelet.service.d/10-kubeadm.conf 
sudo systemctl daemon-reload 
sudo systemctl restart kubelet
sudo systemctl status kubelet
kubectl get pod
sudo systemctl status kubelet
kubectl get pod
sudo systemctl status kubelet
sudo vi /etc/systemd/system/kubelet.service.d/10-kubeadm.conf 
sudo systemctl status kubelet
cd ..
git init
git remote add origin https://github.com/gunjank88/kubernates-gunjan.git
git remote -v
git add .
git commit -m "kubernates 6th session"
git status
ls -rlt
git commit -m "kubernates 6th session"
git config --global user.email "k.gunjan88@gmail.com"
it config --global user.name "gunjank88"
git config --global user.name "gunjank88"
git commit -m "kubernates 6th session"
git log --oneline
git push -u origin main
git brach
git brach -a
git branch -a
git branch -m master main
kubectl create deployment mydep image=ghost:0.9 --dry-run=client -o yaml > deproll.yaml
kubectl create deployment mydep --image=ghost:0.9 --dry-run=client -o yaml > deproll.yaml
vi deproll.yaml 
kubectl create -f deproll.yaml 
vi deproll.yaml 
kubectl create -f deproll.yaml 
kubectl rollout history deployment/mydep
kubectl get deployment
kubectl rollout history deployment/mydep
vi deproll.yaml 
kubectl rollout history deployment/mydep1
vi deproll.yaml 
kubectl create -f deproll.yaml 
kubectl get deployment 
kubectl revision history deployment/mydep1
kubectl rollout history deployment/mydep1
kubectl set image deployment/mydep1 ghost:ghost:0.10 --record
kubectl set image deployment/mydeptest ghost=mysql:latest --record
kubectl set image deployment/mydep1 ghost=ghost:0.10 --record
kubectl rollout history deployment/mydep1
kubectl rollout undo deployment/mydep1 --to-revision=1
vi daemonset.yaml
vi replicaset.yaml 
vi daemonset.yaml
kubectl create -f daemonset.yaml 
vi daemonset1.yaml
cat daemonset1.yaml 
vi daemonset
vi daemonset.yaml 
kubectl create -f daemonset.yaml 
vi daemonset.yaml 
kubectl create -f daemonset.yaml 
kubectl get ds
