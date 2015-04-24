class PartesTablero
	def initialize
		@elem1, @elem2 = 0,0
	end

	attr_accessor :elem1, :elem2

	def getElem(num)
		if num == 1
			self.elem1
		else
			self.elem2
		end
	end

	def setElem(num, new_elem)
		if num == 1
			self.elem1 = new_elem
		else
			self.elem2 = new_elem
		end
	end
end