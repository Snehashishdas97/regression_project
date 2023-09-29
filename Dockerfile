FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the requirements
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port that your Flask app will run on (default is 5000)
EXPOSE 5000

# Start the Flask app
CMD ["python", "app.py"]
