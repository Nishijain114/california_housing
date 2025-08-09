FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY src/ ./src
COPY models/ ./models   # <-- add this line to copy your model files

CMD ["uvicorn", "src.api.predict_api:app", "--host", "0.0.0.0", "--port", "8000"]