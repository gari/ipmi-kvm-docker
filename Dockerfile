FROM gari123/ipmi-kvm-docker:java7

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY .java/* /root/.java/deployment/

WORKDIR /root/
ADD novnc /root/novnc/

ENV DISPLAY :0
EXPOSE 8080
EXPOSE 5900

CMD ["/usr/bin/supervisord"]
