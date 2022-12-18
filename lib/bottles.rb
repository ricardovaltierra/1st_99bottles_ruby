class Bottles
  def verse(bottles, flag = true)
    last_bottles = bottles - 1

    <<-VERSE
#{pluralize bottles, flag} of beer on the wall, #{pluralize bottles} of beer.
#{pluralize_last bottles}, #{pluralize last_bottles} of beer on the wall.
VERSE
  end

  def verses(first_verse_bottles, second_verse_bottles)
    chorus = ""
    (second_verse_bottles..first_verse_bottles).to_a.reverse.each do |bottles|
      line_break = bottles.equal?(second_verse_bottles) ? '' : "\n"
      chorus = chorus + "#{verse(bottles)}#{line_break}"
    end

    chorus
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