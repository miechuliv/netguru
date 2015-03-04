class User < ActiveRecord::Base



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  attr_accessor :firstname , :lastname, :role

  validates_presence_of :firstname
  validates_presence_of :lastname

  def admin?
    if self.role == 'admin'

         true
    else
        false
    end

  end

  has_many :reviews
  has_many :products
end
