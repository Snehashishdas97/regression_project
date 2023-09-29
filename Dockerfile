# Use the official Python image as the base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your Python script and any necessary files to the container
COPY main.py /app/
COPY src/ /app/src/
COPY requirements.txt /app/

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Define the entry point for your application
CMD ["python", "main.py"]
