FROM python:3

WORKDIR /app

COPY requirements.txt ./
RUN python3 -m pip install --no-cache-dir -r requirements.txt

COPY glow2mqtt.py ./

ENTRYPOINT ["python", "/app/glow2mqtt.py"]
