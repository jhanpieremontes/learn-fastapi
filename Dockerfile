FROM python:3.10

WORKDIR /app

COPY requirements.txt /requirements.txt

RUN pip install -r /requirements.txt
RUN pip install --no-cache-dir --upgrade -r /requirements.txt

COPY . /app

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "80"]