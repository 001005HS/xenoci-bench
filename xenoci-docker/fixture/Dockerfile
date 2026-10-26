# syntax=docker/dockerfile:1
FROM busybox:1.37
WORKDIR /app
COPY input.txt /app/input.txt
RUN sha256sum /app/input.txt > /app/output.sha256
ARG PROBE=stable
RUN --mount=type=cache,id=xenoci-probe,target=/cache \
    if [ -f /cache/marker ]; then cp /cache/marker /app/prior-marker; else echo empty > /app/prior-marker; fi; \
    echo preserved > /cache/marker; echo "$PROBE" > /app/probe
CMD ["cat", "/app/output.sha256"]
