# Dockerfile
FROM python:3.9-slim
WORKDIR /app
COPY ./src /app/src
COPY ./models /app/models
RUN pip install --no-cache-dir -r src/requirements.txt
EXPOSE 5000
CMD ["python", "src/app.py"]