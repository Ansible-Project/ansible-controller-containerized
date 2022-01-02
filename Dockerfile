FROM ghcr.io/ansible-project/ansible-controller-containerized:main

RUN pip3 install --no-cache-dir boto3 botocore awscli boto
