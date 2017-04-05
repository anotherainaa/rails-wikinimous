class Article < ApplicationRecord
  def markdown_content
    Kramdown::Document.new(content).to_html.html_safe
  end
end
