import argparse
from SqsToLambdaListener import SqsToLambdaListener


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--queue-url", help="Queue URL of the queue to process", required=True)
    parser.add_argument("--function-name", help="ARN of the lambda to call", required=True)
    parser.add_argument("--region", help="AWS region", default="eu-west-1")
    args = parser.parse_args()
    print(args)
    queueurl = args.queue_url
    lambdaarn = args.function_name
    region = args.region
    listener = SqsToLambdaListener(queueurl, lambdaarn, region_name=region)
    listener.listen()


if __name__ == '__main__': main()
