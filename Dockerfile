FROM kyokley/krill-base

COPY sources.txt /app/sources.txt

ENTRYPOINT ["krill"]
CMD ["-u", "30", "-S", "/app/sources.txt", "-t", "2"]
