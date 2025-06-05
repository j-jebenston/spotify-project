resource "spotify_playlist" "my_fav_songs" {
    name = "My Favorite Songs"
    tracks = [data.spotify_track.Beautiful.id, data.spotify_track.Criminal.id, data.spotify_track.Without_Me.id]
} 

data "spotify_track" "Beautiful" {
    url = "https://open.spotify.com/track/4cluDES4hQEUhmXj6TXkSo"
}
data "spotify_track" "Criminal" {
    url = "https://open.spotify.com/track/6T689Jvh5KrSXyaPtUWZtQ"
}
data "spotify_track" "Without_Me" {
  url = "https://open.spotify.com/track/7lQ8MOhq6IN2w8EYcFNSUk"
}

data "spotify_search_track" "Taylor_Swift" {
    artist = "Taylor Swift"
}

resource "spotify_playlist" "fav_ts" {
    name = "Taylor Swift favorites"
    tracks = [data.spotify_search_track.Taylor_Swift.tracks[4].id, 
    data.spotify_search_track.Taylor_Swift.tracks[5].id]
}