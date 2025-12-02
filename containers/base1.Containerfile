FROM fedora:latest

# Install man pages
RUN sed -i '/tsflags/ s/nodocs//' /etc/dnf/dnf.conf

RUN dnf install -y \
man-db \
diffutils \
ncurses \
procps-ng \
hostname \
man \
tree \
which \
xxd \
unzip \
zip \
dos2unix \
bat \
fd-find \
ripgrep \
fzf \
file \
git \
jq

# RUN dnf install -y \
# util-linux \
# psmisc \
# strace \
# ltrace \
# binutils \
# patchelf \
# nmap-ncat
