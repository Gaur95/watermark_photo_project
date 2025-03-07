# watermark_photo_project
### Build the Docker Image
```
docker build -t photo-processor .
```
### Run the Container:
```
docker run --rm -v "$(pwd)/photos:/app/photos" -v "$(pwd)/output:/app/output" photo-processor
```
