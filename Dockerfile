# Use the official Python 3.12 slim image from Docker Hub as the base image for the container
FROM python:3.12-slim

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the requirements.txt file from the host machine to the working directory in the container
COPY requirements.txt .

# Install Python dependencies listed in requirements.txt without using the pip cache
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire app directory from the host to the /app directory in the container
COPY ./app ./app

# Start the FastAPI application using uvicorn, listening on all interfaces (0.0.0.0) and port 8080
# The --reload flag enables auto-reload for development (not recommended for production)
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "5000", "--reload"]