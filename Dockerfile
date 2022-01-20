FROM python:3-alpine

RUN apk add --update \
        bash \
        coreutils \
        curl \
        vim

COPY hello.py /usr/local/bin

ENTRYPOINT ["python", "/usr/local/bin/hello.py"]
CMD ["/bin/bash"]
