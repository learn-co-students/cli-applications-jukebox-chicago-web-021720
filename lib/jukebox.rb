@songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index{ |song, i| puts "#{i + 1}: #{song}" }
end

def play(songs)
  # loop do
  puts "Please enter a song name or number:"
  resp = gets.strip
  song_index = nil
  if resp.match("^[0-9]+$")
    song_index = (resp.to_i >= 1 && resp.to_i <= songs.length)? resp.to_i - 1 : nil
  else
    song_index = songs.find_index(resp)
  end
  
  if song_index
    puts "Playing #{songs[song_index]}"
    # break
  else
    puts "Invalid input, please try again"
  end
  # end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  loop do
  # help
  puts "Please enter a command:"
  case gets.strip
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    end
  end
end

# run(@songs)