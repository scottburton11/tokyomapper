require File.join(File.dirname(__FILE__),'spec_helper')

describe String, "pluralization" do
  
  it "should add an 's' at the end of strings ending in 'e'" do
    string = "Quiche"
    string.pluralize.should eql("Quiches")
  end
  
  it "should add an 'es' to the end of strings ending in 'o'" do
    string = "Hero"
    string.pluralize.should eql("Heroes")
  end
  
  it "should add an 'ies' to the end of strings ending in a consonant and 'y'" do
    string = "Cherry"
    string.pluralize.should eql("Cherries")
  end
  
  it "should add an 's' to the end of strings ending in a vowel and 'y'" do
    string = "Day"
    string.pluralize.should eql("Days")
  end
  
  it "should add an 's' at the end of most strings ending in consonants" do
    string = "Kitten"
    string.pluralize.should eql("Kittens")
  end
  
  it "should add an 'es' at the end of strings ending in 's'" do
    string = "Kiss"
    string.pluralize.should eql("Kisses")
  end
  
  it "should add an 'es' to the end of strings with a sibilant 'sh'" do
    string = "Dish"
    string.pluralize.should eql("Dishes")
  end
  
end

describe String, "instance_variable_name method" do
  
  it "should remove the @ symbol" do
    name = "@bar"
    name.instance_variable_name.should eql("bar")
  end
  
  it "should remove any :@ symbol combination" do
    name = ":@bar"
    name.instance_variable_name.should eql("bar")    
  end
  
  it "shouldn't affect strings with just a colon :" do
    name = ":not_a_symbol"
    name.instance_variable_name.should eql(name)
  end
  
end