# ./lib/school.rb
class School

  attr_reader :start_time, :hours_in_school_day, :student_names, :cap_student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @cap_student_names = []
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def end_time
    end_time = (start_time.to_i + hours_in_school_day).to_s + ":00"
  end

  def is_full_time?
    if hours_in_school_day > 4
      p "true"
    else
      p "false"
    end
  end

  def standard_student_names
    student_names.each do |name|
      cap_student_names << name.capitalize
    end
  end

end
