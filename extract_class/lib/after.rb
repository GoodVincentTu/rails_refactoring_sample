class Student
  attr_reader :terms

  def initialize
    @terms = [
      Term.new(:first),
      Term.new(:second),
      Term.new(:third)
    ]
  end

  def set_all_grades_to grade
    terms.each { |term| term.set_all_grades_to(grade) }
  end

  def first_term_grade
    term(:first).grade
  end

  def second_term_grade
    term(:second).grade
  end

  def third_term_grade
    term(:third).grade
  end

  def term reference
    terms.find { |term| term.name == reference }
  end
end

class Term
  attr_reader :name, :club, :exam, :love

  def initialize name
    @name = name
    @club = 0
    @exam = 0
    @love = 0
  end

  def set_all_grades_to grade
    @club = grade
    @exam = grade
    @love = grade
  end

  def grade
    (club + exam + love) / 3
  end
end
