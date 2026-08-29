FROM docker.io/library/archlinux:base

RUN sed -i '/^[[:space:]]*DownloadUser[[:space:]]*=/d' /etc/pacman.conf
