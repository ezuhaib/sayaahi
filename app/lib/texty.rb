class Texty
	include ActionView::Helpers::UrlHelper

# Initialize a text object by passing into it bodies
# of text. Use it to format text, perform advanced
# validations, and applying tokens and filters.

  def initialize(text)
    @text = text
  end

  def tags_extract
  	@text.scan(Texty.hashtags_regex).flatten
  end

  def tags_autolink
  	@text.gsub(Texty.hashtags_regex, link_to('\1\2','#\2') )
  end

  def raw
  	@text
  end

  def self.hashtags_regex
  	/(?<=^|[\s"'])(#)([a-z_]+)(?=[\s.!?"']|$)/im #http://rubular.com/r/2Oz5t1eEha
  end

end