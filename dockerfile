From alpine:3.7

RUN apk update && \
    apk add python python3 && \
    pip3 install flask  && \
    mkdir -p /project

COPY app.py /project
WORKDIR /project

CMD ["flask", "run",  "--host=0.0.0.0", "--port=5000" ]