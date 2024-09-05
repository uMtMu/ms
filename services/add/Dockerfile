FROM python:3.11-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip3.11 install --upgrade pip
RUN pip3.11 install --no-cache-dir -r requirements.txt
COPY . .

ENTRYPOINT uvicorn main:app --reload --host 0.0.0.0
