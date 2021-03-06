class Fixnum
	NUMERALS = [
		['M', 1000], ['CM', 900], ['D', 500], ['CD', 400], 
		['C', 100], ['XC', 90], ['L', 50], ['XL', 40], ['X', 10], ['IX', 9], ['V', 5], ['IV', 4], ['I', 1]
	]
  def to_roman
  	raise "Romans know nothing about this number" if self <= 0 || self >= 4000
  	roman = ""
  	number = self
  	for key, value in NUMERALS
  	  count, number = number.divmod(value)
  	  roman << (key * count)
  	end
  	roman
  end
end