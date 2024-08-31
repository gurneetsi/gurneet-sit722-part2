
# Use an official Python runtime as a parent image
FROM --platform=linux/amd64 python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the entire book_catalog directory into the container
COPY book_catalog/ .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV DATABASE_URL=postgresql://mybook_c8y3_user:RAlBfaK71ARpAviUm6DZshWqzd2d8hAZ@dpg-cr9eos56l47c73cls7v0-a/mybook_c8y3

# Run app.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
