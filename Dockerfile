FROM divtf/custom-tk:v9

RUN apt-get update && \
    apt-get install -y --no-install-recommends awscli && \
    pip3 install kubernetes tqdm pathspec inquirer boto3 s3transfer rich && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# # Container image that runs your code
# FROM tensorfuse/python3.10-slim-tensorkube:v1.0.12

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
