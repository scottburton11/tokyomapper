require File.join(File.dirname(__FILE__),'spec_helper')

module TestSetup
  class TestClass
    include TokyoMapper
    attr_accessor :attr1
    attr_accessor :attr2
    def initialize(attrs = {:attr1 => "attribute 1 value", :attr2 => "attribute 2 value"})
      @attr1 = attrs[:attr1]
      @attr2 = attrs[:attr2]
    end
  end
end

describe TokyoMapper::InstanceMethods, "instance_values method" do
  include TestSetup
  
  before(:each) do
    @test = TestSetup::TestClass.new
  end

  it "returns a hash of instance variable names and their values" do
    @test.instance_values.should == {"attr1" => "attribute 1 value", "attr2" => "attribute 2 value"}
  end
end


describe TokyoMapper, "save a record" do
  include TestSetup
  
  before(:each) do
    @test = TestSetup::TestClass.new(:attr1 => "Test 1", :attr2 => "Test 2")
    TestSetup::TestClass.db.stub!(:open).and_return(true)
    TestSetup::TestClass.db.stub!(:close).and_return(true)
    TestSetup::TestClass.db.stub!(:genuid).and_return("1")
    TestSetup::TestClass.db.should_receive(:put).with("1", {"attr1" => "Test 1", "attr2" => "Test 2"}).and_return(true)
  end
  
  it "should be true" do
    @test.save.should be(true)
  end
end