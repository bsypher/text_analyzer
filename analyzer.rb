lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join 

puts "#{line_count} lines"

total_characters = text.length
puts "#{total_characters} characters" 

total_characters_nospaces = text.gsub(/\s/, '').length
puts "#{total_characters_nospaces} characters excluding spaces"

word_count = text.split.length
puts "#{word_count} words"

paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"

puts "#{sentence_count/paragraph_count} sentences per paragraph (average)"
puts "#{word_count/sentence_count} words per sentence (average)"

text_two = "The Easy Allies Podcast is the best"
stopwords= %w{ the by for a on of are with just but and to the my I has some in}
words_stop = text_two.scan(/\w+/)
keywords = words_stop.select { |word| !stopwords.include?(word)}
puts keywords.join(' ')
((keywords.length.to_f/ words_stop.length.to_f)* 100).to_i