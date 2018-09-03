require 'pry'

def reformat_languages(languages)
  # add the language type to the language in an array, as style: [:oo, :interpreted, :foo]
  reformatted_languages = {}
  
  # Go through each language type
  #  Go through each language in the type
  #   If the language is already in the final array
  #     add the language type to the final array[:language][:style]
  #   Else
  #     add the language to the final array w/ the language type included
  
  languages.each do |language_type, array_of_languages|
    array_of_languages.each do |language_name, language_details|
      if reformatted_languages.keys.include?(language_name)
        # reformatted_languages[:language_name][:style] << language_type
      else
        reformatted_languages[language_name] = {
          type: language_details[:type],
          style: [language_type]
          
        }
        binding.pry
      end
    end
  end
  
  reformatted_languages
  
end

