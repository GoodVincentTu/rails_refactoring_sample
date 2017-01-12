class Student
  attr_accessor :first_term_club, :first_term_exam, :first_term_love
  attr_accessor :second_term_club, :second_term_exam, :second_term_love
  attr_accessor :third_term_club, :third_term_exam, :third_term_love

  def set_all_grades_to grade
    %w(first second third).each do |which_term|
      %w(club exam love).each do |criteria|
        send "#{which_term}_term_#{criteria}=".to_sym, grade
      end
    end
  end

  def first_term_grade
    (first_term_club + first_term_exam + first_term_love) / 3
  end

  def second_term_grade
    (second_term_club + second_term_exam + second_term_love) / 3
  end

  def third_term_grade
    (third_term_club + third_term_exam + third_term_love) / 3
  end
end
