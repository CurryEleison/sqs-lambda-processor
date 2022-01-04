FROM python:3.9-alpine

LABEL maintainer="petersen@temp.dk"

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*  &&  \
    mkdir /app

COPY . /app
WORKDIR /app


RUN pip install -r requirements.txt

STOPSIGNAL SIGTERM

ENTRYPOINT [ "python3", "sqs-lambda-processor.py" ]
CMD ["--help"]