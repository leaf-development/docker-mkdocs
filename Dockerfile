FROM python:3

RUN pip install --no-cache-dir --upgrade mkdocs mkdocs-windmill

ENV BOOKDIR /mkdocs

VOLUME $BOOKDIR

EXPOSE 8000

WORKDIR $BOOKDIR

CMD ["mkdocs", "--help"]