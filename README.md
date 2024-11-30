# LittorLog

This project is a collaborative application designed to simplify the management of book entries, exits, sales, payments, and history. A practical and efficient solution to organize these operations in an integrated and accessible way. 

## Prerequisites

- [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) install.

---

## How to run the project  

1. Clone the repository:
  ```bash
  git clone https://github.com/rhault/littorLog.git
  cd littorLog

2. Configure the  `.env`  file:
	- Create a  `.env`  file in the project's root and add the variables as per the  `.env.example`.

4. Start the containers:
	```bash
	docker compose up --build
	#or
	docker-compose up --build

5. Access the services:
  - Django Backend:  `http://localhost:8000`
    
6. To stop the containers:	
	```bash
	doker compose down
	#or
	docker-compose down