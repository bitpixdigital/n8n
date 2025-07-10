FROM n8nio/n8n

USER root

# Install Python, pip, and build dependencies
RUN apk add --update --no-cache \
    python3 \
    py3-pip \
    build-base \
    gfortran \
    lapack-dev \
    libffi-dev \
    openblas-dev

# Upgrade pip and setuptools
RUN pip3 install --upgrade pip setuptools wheel

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

USER node

