FROM python:3.8.1-slim

RUN pip install pipenv
COPY Pipfile* ./
RUN pipenv install --system

COPY app ./app

EXPOSE 8000

CMD ["python", "-m", "app"]
