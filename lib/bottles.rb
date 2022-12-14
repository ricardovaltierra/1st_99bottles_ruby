class Bottles
  def verse(bottles)
    last_bottles = bottles - 1

    <<-VERSE
#{pluralize bottles} of beer on the wall, #{pluralize bottles} of beer.
Take #{pluralize_last bottles} and pass it around, #{pluralize last_bottles} of beer on the wall.
VERSE
  end

  private

  def pluralize(bottles)
    if bottles > 2
      return "#{bottles} bottles"
    elsif bottles == 1
      return "#{bottles} bottle"
    end

    "no more bottles"
  end

  def pluralize_last(bottles)
    "#{bottles < 1 ? 'it' : 'one'} down"
  end
end