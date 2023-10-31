FROM python:3.10-slim
WORKDIR /

COPY model-training-code.py model-training-code.py
COPY requirements.txt requirements.txt

run: pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT ["python3","model-training-code.py"]