# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir prometheus_client

EXPOSE 8000

# Run the Python script when the container launches
CMD ["--number_of_metrics", "100000", "--rate_of_metric_generation", "10000", "--time", "10"]

ENTRYPOINT ["python", "./main.py"]