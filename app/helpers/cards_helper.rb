# Methods added to this helper will be available to all templates in the application.
module CardsHelper
  def to_html description
    RedCloth.new(description).to_html
  end
end
