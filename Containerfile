FROM quay.io/fedora/fedora-bootc:44

RUN dnf install -y greenboot \
	greenboot-default-health-checks \
	neovim \
	zoxide \
	traceroute \
	&& \
	dnf clean all

RUN bootc container lint
