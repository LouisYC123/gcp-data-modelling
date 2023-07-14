# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files to the container
COPY . .

# Set the environment variables
# ENV GOOGLE_APPLICATION_CREDENTIALS=/app/path/to/your/credentials.json
ENV GOOGLE_APPLICATION_CREDENTIALS=/app/gcp_credentials.json


# Run your Data Build Tool command
# CMD ["dbt", "run"]
CMD ["tail", "-f", "/dev/null"]
