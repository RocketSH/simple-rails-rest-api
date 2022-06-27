2.times do |i|
  User.create!(username: "Joshua #{i + 1}", password: "password#{i + 1}")
end
# . . .
2.times do |i|
  Book.create!(book_name: "Testing Book #{i + 1}", likes_books: i + 1, user_id: i + 1)
end
# . . .
2.times do |i|
  Subject.create!(subject: "I am subject #{i + 1}", likes_subjects: i + 1, book_id: i + 1)
end
