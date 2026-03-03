FROM python:3.12-slim

# Copy the package
COPY app/ /app/diet_classifier_pytorch/

# Install uv (dependency manager)
RUN pip install --no-cache-dir uv

# Install dependencies with uv
RUN cd /app/diet_classifier_pytorch && uv sync

WORKDIR /app/diet_classifier_pytorch

CMD ["uv", "run", "--frozen", "scripts/inference_fastapi.py"]