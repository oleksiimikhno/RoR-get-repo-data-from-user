# Project Name RoR-get-repo-data-from-user

## Description
This project is an API server built on Ruby on Rails (RoR) that utilizes GraphQL to fetch data from the GitHub API. The server is designed to return information about a user's name and their repositories, if any.

## Installation

### Prerequisites
Ensure that the following prerequisites are installed on your system:

- Ruby 3.2.2

### Steps

1. **Clone the repository:**
    ```bash
    git clone git@github.com:oleksiimikhno/RoR-get-repo-data-from-user.git
    ```

2. **Navigate to the project directory:**
    ```bash
    cd RoR-get-repo-data-from-user
    ```

3. **Install dependencies:**
    ```bash
    bundle
    ```

## Usage

1. **Start the Rails server:**
    ```bash
    rails s
    ```

2. **Access the API in your web browser:**
    Open your web browser and navigate to `http://localhost:3000` to interact with the API.

## Dependencies

- Rails 7.1.2
- Ruby 3.2.2
- GraphQL

## Deployment

This project uses Capistrano for deployment. Follow the steps below:

1. **Install Capistrano:**
    ```bash
    gem install capistrano
    ```

2. **Initialize Capistrano in your project:**
    ```bash
    cap install
    ```

3. **Configure the deployment settings:**
    Update `config/deploy.rb` and `config/deploy/production.rb` with your deployment configurations.

4. **Deploy to production:**
    ```bash
    cap production deploy
    ```

Ensure to customize the configuration files based on your server setup.

## Contributing

Feel free to contribute to the project by creating issues or submitting pull requests. Your contributions are highly appreciated!

## License

This project is licensed under the [MIT License](LICENSE).
