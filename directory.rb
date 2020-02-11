# first we print the list of students
# student_count = 11

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  # create an empty array
  students = []
  # get the first name
  country_of_birth = []
  hobbies = []
  height = []

  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    puts "Please enter the country of birth"
    country_of_birth = gets.chomp
    puts "Please enter hobbies"
    hobbies = gets.chomp
    puts "Please enter height in feet"
    height = gets.chomp
    students << {name: name, cohort: :november, country_of_birth: country_of_birth, hobbies: hobbies, height: height}
    puts "Now we have #{students.count} students, please enter another student"
    # puts "Now we have #{country_of_birth.count}. Thank you"
    # get another name from the user
    name = gets.chomp
end
  # return the array of students
students
end


def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each_with_index do | student, index |
    new_index = index + 1
    if student[:name].length < 12
    puts "#{new_index}. #{student[:name]} (#{student[:cohort]} cohort). From #{student[:country_of_birth]}. They like #{student[:hobbies]}. They are #{student[:height]} feet"
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end



#nothing happens until we call the methods
students = input_students
# country_of_birth = input_country_of_birth
print_header
print(students)
print_footer(students)





# and then print them
# finally, we print the total number of students

# print "line1\nline2\nline3"
