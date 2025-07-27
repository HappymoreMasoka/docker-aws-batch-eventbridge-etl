# Dockerfile
FROM python:3.10-slim

WORKDIR /app

COPY etl_script.py .

RUN pip install pandas boto3

CMD ["python", "etl_script.py"]
