FROM python:3-slim

ADD diagslave.tgz /
RUN mv /diagslave/x86_64-linux-gnu/diagslave /usr/bin && rm -rf /diagslave

ADD cmd.py /

ENV PROTOCOL=tcp
ENV SERIAL_PORT=/dev/serial_port

EXPOSE 502

CMD python3 /cmd.py
