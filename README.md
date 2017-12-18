# Yealink Phone Book Manager
## Manage and Server Yealink's Remote Phone Books

Simple Rails app to manage and serve XML phone books for Yealink VoIP phones.

### Using Docker

You can run this app with a simple Docker container (SQLite3 DB).

#### Building the Image Yourself

Build the image by Using

```
docker build -t yealink .
```

and then run it with

```
docker run -v /path/to/production.sqlite3:/yealink/db/production.sqlite3 yealink
```

#### Pulling the Image from Docker Hub

Alternatively, you can use my prebuilt image from Docker Hub:

```
docker pull zumbrunnen/yealink-phone-book
```
