class Item < ActiveRecord::Base
  attr_accessible :name, :price, :menu_id
  validates :name, :presence => true
  belongs_to :menu

  def price=(val)
  	write_attribute(:price, val.gsub(/\D/,'').to_i)
  end
end