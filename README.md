# Yealink Phone Book Manager
## Manage and Server Yealink's Remote Phone Books

Simple Rails app to manage and serve XML phone books for Yealink VoIP phones.

### Setup

This is just a plain simple Ruby on Rails app. So, the general setup steps are as follows:

1. Checkout the code to a directory
2. Having Ruby and `bundler` installed, run `bundle install`
3. Setup a database: `rails db:create` and `rails db:migrate`
4. Start Rails: `rails server`


### Using Docker

You can run this app with a simple Docker container (with a SQLite3 DB and Puma as the webserver).

#### Building the Image Yourself

Build the image by using

```
docker build -t yealink .
```

#### Pulling the Image from Docker Hub

Alternatively, you can use my prebuilt image from Docker Hub:

```
docker pull zumbrunnen/yealink-phone-book
```

#### Running the Container

```
docker run -v /path/to/production.sqlite3:/yealink/db/production.sqlite3 yealink
```
