# Add your code here
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

#test = "Amos Lee - Keep It Loose, Keep It Tight"
#m = test.match(/(.*)-\s*(.*)/)
#puts "M -> #{m[2]}"
#positive lookbehind regex test.slice(/(?<=-\s).*/)

def help 
 puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  index = input.to_i - 1
 if input.to_i <= songs.length && input.to_i > 0
   puts "Playing #{songs[index]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
 end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  loop do
  input = gets.strip
  case input
  when "exit"
    exit_jukebox
    break
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  else
    puts "I didn't understand your input"
  end
end
end