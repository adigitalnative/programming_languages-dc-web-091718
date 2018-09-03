require 'pry'

def reformat_languages(languages)
  # add the language type to the language in an array, as style: [:oo, :interpreted, :foo]
  reformatted_languages = {}
  
  
end

def move_language_type_into_language_array(language_type, language_array)
  language_array[:style] ? language_array[:style] << language_type || language_array[:style] = [language_type]
end
