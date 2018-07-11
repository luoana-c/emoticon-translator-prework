require 'yaml'

def load_library(file)
  emoticons_file = YAML.load_file(file)
  emoticons["get_emoticon"] = {}
  emoticons["get_meaning"] = {}
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end