class User < ActiveRecord::Base

  #before_save :default_values
  has_many :reviews
  has_many :products

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  attr_accessor :firstname , :lastname, :role

  validates_presence_of :firstname
  validates_presence_of :lastname

  def admin?

    if read_attribute(:role) == 'admin'

         true
    else
        false
    end

  end




  #def default_values
  #  if read_attribute(:role).nil?
  #    write_attribute(:role, 'employee')
  #  end

  #end


end
