require 'spec_helper'

describe "Roman numerables" do

	context "from 1 to 3" do
		it "converts 1 to the roman numeral I" do
		  1.to_roman.should == "I"
	  end
	  it "converts 2 to the roman numeral II" do
	    2.to_roman.should == "II"
	  end
	  it "converts 3 to the roman numeral III" do
	    3.to_roman.should == "III"
	  end
	end
	context "from 4 to 8" do
	 	it "converts 4 to the roman numeral IV" do
	 		4.to_roman.should == "IV"
	 	end

	 	it "converts 5 to the roman numeral V" do
	 		5.to_roman.should == "V"
	 	end
	end

	context "from 9 to 39" do
		
		it "converts 9 to  the roman numeral IX" do
			9.to_roman.should == "IX"
		end

		it "converts 10 to the roman numeral X" do
			10.to_roman.should == "X"
		end

		it "converts 39 to the roman numeral XXXIX" do
			39.to_roman.should == "XXXIX"
		end
	end

  context "from 40 to 80" do
  	it "converts 40 to the roman numeral XL" do
  		40.to_roman.should == "XL"
  	end

  	it "converts 50 to roman numeral L" do
  		50.to_roman.should == "L"
  	end

  	it "converts 80 to the roman numeral LXXX" do
  		80.to_roman.should == "LXXX"
  	end
  end

  context "from 90 to 399" do
  	it "converts 90 to roman numeral XC" do
  		90.to_roman.should == "XC"
  	end

  	it "converts 100 to roman numeral C" do
  		100.to_roman.should == "C"
  	end

  	it "converts 399 to roman numeral CCCXCIX" do
  		399.to_roman.should == "CCCXCIX"
  	end
  end

  context "from 400 to 800" do
  	it "converts 400 to the roman numeral CD" do
  	  400.to_roman.should == "CD"
  	end

  	it "converts 500 to roman numeral D" do
  		500.to_roman.should == "D"
  	end

  	it "converts 800 to roman numeral DCCC" do
  		800.to_roman.should == "DCCC"
  	end
  end

  context "from 900 to 3999" do
  	it "converts 900 to the roman numeral CM" do
  		900.to_roman.should == "CM"
  	end

  	it "converts 1000 to the roman numeral M" do
  		1000.to_roman.should == "M"
  	end


  	it "converts 3999 to the roman numeral MMMCMXCIX" do
  		3999.to_roman.should == "MMMCMXCIX"
  	end
  end

  context "unknown numbers" do
  	it "cannot convert 0 to a roman numeral" do
  		lambda{0.to_roman}.should raise_error('Romans know nothing about this number')
  	end
  	it "cannot convert a number below 0 to a roman numeral" do
  		lambda{-10.to_roman}.should raise_error('Romans know nothing about this number')
  	end
  	it "cannot convert a number below 0 to a roman numeral" do
  		lambda{4000.to_roman}.should raise_error('Romans know nothing about this number')
  	end
  end

end