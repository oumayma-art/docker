FROM python:3.8
COPY ./requirements.txt ./app/requirements.txt
RUN pip install -r requirements.txt
WORKDIR /app
COPY . /app
EXPOSE 5000
CMD ["python","/app/main.py"]