FROM debian:latest

RUN apt update && apt -y upgrade

CMD ["/bin/bash"]