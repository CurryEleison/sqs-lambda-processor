FROM  python:3.6-alpine3.7

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*  &&  \
    mkdir /sqs

WORKDIR /sqs

ADD requirements.txt .
ADD sqs-lambda-processor.py .


RUN ls && \
    pip install -r requirements.txt

STOPSIGNAL SIGTERM

ENTRYPOINT [ "python3", "sqs-lambda-processor.py" ]
CMD ["--help"]