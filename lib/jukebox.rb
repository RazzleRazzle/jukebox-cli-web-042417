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

require 'pry'

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  choice_int = choice.to_i
    if songs.include?(choice)
      puts "Playing #{choice}"
    elsif choice_int > 0 && choice_int <= 10
      puts "Playing #{songs[choice_int - 1]}"
    else
      puts "Invalid input, please try again."
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  #opening sequence
  help
  puts "Please enter a command:"
  command = gets.chomp

  if command != 'exit'
     if command == 'list'
       list
     elsif command == 'play'
       play
     elsif command == 'help'
       help
     end
  elsif command == 'exit'
    exit_jukebox
  else
    "Invalid input, please try again."
end
end
