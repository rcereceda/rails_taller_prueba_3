class User < ActiveRecord::Base
	before_save :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:guest, :basic, :admin]

  has_many :pokemons
  has_many :catalogs, through: :pokemons

  has_many :reports
  #has_many :catalogs, through: :reports

  private
  def set_default_role
  	self.role ||= 1
  end
end
