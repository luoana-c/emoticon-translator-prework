require 'yaml'

def load_library(file)
  emoticons_file = YAML.load_file(file)
  japanese_emoticons = []
  emoticons_file.each do |meaning, emot_array|
    japanese_emoticons.push(emot_array[1])
  end
  emoticons = {}
  emoticons["get_emoticon"] = {}
  emoticons["get_meaning"] = {}
  return emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end