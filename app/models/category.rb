class Category < ActiveRecord::Base
  has_many :products

  attr_accessor :name

  validates_presence_of :name

  validates_uniqueness_of :name

end
