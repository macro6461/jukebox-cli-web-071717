
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

def play(songs)
  song_number = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  user_input = gets.chomp
  puts "Please Enter a song name or number:"
  if songs.include?(user_input)
    puts "Playing" + user_input
  elsif song_number.include?(user_input)
    puts "Playing #{songs[user_input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end


def list(songs)
  songs.each_with_index do |song_name, i|
    puts "#{i + 1}. #{song_name}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = gets.chomp
  puts "Please enter a command:"
    if user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    elsif user_input == "help"
      help
    elsif user_input == "exit"
      exit_jukebox
    end
end
