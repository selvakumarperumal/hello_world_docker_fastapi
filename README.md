# FastAPI Hello World

This is a simple FastAPI application that returns "Hello, World!" when accessed.

## Project Structure

```
fastapi-hello-world
├── app
│   ├── main.py
│   └── __init__.py
├── requirements.txt
├── Dockerfile
└── README.md
```

## Requirements

- Python 3.7+
- Docker

## Installation

To install the required dependencies, run:

```
pip install -r requirements.txt
```

## Running the Application

### Using Docker

1. Build the Docker image:

   ```
   docker build -t fastapi-hello-world .
   ```

2. Run the Docker container:

   ```
   docker run -d --name fastapi-hello-world -p 8000:8000 fastapi-hello-world
   ```

3. Access the application at `http://localhost:8000`.

### Without Docker

To run the application without Docker, use the following command:

```
uvicorn app.main:app --reload
```

Then access the application at `http://localhost:8000`.