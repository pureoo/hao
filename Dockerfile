FROM alpine:latest
RUN apk --no-cache add git python && \
    git clone -b manyuser https://github.com/shadowsocksr-rm/shadowsocksr.git && \
    apk del --purge git
WORKDIR shadowsocksr/shadowsocks
EXPOSE 3080
CMD python server.py -p 3080 -k mathteacher -m none -O auth_chain_a -o tls1.2_ticket_auth start
