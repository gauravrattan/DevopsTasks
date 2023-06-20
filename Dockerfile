# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python server file into the container
COPY application.py .

# Expose the port on which the server will listen
EXPOSE 5000

# Define the command to run when the container starts
CMD ["gunicorn", "application:app", "--bind", "0.0.0.0:5000" ]
