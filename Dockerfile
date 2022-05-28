FROM arm64v8/fedora:24

RUN dnf install certbot -y && dnf clean all
RUN mkdir /etc/letsencrypt

CMD ["/entrypoint.sh"]

COPY secret-patch-template.json /
COPY entrypoint.sh /
