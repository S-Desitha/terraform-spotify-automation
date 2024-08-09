# Spotify Playlist Automation with Terraform

This project demonstrates how to create and manage multiple Spotify playlists using Terraform. By leveraging Terraform, you can automate the process of playlist creation and organization, making it easier to manage your music preferences programmatically.

## Getting Started

### Prerequisites

Before you start, you'll need the following:

- **Terraform**: Make sure Terraform is installed on your local machine. You can download it from the [official website](https://www.terraform.io/downloads.html).
- **Spotify API Credentials**: You'll need a Spotify Developer account to create API credentials.

### Setting Up

1. Clone the Repository

```bash
   git clone https://github.com/S-Desitha/terraform-spotify-automation.git
```
2. Create a .env File

In the root directory of the project, create a .env file and add your Spotify API credentials:


SPOTIFY_CLIENT_ID=your_spotify_client_id
SPOTIFY_CLIENT_SECRET=your_spotify_client_secret

Replace your_spotify_client_id and your_spotify_client_secret with your actual Spotify API credentials.

3. Initialize Terraform

Initialize Terraform to download the necessary providers and modules:

   terraform init
