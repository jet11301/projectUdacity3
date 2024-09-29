
# Use Python Python 3.10 as the base image
FROM python:3.10-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents to the container at /app
COPY ./analytics/. /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Set an environment variable
ENV NAME PRD

# Run the application when the container starts
CMD ["python", "/app/app.py"]

# HUNGTHP1
# Junder
# AUTOMATION BUILD