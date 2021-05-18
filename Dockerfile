FROM ubuntu:18.04

LABEL description="C++ & SDL2 development container"

RUN apt-get update && apt-get install -y \ 
    apt-utils \
    g++ \
    gcc \
    clang \
    zip \
    make \
    libsdl2-2.0

RUN mkdir -p /home/game/app

COPY app/ .

CMD ["/bin/bash"]

# Pra entrar no container: docker exec -it game_cpp bash