# Methods added to this helper will be available to all templates in the application.
module CardStatusesHelper
 def add_card_status
   link_to_function "Add New Card Status" do |page|
      page.insert_html :bottom, :card_statuses, :partial => "new", :object => CardStatus.new
    end 
  end
end
