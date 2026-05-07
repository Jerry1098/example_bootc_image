FROM quay.io/fedora/fedora-bootc:42
RUN dnf install -y yum-utils && \
	dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo && \
	dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin && \
	dnf clean all && \
	systemctl enable docker

RUN bootc container lint
