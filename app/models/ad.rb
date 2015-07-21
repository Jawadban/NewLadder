class Ad < ActiveRecord::Base
	belongs_to :user
	validates :variations, numericality: { only_integer: true, maximum: 10, minimum: 1 }
	# def getPrice

	# 	if @option == "both"

	#     self.price = self.variations

	#    end 
	# end




	 # def both
	 # end

end

