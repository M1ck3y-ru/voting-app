
FROM python:3.9

WORKDIR /app

COPY requirements.txt .
COPY /voting-app/azure-vote .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "/app/main.py"]

EXPOSE 80