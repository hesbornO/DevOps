# Use an official Python runtime as a parent/base image
FROM python:3.9-slim

# set maintainer
LABEL maintainer ¨oswago76@gmail.com¨

# set a health check
HEALTHCHECK	--interval=5s \
		--timeout=5s \
		CMD curl -f http://127.0.0.1:8000 || exit 1	

# Set the working directory in the container
#WORKDIR /app

# Copy the current directory contents into the container at /app
#COPY . /app

# Install any needed packages specified in requirements.txt
#RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
# tell docker what port to expose
EXPOSE 8000

# Define environment variable
#ENV NAME World

# Run app.py when the container launches
#CMD ["python", "app.py"]

