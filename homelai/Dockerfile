FROM python:3.12-slim

# Copy the package
COPY /app/homelai/ ./app/homelai-rpi-shs

# Install uv (dependency manager)
RUN pip install --no-cache-dir uv

# Install dependencies with uv
RUN cd /app/homelai-rpi-shs && uv sync --no-dev

WORKDIR /app/homelai-rpi-shs

CMD ["uv", "run", "scripts/run.py"]