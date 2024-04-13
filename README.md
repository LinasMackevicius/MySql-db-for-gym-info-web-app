# Gym Information System database

This project aims to design a mySQL database schema for a gym information system to manage members, trainers, classes, and equipment.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)

## Installation

To set up the gym information system, follow these steps:

1. Download and install MySQL Workbench from the official website: [MySQL Workbench](https://www.mysql.com/products/workbench/)

2. Launch MySQL Workbench and connect to your MySQL server instance.

3. Create a new database:
   - Open MySQL Workbench.
   - Click on the "Admin" tab.
   - Under "Data Export/Restore", select "Data Import/Restore".
   - Choose the option to "Import from Self-Contained File".
   - Select the `dy_db.sql` file provided in the repository.
   - Click "Start Import".

4. Verify that the database and tables were created successfully:
   - In MySQL Workbench, refresh the list of databases to see if the new database appears.
   - Open a new SQL tab and execute queries to select data from the tables created by the script (e.g., `SELECT * FROM members;`).

## Usage

Once the gym information system database is imported and set up, you can start using it by querying and manipulating data using SQL queries.

To interact with the database:
- Write SQL queries to insert, update, delete, or retrieve data from the tables.
- Use MySQL Workbench's query editor to execute SQL statements against the database.

## Contributing

Contributions to the gym information system project are welcome! If you'd like to contribute, please follow these guidelines:

1. Fork the repository and create a new branch for your feature or bug fix.
2. Make your changes and ensure they adhere to the project's coding standards and conventions.
3. Test your changes thoroughly.
4. Commit your changes with descriptive commit messages.
5. Push your changes to your forked repository.
6. Submit a pull request, explaining the purpose and scope of your changes.

Thank you for your contributions!
