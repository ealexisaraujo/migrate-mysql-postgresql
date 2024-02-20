# MySQL to PostgreSQL Migration Using Docker and pgloader

This project provides a Docker-based environment to facilitate the migration of databases from MySQL to PostgreSQL using pgloader. It includes a MySQL service, a PostgreSQL service, and a pgloader service, all containerized and configured to work together seamlessly.

## Prerequisites

Before you begin, ensure you have the following installed on your system:
- Docker
- Docker Compose

## Getting Started

To get started with this project, follow these steps:

1. **Clone the repository**

```shell
git clone https://yourrepositoryurl.git
cd migrate-mysql-postgresql
```


2. **Prepare your MySQL dump**

Place your MySQL dump file (`mydb_dump.sql`) in the `mysql_data` directory. This SQL file should contain the commands to create your database schema and insert data.

3. **Start the Docker containers**

```shell
docker-compose up -d
```


This command builds and starts the MySQL, PostgreSQL, and pgloader services.

4. **Import your MySQL dump into the MySQL service**

```shell
docker exec -i <mysql_container_name> mysql -u root -p"rootpassword" mydb < /path/to/your/mydb_dump.sql
```


Replace `<mysql_container_name>` with the name of your MySQL Docker container and adjust the path to your dump file as necessary.

5. **Run pgloader**

Access the pgloader container:

```shell
docker-compose exec pgloader bash
```

Inside the container, run pgloader:

```shell
pgloader /migration/pgloader_command.load
```


## Configuration

### Docker Compose

The `docker-compose.yml` file defines the services required for the migration. It includes service definitions for MySQL, PostgreSQL, and pgloader.

### pgloader Command

The `pgloader_command.load` file contains the pgloader commands for migrating data from MySQL to PostgreSQL. Adjust this file according to your migration needs.

## Troubleshooting

- **TTY Error on Import**: If you encounter a "the input device is not a TTY" error when importing your MySQL dump, use `docker exec -i` instead of `docker-compose exec` to run the import command in a non-interactive mode.

## Contributing

Contributions to improve the project are welcome. Please follow the standard pull request process to submit your changes.

## License

Specify your project's license here.

## Acknowledgments

- Thanks to the creators and contributors of pgloader for providing the tool that makes this migration process smoother.


