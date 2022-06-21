2.times do |i|
  User.create!( username: "Joshua #{i+1}", password: 'password' )
end
# . . .
2.times do |i|
  Book.create!( book: "Testing Book #{i+1}", likes_books: i+1, user_id: 1 )
end
# . . .
2.times do |i|
  Book.create!( book: "Testing Book #{i+3}", likes_books: i+3, user_id: 2 )
end
# . . .
2.times do |i|
  Subject.create!( subject: "I am subject #{i+1}", likes_subjects: i+1, book_id: 1 )
end
2.times do |i|
  Subject.create!( subject: "I am subject #{i+3}", likes_subjects: i+3, book_id: 2 )
end
