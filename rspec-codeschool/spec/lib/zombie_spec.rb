require "spec_helper"
require "zombie"

describe Zombie do
  it "is named Ash" do
    zombie = Zombie.new
    zombie.name.should == 'Ash'
  end

  it "has no brains" do
    zombie = Zombie.new
    zombie.brains.should < 1
  end

  it "is hungry" do
    zombie = Zombie.new
    zombie.hungry?.should == true
  end

  it "is hungry predicate matcher example" do
    zombie = Zombie.new
    zombie.should be_hungry
  end

  it "responds to name" do
    zombie = Zombie.new
    zombie.should respond_to(:name)
  end

  it "subject responds to name" do
    subject.should respond_to(:name)
  end

  it "anon subject responds to name" do
    should respond_to(:name)
  end
  
  #same as:
  
  it {should respond_to(:name)}

#-----------#
  it { subject.name.should == 'Ash'}

  #same as:

  its(:name) {should == 'Ash'}

  #use the zomie string as an alias for subject to avoid confusion on curent subject
  context "determine if dead" do
    subject(:zombie){Zombie.new}

    it "should be dead" do
      zombie.should be_dead
    end
    
    #here, its creates an instance of the subject, which in this case is Zombie
    its(:dead?) {should be_true}
  end

  #LETS REFACTOR
=begin
  it 'has a name' do
    @zombie = Zombie.new
    @zombie.name.should_not be_nil?
  end

  it 'craves brains' do
    @zombie = Zombie.new
    @zombie.should be_craving_brains
  end

  it 'should still be hungry after eating brains' do
    @zombie = Zombie.new
    @zombie.hungry.should be_true
    @zombie.eat(:brains)
    @zombie.hungry.should be_false
  end
=end

  its(:name) {should_not be_nil}

  it {should be_dead}

end











