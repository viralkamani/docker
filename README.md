# Docker Repository

This repository, **docker**, serves as a collection of Docker-based projects, showcasing various Docker configurations and setups for different applications.

---

## Project 1: Docker-wordpress

The **Docker-wordpress** Project is a project for where we are using ubuntu as baseimage and setuping mysql and wordpress with apache into it. It shows the usage of docker , dockerfile and docker compose all togather.Also help to understand the installation in base ubuntu image.

## Description of Files

### Docker-wordpress/docker-compose.yml
- Defines the services for the WordPress and MySQL containers.
- Configures the network and links the containers together.
- Mounts volumes to persist data between container restarts.

### Docker-wordpress/entrypoint.sh
- A custom script that runs at the start of the WordPress container, handling any necessary setup or configuration before launching the WordPress site.

### Docker-wordpress/wp/Dockerfile
- Dockerfile to build the custom WordPress container.
- Installs Apache, PHP, and the required PHP extensions.
- Downloads and sets up WordPress inside the container.

### Docker-wordpress/mysql/Dockerfile
- Dockerfile to build the custom MySQL container.
- Installs MySQL and configures it for use with WordPress.

---

## Project 2: Docker-wordpress-Direct 

## Description of Files

### Docker-Wordpress-Direct/docker-compose.yml 
- This time we will be directly using the prebuild Wordpress and SQl file. this file contains the configration for the same. 

---

## Project 3: Nginx-with-ssl-Direct

## Description of Files

### Nginx-with-ssl-Direct/Dockerfile
- In this project we are making a docker file form the nginx's prebuild image. where we have to allow ssl to our domain.with several more configuration. 

### Nginx-with-ssl-Direct/nginx.conf
- This file contains the basic configuration (virtual host) details which will be copy into the site-awailable/enable directory.

---

## Project 4: Docker-wordpress-project-deployment 

## Description of Files:

### Docker-wordpress-project-deployment/Docker/docker-compose.yml
-This is the project where we will be deploying existing fully funtional wordpress project.

- This file contains the configuration to start both mysql and wordpress custom image developed by us and with all nessessory configuration as well as the network to run them on same network. Also necessory configuration of enviroment variable volume mounting.

### Docker-wordpress-project-deployment/Docker/html/*
- This is the directory where you will be adding your main wordpress project's code. 

### Docker-wordpress-project-deployment/mysql/Dockerfile
- This file contains basic configuration to build the custom mysql image.

- Also we need add the sql dump file here same root as Dockerfile.

### Docker-wordpress-project-deployment/wp/Dockerfile
- This file contains the basic configuration to build the wordpress image with apache it self.

---

### How to Use

1. Navigate to https://github.com/VDKamani/docker 
2. Clone the repo : `git clone https://github.com/VDKamani/docker.git`
3. Navigate to the **Dedicated Project** folder.
4. Run `docker-compose up` to build and start the containers.
5. Run `docker-compose down` to stop and remove containers.
6. Run `docker-compose logs` to watch the logs.
7. Run `docker ps` to watch running process.

### How to install Docker: 
- [Install Docker](https://docs.docker.com/engine/install/)

### Collaboration: 
- Some of the Project in this repositories are made by [Harshil Thummar](https://github.com/HarshilThummar) kindly go and checkout his profile for more such usefull projects and repos.

## Contribution

If you have suggestions for improvements or new tasks, feel free to create a pull request or open an issue.

## Contact

For any questions or feedback, you can reach me at: viralkamani.it@gmail.com

# Happy Learning.
### Viral D. Kamani