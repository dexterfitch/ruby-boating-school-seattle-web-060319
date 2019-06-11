class Instructor
  attr_accessor :name

  @@all = []

  def initialize(name)
  end

  def my_boating_tests
    BoatingTest.all.select { |boating_test| boating_test.instructor == self }
  end

  def pass_student(student, boating_test_name)
    student_tests = self.my_boating_tests.select { |boating_test| boating_test.student == student && boating_test.name == boating_test_name }
    student_tests.collect { |test| test.status = "passing" }
  end

  def fail_student(student, boating_test_name)
    student_tests = self.my_boating_tests.select { |boating_test| boating_test.student == student && boating_test.name == boating_test_name }
    student_tests.collect { |test| test.status = "failed" }
  end

  def self.all
    @@all
  end
end