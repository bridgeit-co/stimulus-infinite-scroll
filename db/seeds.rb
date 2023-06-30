puts "Remove existing lines"
Line.destroy_all

puts "Create new lines"
200.times do |number|
  Line.create!(
    content: "Line #{number}: I must not tell lies."
  )
end
