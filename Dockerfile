# Use a base Python image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose the port on which the Flask app will run
EXPOSE 8081

#RUN apt-get update && apt-get install -y curl



# Set the environment variable

# Run the Flask application
CMD flask run
