require 'yaml'

def load_library(file)
  emoticons_file = YAML.load_file(file)
  japanese_emoticons = []
  emoticons_file.each do |meaning, emot_array|
    japanese_emoticons.push(emot_array[1])
  end
  
  english_emoticons = []
  emoticons_file.each do |meaning, emot_array|
    english_emoticons.push(emot_array[0])
  end
  
  meanings = []
  emoticons_file.each do |meaning, emot_array|
    meanings.push(meaning)
  end
  
  emoticons = {}
  emoticons["get_emoticon"] = {}
  emoticons["get_meaning"] = {}
  max_index = meanings.length - 1
  index = (0..max_index).to_a

  index.each do |i|
    emoticons["get_meaning"][japanese_emoticons[i]] = meanings[i]
    emoticons["get_emoticon"][english_emoticons[i]] = japanese_emoticons[i]
  end

  return emoticons
end


def get_japanese_emoticon(file, emoticon)
  emoticons = load_library(file)
  jap_emoticon = emoticons["get_emoticon"][emoticon]
  jap_emoticon
end

def get_english_meaning
  # code goes here
end