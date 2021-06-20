FROM python:3.9

RUN pip install 'poetry==1.1.6'

COPY ./pyproject.toml ./pyproject.toml
COPY ./poetry.lock ./poetry.lock

RUN poetry install --no-dev

COPY ./manage.py ./manage.py
COPY ./server ./server
COPY ./scripts ./scripts

CMD ["scripts/start.sh"]
