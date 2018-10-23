FROM debian:stable

WORKDIR /usr/src

RUN apt-get update
RUN apt-get install -y curl

RUN curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.26.1/minikube-linux-amd64
RUN chmod +x minikube
RUN mv minikube /usr/local/bin/

RUN curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.10.0/bin/linux/amd64/kubectl \
      && chmod +x kubectl \
      && mv kubectl /usr/local/bin/

RUN echo "start 02"      

RUN apt-get install -y mlocate
RUN updatedb
# RUN ls /bin/systemctl
RUN service kubelet start
RUN systemctl daemon-reload
RUN systemctl enable kubelet

RUN minikube start --vm-driver=none --v 10

