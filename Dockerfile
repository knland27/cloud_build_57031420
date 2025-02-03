# Use a Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /src

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files
COPY . .

# Expose the port
EXPOSE 8080
# Run the application
CMD ["python", "main.py"]