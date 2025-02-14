FROM python:3.9-slim



# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt file to the working directory
COPY requirements.txt requirements.txt

# Install any dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that the Flask app runs on
EXPOSE 5000

# Run the Flask app using gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
