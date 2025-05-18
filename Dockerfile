FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y cowsay

ENTRYPOINT ["/usr/games/cowsay"]
CMD ["Hello from Docker!"]

