class Person
  @@person_count = 0
  attr_reader   :first_name, :last_name
  attr_accessor :age

  def initialize
    @@person_count += 1
  end

  def Person.person_count
    @@person_count
  end

  def set_bday(bday)
    calc_age(bday)
  end
binding.pry

  def name(name)
    @first_name  = name.split[0].capitalize
    @last_name   = name.split[1].capitalize
  end

private

  def calc_age(bday)
    age_in_days  = Date.today - Date.parse(bday)
    @age         = age_in_days.to_i / 365
  end

end
