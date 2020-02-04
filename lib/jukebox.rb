require "pry"
songs = [
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
songs.each.with_index { |val,index| puts "#{index + 1}. #{val}"}
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  song = false 
  i = 0 
  while i < songs.length do 
    if (i + 1).to_s == input
      puts "Playing #{songs[i]}"
      song = true
    elsif songs[i] == input
      puts "Playing #{songs[i]}"
      song = true
    end 
    i += 1 
  end 
  
  if !song 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox 
  puts "Goodbye"
end 

def run(songs)
  puts "Please enter a command:"
  input = nil
  until input == "exit" do
    input = gets.strip
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    end 
  end 
  exit_jukebox
end 



