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


```bash
SPOTIFY_CLIENT_ID=your_spotify_client_id
SPOTIFY_CLIENT_SECRET=your_spotify_client_secret
```

Replace your_spotify_client_id and your_spotify_client_secret with your actual Spotify API credentials.

3. Run the Spotify Auth App and Get the API Key

To start the authorization proxy server and retrieve your Spotify API key, run the following command:

```bash
docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy

```
Make sure Docker Desktop is running before executing this command. This will start the Spotify Auth Proxy server, allowing you to authenticate and obtain the necessary API key.


![image](https://github.com/user-attachments/assets/a840d7d4-5ecb-46cf-9f5c-5353be4b0939)

You should get “Authorization Successful” Message after agreeing to this.

4. Create the terraform.tfvars File

After obtaining your API key from the authorization process, create a file named terraform.tfvars in the root of your project directory. 
Inside this file, add the following line:

```bash
api_key = "your_api_key"
```
Replace "your_api_key" with the actual API key you received. This file will securely store your API key for use in your Terraform configurations.

5. Initialize Terraform

Initialize Terraform to download the necessary providers and modules:

   
```bash
terraform init
```

6. Customize Your Playlists
   
You can create different playlists by editing the playlist.tf file. Each playlist and its tracks are defined within this file.

Tracks are identified by their Spotify ID: Every song on Spotify has a unique ID, which can be found in the URL of the song. 
For example, in the link https://open.spotify.com/track/5nTtCOCds6I0PHMNtqelas, the track ID is 5nTtCOCds6I0PHMNtqelas.

To add a song to a playlist: Simply use its Spotify ID in the playlist.tf file.

You can use Terraform to search for tracks by a specific artist and then create a playlist from those tracks.

7. Apply Terraform Configuration
To create the playlists as defined in playlist.tf, apply the Terraform configuration:

```bash
terraform apply
````

Review the plan, and if everything looks good, confirm to proceed.

8. Enjoy Your Playlists
Now, sit back and enjoy the playlists you created in Spotify! 🎵
