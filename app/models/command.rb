class Command < ActiveRecord::Base
  attr_accessible :person_name, :command, :product_name


  validates :person_name, :command, :product_name, :presence => true

  def add_line_items_from_command(command)
    command.command.each do |item|
      command << item
    end
  end
end
