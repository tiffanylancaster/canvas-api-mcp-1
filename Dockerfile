FROM python:3.12-slim

WORKDIR /app

RUN pip install --no-cache-dir mcpo canvas-api-mcp

EXPOSE 8000

CMD ["sh", "-c", "exec mcpo --host 0.0.0.0 --port ${PORT:-8000} --api-key \"$MCPO_API_KEY\" -- canvas-api-mcp"]
