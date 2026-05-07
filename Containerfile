FROM quay.io/fedora/fedora-bootc:42
RUN dnf install -y greenboot greenboot-default-health-checks neovim && \
	dnf clean all

RUN bootc container lint
