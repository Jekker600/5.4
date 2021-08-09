FROM archlinux:latest

RUN pacman -Syu --noconfirm
RUN pacman -Syyu ponysay --noconfirm

ENTRYPOINT ["/usr/bin/ponysay"]
CMD ["Hey, netology”]
