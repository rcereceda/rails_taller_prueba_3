class Pokemon < ActiveRecord::Base
  belongs_to :user
  belongs_to :catalog

  before_save :set_default_level

	def set_default_level
	  self.level = level || 5
	end
end
