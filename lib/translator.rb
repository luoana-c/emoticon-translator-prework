require 'yaml'

def load_library(file)
  emoticons_file = YAML.load_file(file)
  emoticons = {}
  emoticons["get_emoticon"] = {}
  emoticons["get_meaning"] = {:japanese_emoticon => emoticons_file}
  return emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end