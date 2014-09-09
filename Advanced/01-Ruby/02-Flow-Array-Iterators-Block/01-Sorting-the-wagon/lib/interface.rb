require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just gotto the students array
  if !name.empty?
    students << name
  end
end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list
students=wagon_sort(students)
puts "Congratulations! Your Wagon has "+students.size.to_s+" students:
- "+students.take(students.size-1).join(", ")+" and "+students.last