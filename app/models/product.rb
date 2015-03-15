class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews


  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :price

  validates_format_of :price, :with => /\A\d+\.*\d{0,2}\z/

  #validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }

  def average_rating
     sum = 0
     self.reviews.each do |review|
         sum += review.rating
     end

     if self.reviews.empty?
       0
     else
       sum.to_f / self.reviews.length.to_f

     end

  end


end
