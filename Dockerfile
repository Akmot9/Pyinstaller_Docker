FROM python:3.8-slim-buster

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    python3-tk

# Install PyInstaller
RUN pip install pyinstaller

# Copy the entrypoint script and make it executable
COPY Pyinstaller.sh /Pyinstaller.sh
RUN chmod +x /Pyinstaller.sh

# Set the working directory to /app
WORKDIR /app

# Define a volume to store the file
VOLUME /data

# Set the entrypoint script as the Docker entrypoint
ENTRYPOINT ["/Pyinstaller.sh"]



