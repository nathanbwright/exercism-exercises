class FoodChain
  VERSION = 2

  ANIMALS = ['fly','spider','bird','cat','dog','goat','cow']

  VERSE_PAIRS = [["fly.\n", ""],
  ["spider.\n", "It wriggled and jiggled and tickled inside her.\n"],
  ["bird.\n" "How absurd to swallow a bird!\n"],
  ["cat.\n", "Imagine that, to swallow a cat!\n"],
  ["dog.\n", "What a hog, to swallow a dog!\n"],
  ["goat.\n", "Just opened her throat and swallowed a goat!\n"],
  ["cow.\n", "I don't know how she swallowed a cow!\n"],
  ["horse.\n", "She's dead, of course!\n"]]

  SONG_PARTS = {
    open: "I know an old lady who swallowed a",
    spider_extra: "that wriggled and jiggled and tickled inside her",
    animal_line_a: "She swallowed the",
    animal_line_b: "to catch the",
    close_a: "I don't know why she swallowed the",
    close_b: "Perhaps she'll die."
  }

  def self.song
    song = (1..7).inject("") do |builder, verse_num|
      builder << create_verse(verse_num)
    end
    song << "#{SONG_PARTS[:open]} #{VERSE_PAIRS[7].join}"
  end

  def self.create_verse(num_of_lines)
    result = "#{SONG_PARTS[:open]} #{VERSE_PAIRS[num_of_lines-1].join}"
    result << animal_loop(num_of_lines)
    result << "#{SONG_PARTS[:close_a]} #{ANIMALS[0]}. #{SONG_PARTS[:close_b]}\n\n"
  end

  def self.animal_loop(num_of_lines)
    (1..num_of_lines-1).reverse_each.inject("") do |builder, num|
      builder << animal_line(num)
    end
  end

  def self.animal_line(counter)
    if counter == 2
      "#{SONG_PARTS[:animal_line_a]} #{ANIMALS[counter]} #{SONG_PARTS[:animal_line_b]} #{ANIMALS[counter-1]} #{SONG_PARTS[:spider_extra]}.\n"
    else
      "#{SONG_PARTS[:animal_line_a]} #{ANIMALS[counter]} #{SONG_PARTS[:animal_line_b]} #{ANIMALS[counter-1]}.\n"
    end
  end

end
