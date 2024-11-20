# Docker Repository

This repository, **docker**, serves as a collection of Docker-based projects, showcasing various Docker configurations and setups for different applications.

---

## Project 1: Docker-wordpress

The **Docker-wordpress** Project is a project for where we are using ubuntu as baseimage and setuping mysql and wordpress with apache into it. It shows the usage of docker , dockerfile and docker compose all togather.Also help to understand the installation in base ubuntu image.

## Description of Files

# Docker-wordpress/docker-compose.yml
- Defines the services for the WordPress and MySQL containers.
- Configures the network and links the containers together.
- Mounts volumes to persist data between container restarts.

# Docker-wordpress/entrypoint.sh
- A custom script that runs at the start of the WordPress container, handling any necessary setup or configuration before launching the WordPress site.

# Docker-wordpress/wp/Dockerfile
- Dockerfile to build the custom WordPress container.
- Installs Apache, PHP, and the required PHP extensions.
- Downloads and sets up WordPress inside the container.

# Docker-wordpress/mysql/Dockerfile
- Dockerfile to build the custom MySQL container.
- Installs MySQL and configures it for use with WordPress.

---

## Project 2: Docker-wordpress-Direct 

## Description of Files

# Docker-Wordpress-Direct/docker-compose.yml 
- This time we will be directly using the prebuild Wordpress and SQl file. this file contains the configration for the same. 

---

### How to Use

1. Navigate to https://github.com/VDKamani/docker 
2. Clone the repo : `git clone https://github.com/VDKamani/docker.git`
3. Navigate to the **Dedicated Project** folder.
4. Run `docker-compose up` to build and start the containers.
5. Run `docker-compose down` to stop and remove containers.
6. Run `docker-compose logs` to watch the logs.
7. Run `docker ps` to watch running process.


## Contribution

If you have suggestions for improvements or new tasks, feel free to create a pull request or open an issue.

## Contact

For any questions or feedback, you can reach me at: viralkamani.it@gmail.com

# Happy Learning.
### Viral D. Kamani