FROM alpine:3.4

MAINTAINER "Francisco Giana <fgiana@nxkut.com.ar>"

RUN apk add --update vsftpd 

COPY config/vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE 20 21 21100 21101 21102 21103 21104 21105 21106 21107 21108 21109 21110

CMD ["/usr/sbin/vsftpd","/etc/vsftpd/vsftpd.conf"]
