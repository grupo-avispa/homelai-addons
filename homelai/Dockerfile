FROM python:3.12-slim

# Copy the package
COPY app/ /app/homelai-rpi-shs/

# Install uv (dependency manager)
RUN pip install --no-cache-dir uv

# Install dependencies with uv
RUN cd /app/homelai-rpi-shs && uv sync

WORKDIR /app/homelai-rpi-shs

# Persist models and config outside the image
VOLUME ["/app/homelai-rpi-shs/models", "/app/homelai-rpi-shs/config"]

CMD ["uv", "run", "--frozen", "scripts/run.py"]