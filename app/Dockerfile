FROM python:3.8.13-slim-bullseye

WORKDIR /app

# RUN apt-get -y update  && apt-get install -y \
#   python3-dev \
#   apt-utils \
#   python-dev \
#   build-essential \
# && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade setuptools 
    
# COPY requirements.txt .

RUN pip install fastapi[all]

COPY . .

EXPOSE 8000:8000


CMD uvicorn app:app --reload --host 0.0.0.0 --port 8000