# School Management System

This project sets up a School Management System with a PostgreSQL database, monitoring through Prometheus, and data visualization using Grafana. The environment is provisioned using Docker and Docker Compose.

## Project Structure

```
school-management-system
├── docker-compose.yml
├── postgres
│   ├── Dockerfile
│   ├── init.sql
│   └── postgres.conf
├── prometheus
│   ├── prometheus.yml
├── grafana
│   └── provisioning
│       ├── dashboards
│       │   └── school-dashboard.json
│       └── datasources
│           └── datasource.yml
└── README.md
```

## Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd school-management-system
   ```

2. **Build and Start the Services**
   Use Docker Compose to build and start the services defined in `docker-compose.yml`.
   ```bash
   docker-compose up -d
   ```

3. **Access the Services**
   - PostgreSQL: Connect to the database using your preferred client on `localhost:5432`.
   - Prometheus: Access the Prometheus UI at `http://localhost:9090`.
   - Grafana: Access the Grafana UI at `http://localhost:3000` (default credentials are `admin/admin`).

4. **Monitoring and Visualization**
   - Once Grafana is up, import the dashboard from `grafana/provisioning/dashboards/school-dashboard.json` to visualize PostgreSQL metrics.

## Usage Guidelines

- Modify the `init.sql` file to set up initial data for your school management system.
- Customize PostgreSQL settings in `postgres/postgres.conf` as needed.
- Adjust Prometheus scrape configurations in `prometheus/prometheus.yml` if you add more services to monitor.
- Update Grafana dashboards in `grafana/provisioning/dashboards/school-dashboard.json` to reflect your monitoring needs.

## License

This project is licensed under the MIT License.