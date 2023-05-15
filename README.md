# E-Voting System

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)

## Overview
This project is an E-Voting System, designed to streamline the voting process for the Oscar awards. It utilizes a database management system built using Oracle Forms Builder, SQL, and PL/SQL. The system ensures real-time data processing and has been tested with over 40 nominees and 100 voters to ensure stability.

## Features
- User-friendly interface for casting votes in the Oscar awards.
- Secure login system to authenticate voters.
- Nominee information and categories are stored in a database.
- Real-time vote processing to ensure accurate and up-to-date results.
- Administrator functionality to manage nominees, categories, and voters.
- Results generation for each category based on the votes cast.

## Installation
To install and set up the E-Voting System, follow these steps:

1. Clone the repository using the following command:
```shell
git clone https://github.com/MHRasmy/E-Voting-System.git
```

2. Install Oracle Forms Builder on your system. Ensure that you have Oracle Database installed as well.

3. Launch Oracle Forms Builder and open the project by selecting the `E-Voting-System.fmb` file.

4. Configure the database connection settings by updating the connection details in the code files where necessary. Make sure to provide the appropriate host, port, username, password, and database details.

5. Compile and run the project using Oracle Forms Builder. This will start the E-Voting System application.

## Usage
Once the E-Voting System is set up and running, follow these instructions to use it:

1. Launch the E-Voting System application.

2. Users will be prompted to log in with their credentials. Provide the required information to authenticate as a voter or administrator.

3. Voters can cast their votes by selecting the desired nominees for each category.

4. Administrators have additional functionalities available to manage nominees, categories, and voters. They can add, edit, or delete nominees and categories, as well as manage voter accounts.

5. After the voting period ends, the administrator can generate the results for each category based on the votes cast.

## Contributing
Contributions to the E-Voting System project are welcome. If you have any ideas, bug fixes, or improvements, please follow these steps:

1. Fork the repository.

2. Create a new branch for your feature or bug fix:
```shell
git checkout -b feature/your-feature-name
```

3. Make your modifications and commit your changes:
```shell
git commit -m "Add your commit message here"
```

4. Push your branch to your forked repository:
```shell
git push origin feature/your-feature-name
```

5. Open a pull request on the original repository, describing your changes in detail.
