# Use the official n8n image as the base
FROM n8nio/n8n

# Switch to the root user to install packages
USER root

# Update package manager and install Python 3 and pip
RUN apk add --update --no-cache python3 py3-pip

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the Python packages
RUN pip3 install --no-cache-dir -r requirements.txt

# Switch back to the non-root user
USER node
