require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new("Gib")
s2 = Student.new("Doug")
s3 = Student.new("Nic")
i1 = Instructor.new("Dex")
i2 = Instructor.new("Mike")
i3 = Instructor.new("Dahlton")
bt1 = BoatingTest.new(s1, "steering test", "pending", i1)
bt2 = BoatingTest.new(s2, "steering test", "pending", i2)
bt3 = BoatingTest.new(s3, "steering test", "pending", i3)
bt4 = BoatingTest.new(s1, "steering test", "passing", i1)
bt5 = BoatingTest.new(s2, "steering test", "passing", i2)
bt6 = BoatingTest.new(s3, "steering test", "passing", i3)
bt7 = BoatingTest.new(s1, "steering test", "failed", i1)
bt8 = BoatingTest.new(s2, "steering test", "failed", i2)
bt9 = BoatingTest.new(s3, "steering test", "failed", i3)

binding.pry
"Ahoy!" #leave this here to ensure binding.pry isn't the last line

