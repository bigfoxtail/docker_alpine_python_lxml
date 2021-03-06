FROM python:alpine


RUN apk add --no-cache --virtual .build-deps gcc libc-dev libxslt-dev && \
    apk add --no-cache libxslt && \
    pip install lxml --no-cache-dir && \
    apk del .build-deps

CMD ["python3"]