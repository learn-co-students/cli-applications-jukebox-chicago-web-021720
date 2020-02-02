# Add your code here
require 'pry'
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(song_array)
  song_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(song_array)
  puts "Please enter a song name or number:"
  songslength = song_array.length()
  song_index = gets.strip
  if (song_index.to_i < songslength && song_index.to_i > 0)
    song_name = song_array[song_index.to_i - 1]
  else
    song_name = song_array.find do |song| song == song_index end
  end

  if song_name
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_array)
  response = ''
  until response == "exit"
    puts "Please enter a command:"
    response = gets.strip
    case response
      when "help"
        help()
      when "list"
        list(song_array)
      when "play"
        play(song_array)
      when "exit"
        exit_jukebox()
      else
        "Please enter valid command"
    end
  end
end
