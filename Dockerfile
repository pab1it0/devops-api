FROM python:3.9-slim
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY src/ .
ARG PORT=5000
ARG HOST=0.0.0.0
ENV PORT=${PORT}
ENV HOST=${HOST}
CMD ["python", "app.py"]
