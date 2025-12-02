FROM fedora:latest

# Install man pages
RUN sed -i '/tsflags/ s/nodocs//' /etc/dnf/dnf.conf

RUN dnf install \
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
fd-find \
ripgrep \
fzf \
file \
git \
jq

# RUN dnf install \
# util-linux \
# psmisc \
# strace \
# ltrace \
# binutils \
# patchelf \
# nmap-ncat
