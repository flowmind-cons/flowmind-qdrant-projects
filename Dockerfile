FROM qdrant/qdrant:latest

USER root
RUN mkdir -p /qdrant/storage && chown -R 1000:1000 /qdrant/storage
USER 1000

ENV QDRANT__STORAGE__STORAGE_PATH=/qdrant/storage
ENV QDRANT__SERVICE__HTTP_PORT=6333
ENV QDRANT__SERVICE__GRPC_PORT=6334
