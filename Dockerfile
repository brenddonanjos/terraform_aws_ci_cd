FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    net-tools \
    python3-pip \
    python3-venv \
    pkg-config \
    default-libmysqlclient-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy the application code and requirements file
COPY ./backend .

RUN python3 -m venv /app/venv && \
    /app/venv/bin/pip install --upgrade pip && \
    /app/venv/bin/pip install flask flask-mysqldb flask-cors
    
EXPOSE 5000

# Run the Flask app
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
