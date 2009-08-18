Given /^I have included TokyoMapper in my class$/ do
  
  class MyClass
    include TokyoMapper
    attr_accessor :attr1
    attr_accessor :attr2
    def initialize(attrs)
      @attr1 = attrs[:attr1]
      @attr2 = attrs[:attr2]
    end
  end
  
end

Given /^I have an instance of my class with some data$/ do
  @my_instance = MyClass.new(:attr1 => "Data1", :attr2 => "Data2")
end

When /^I call save on it$/ do
  @my_instance.save
end

Then /^it should get saved to the database$/ do
  MyClass.all.size.should be(1)
end
