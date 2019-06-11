class Student
  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def my_boating_tests
    BoatingTest.all.select { |boating_test| boating_test.student == self }
  end

  def add_boating_test(boating_test_name, boating_test_status, instructor)
    BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
  end

  def grade_percentage
    all_tests = self.my_boating_tests
    passing_tests = all_tests.select { |test| test.status == "passing" }
    return (passing_tests.length.to_f/all_tests.length.to_f) * 100
  end

  def self.all
    @@all
  end

  def self.find_student(student_first_name)
    student_test_object = BoatingTest.all.find { |boating_test| boating_test.student.first_name == student_first_name }
    return student_test_object.student
  end
end