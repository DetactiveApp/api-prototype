# Server Development

## Documentation

[API](docs/api.md)

## Local Dependencies

Make sure to have [Docker](https://docs.docker.com/get-docker/) installed.

## Local Development

Make sure to have the .env file in place, based on the .env-template file.
To start the development server, just run the following shell:

```bash
./development.sh
```

(Make sure that the Docker daemon is running)

## Local Services:

| Service  | Hostname               |
| -------- | ---------------------- |
| API      | http://localhost:3000/ |
| Postgres | http://localhost:5432/ |
| PgAdmin  | http://localhost:5050/ |
