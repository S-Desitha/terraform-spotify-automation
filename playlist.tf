resource "spotify_playlist" "Hindi" {
  name        = "Hindi"
  description = "This is Sathira's Hindi Playlist"
  tracks = [
    "5bQ6oDLqvw8tywmnSmwEyL",
    "56zZ48jdyY2oDXHVnwg5Di",
    "3hkC9EHFZNQPXrtl8WPHnX",
    "6VBhH7CyP56BXjp8VsDFPZ"
    
  ]
}

data "spotify_search_track" "kasun" {
  artist = "Kasun Kalhara"
}

resource "spotify_playlist" "Kasun" {
  name        = "Kasun Kalhara"
  description = "This is Sathira's Kasun Kalhara Playlist"
  tracks = [
    data.spotify_search_track.kasun.tracks[0].id,
    data.spotify_search_track.kasun.tracks[1].id,
    data.spotify_search_track.kasun.tracks[2].id,
    data.spotify_search_track.kasun.tracks[3].id
  ]
}
