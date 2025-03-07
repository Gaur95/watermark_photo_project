FROM python:3.9

# Set working directory
WORKDIR /app

# Copy necessary files
COPY . /app
# Install dependencies
RUN pip install --no-cache-dir pillow

# Ensure the required directories exist
RUN mkdir -p photos output
COPY photo/. photos/.
# Set the entry point to run the script
CMD ["python", "photo_processor.py"]
