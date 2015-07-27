class OptionValidator < ActiveModel::Validator
  def validate(record)
    if record.make_image == false && record.make_copy == false
#ToDo fix error message

        record.errors[:base] << "You must select at least one checkbox!" 

    end
  end
end


class Ad < ActiveRecord::Base
	belongs_to :user
	validates :variations, numericality: {only_integer: true, greater_than: 0, less_than: 11}
	validates_with OptionValidator
#after_save #send emails and stuff, when paid changes, lambda
			   #paid_changed?  

			   #ajax call after stripe callback comes in  



	def get_price
		if self.make_image == true && self.make_copy == true
			self.price = self.variations * 50
		else
			self.price = self.variations * 25
		end
	end
end



