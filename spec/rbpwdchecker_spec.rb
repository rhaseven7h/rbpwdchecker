require File.join(File.dirname(__FILE__), '..', 'ext', 'rbpwdchecker', 'rbpwdchecker')

describe PasswordChecker do
  it "should respond to :check" do
    PasswordChecker.should respond_to(:check)
  end
  
  it "should say pwd is based on user name if it is based on user name" do
    PasswordChecker.check("gmedina").should =~ /user\ *name/
  end
  
  it "should say pwd is based on a dictionary word, if it is based on a dictionary word" do
    PasswordChecker.check("gmedina").should =~ /user\ *name/
  end
  
  it "should say password is too short if it is too short" do
    PasswordChecker.check("egg").should =~ /short/
  end
  
  it "should say nothing if it's a good password" do
    PasswordChecker.check("g$l4t3%").should have(0).characters
  end
end



