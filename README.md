# Kafka with SCRAM-SSL Authentication

This repository provides a setup for running Kafka with SCRAM (Simple Authentication and Security Layer) and SSL authentication mechanisms.

---

## Prerequisites

Ensure the following tools and dependencies are installed on your system before proceeding:

- **Docker**
- **Docker Compose**
- **Bash** (for running shell scripts)
- Proper permissions for executing scripts (e.g., `chmod` permissions)

---

## Setup Instructions

### Clone the Repository

```bash
git clone https://github.com/tarikflz/kafka-with-scram-ssl.git
cd kafka-with-scram-ssl
```
### Ensure Script Permissions
The initialization script located at security/init.sh requires execution permissions. To set the proper permissions, run the following command:

```bash
chmod +x security/init.sh
```

### Generate SSL Certificates and Configure Security
Run the initialization script to generate SSL certificates and configure the SCRAM users:

```bash
./security/init.sh
```
Note: The script handles sensitive configurations, so ensure that it runs in a secure environment.

### Start Kafka and Zookeeper
Use Docker Compose to start the Kafka and Zookeeper services:
```bash
docker-compose up -d
```
This will bring up the Kafka broker and Zookeeper with the configured authentication mechanisms.

## Verify the Setup

Once the containers are running, you can verify the setup by connecting to the Kafka broker using a client configured for SCRAM-SSL authentication.

Example Kafka connection settings:
 - Bootstrap Servers: localhost:9093
 - SSL Key/Cert Paths: As generated in the security/ directory
 - SCRAM Credentials: As configured in the security/init.sh script

## Stopping Services

To stop the services, run:
```bash
docker-compose down
```
## Notes
 - Ensure the generated SSL certificates and configuration files are stored securely to prevent unauthorized access.
 - For production environments, fine-tune the Docker Compose file and security configurations according to your requirements.

## Contributing
Feel free to open issues or submit pull requests to improve this repository.
