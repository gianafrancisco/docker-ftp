FROM alpine:3.4

MAINTAINER "Francisco Giana <fgiana@nxkut.com.ar>"

RUN apk add --update vsftpd 

COPY config/vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE 21 
CMD ["vsftpd"]
