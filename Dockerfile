FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

COPY src /app
COPY tests /app/tests

EXPOSE 80

CMD ["python", "app.py"]
