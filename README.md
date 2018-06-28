# sqs-lambda-processor
Simple driver for SqsToLambdaListener. Takes arguments and runs the listener

run `pip install -r requirements.txt` to install dependencies 
(preferably after initializing a virtualenv of course)

Run `python sqs-lambda-processor.py` from the command line to get the arguments. 

Dockerfile is included and you can get a pre-built version with `docker pull curryeleison/sqs2lambda`.

Region defaults to eu-west-1 since I'm the only one who will ever use this :)


