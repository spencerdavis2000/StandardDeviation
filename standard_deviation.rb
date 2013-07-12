require 'pry'

class SD

	attr_accessor :dataset 

	def initialize(dataset)
		@dataset = dataset
	end

	#calculate the mean
	def mean(dataset)
		total = 0
		dataset.each do |i|
			total = total + i
		end
		return total/dataset.size.to_f
	end

	#calculate the variance
	def variance_dataset(dataset, mean)
		holder = []
		dataset.each do |i|
			holder << (i-mean)**2
		end
		return holder
	end

	#calculate the standard deviation
	def variance(variance_dataset)
		total = 0
		variance_dataset.each do |i|
			total = total + i
		end
		return total/variance_dataset.size.to_f
	end

	#calcualte the standard deviation of sample population
	def variance_pop(variance_dataset)
		total = 0
		variance_dataset.each do |i|
			total = total + i
		end
		return total/((variance_dataset.size.to_f)-1)
	end
	def standard_deviation(dataset)
		return Math.sqrt(dataset)
	end
end

binding.pry