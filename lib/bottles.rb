class Bottles
  def verse(bottles)
    last_bottles = bottles - 1

    <<-VERSE
#{pluralize bottles, true} of beer on the wall, #{pluralize bottles} of beer.
#{pluralize_last bottles}, #{pluralize last_bottles} of beer on the wall.
VERSE
  end

  def verses(first_verse_bottles, second_verse_bottles)
    first_last_bottles = first_verse_bottles - 1
    second_last_bottles = second_verse_bottles - 1

    <<-VERSES
#{pluralize first_verse_bottles, true} of beer on the wall, #{pluralize first_verse_bottles} of beer.
#{pluralize_last first_verse_bottles}, #{pluralize first_last_bottles} of beer on the wall.

#{pluralize second_verse_bottles, true} of beer on the wall, #{pluralize second_verse_bottles} of beer.
#{pluralize_last second_verse_bottles}, #{pluralize second_last_bottles} of beer on the wall.
VERSES
  end

  private

  def pluralize(bottles, first_time = false)
    if bottles >= 2
      return "#{bottles} bottles"
    elsif bottles == 1
      return "#{bottles} bottle"
    elsif bottles == 0
      return "#{first_time ? 'N' : 'n'}o more bottles"
    end

    "99 bottles"
  end

  def pluralize_last(bottles)
    if bottles >= 2
      return "Take one down and pass it around"
    elsif bottles == 1
      return "Take it down and pass it around"
    end
    
    "Go to the store and buy some more"
  end
end