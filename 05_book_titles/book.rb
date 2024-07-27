class Book
  attr_accessor :title

  LITTLE_WORDS = %w[a an the and in of]

  def title=(new_title)
    @title = format_title(new_title)
  end

  def title
    @title
  end

  private

  def format_title(title)
    words = title.split
    formatted_title = words.map.with_index do |word, index|
      if index == 0 || !LITTLE_WORDS.include?(word.downcase)
        word.capitalize
      else
        word.downcase
      end
    end
    formatted_title.join(' ')
  end
end
