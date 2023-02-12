FROM ubuntu:latest

WORKDIR /app

COPY . .

USER root

RUN chmod +x main.sh
RUN bash main.sh

ENTRYPOINT [ "/bin/bash","-c" ]
CMD [ "bash" ]