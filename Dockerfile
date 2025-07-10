# Install Python 3, pip, and required libraries
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

# Optional: symlink python3 to python for convenience
RUN ln -s /usr/bin/python3 /usr/bin/python

# Install Python packages
RUN pip3 install --no-cache-dir pandas scikit-learn joblib

