FROM python:3.12-slim

# Install system dependencies required by vosk
RUN apt-get update && apt-get install -y --no-install-recommends \
    libatomic1 \
    && rm -rf /var/lib/apt/lists/*

# Copy the package
COPY app/ /app/homelai-rpi-shs/

# Install uv (dependency manager)
RUN pip install --no-cache-dir uv

# Install dependencies with uv
RUN cd /app/homelai-rpi-shs && uv sync

WORKDIR /app/homelai-rpi-shs

CMD ["uv", "run", "--frozen", "scripts/run.py"]