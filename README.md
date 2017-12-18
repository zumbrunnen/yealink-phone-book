# Yealink Phone Book Manager
## Manage and Server Yealink's Remote Phone Books

Simple Rails app to manage and serve XML phone books for Yealink VoIP phones.

### Using Docker

You can run this app with a simple Docker container (SQLite3 DB). Build the image by Using

```
docker build -t yealink .
```

and then run it with

```
docker run -v /path/to/production.sqlite3:/yealink/db/production.sqlite3 yealink
```
