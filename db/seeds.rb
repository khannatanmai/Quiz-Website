# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USERS

User.create(name: 'Tanmai Khanna', email: 'khanna.tanmai@hotmail.com', role: 'admin', password_digest: "$2a$10$hPMU3.am3u3cY0c/wxAAwu049KWhJDr026xHdqmsijdAM0L.R6LKa")

#GENRES

g1 = Genre.create(name: 'Sports', image: 'http://gamerlimit.com/wp-content/uploads/2016/04/original.jpg')
g2 = Genre.create(name: 'Movies', image: 'http://baltimoresportsandlife.com/wp-content/uploads/2016/07/Movies.jpg')


#SUBGENRES

sg1 = SubGenre.create(name: 'Football', genre_id: g1.id, image: 'https://static.pexels.com/photos/39562/the-ball-stadion-football-the-pitch-39562.jpeg')
sg2 = SubGenre.create(name: 'Tennis', genre_id: g1.id, image: 'https://az616578.vo.msecnd.net/files/2016/02/26/635921175574540783-563300402_tennis%203.jpeg')
sg3 = SubGenre.create(name: 'Tarantino Classics', genre_id: g2.id, image: 'http://cdn.movieweb.com/img.news.tops/NE41TiY2ZWDr85_3_b/Quentin-Tarantino-Movies-Ranked.jpg')
sg4 = SubGenre.create(name: 'Nolan Classics', genre_id: g2.id, image: 'https://www.nyfa.edu/student-resources/wp-content/uploads/2014/12/Christopher-Nolan-Collage.jpg')


#QUIZZES, QUESTIONS AND ANSWERS
qz1 = Quiz.create(sub_genre_id: sg1.id, name: 'Basic Clubs Knowledge')

q1 = Question.create(order: 1, q_string: 'Which clubs has Christiano Ronaldo played for?', quiz_id: qz1.id)
Answer.create(question_id: q1.id, a_string: 'Manchester United', correct: true)
Answer.create(question_id: q1.id, a_string: 'Manchester City', correct: false)
Answer.create(question_id: q1.id, a_string: 'Real Madrid', correct: true)

q2 = Question.create(order: 2, q_string: 'Which players belong to Barcelona club as of 2017?', quiz_id: qz1.id)
Answer.create(question_id: q2.id, a_string: 'Lionel Messi', correct: true)
Answer.create(question_id: q2.id, a_string: 'Sanchez', correct: true)
Answer.create(question_id: q2.id, a_string: 'Puyol', correct: false)

q3 = Question.create(order: 3, q_string: 'Which club has the most major league wins out of these?', quiz_id: qz1.id)
Answer.create(question_id: q3.id, a_string: 'Barcelona', correct: false)
Answer.create(question_id: q3.id, a_string: 'Real Madrid', correct: true)
Answer.create(question_id: q3.id, a_string: 'Manchester United', correct: false)


qz2 = Quiz.create(sub_genre_id: sg1.id, name: 'World Cup Fever')

q4 = Question.create(order: 1, q_string: 'Which team won in the FIFA World Cup 2010?', quiz_id: qz2.id)
Answer.create(question_id: q4.id, a_string: 'Germany', correct: false)
Answer.create(question_id: q4.id, a_string: 'Brazil', correct: false)
Answer.create(question_id: q4.id, a_string: 'Spain', correct: true)

q5 = Question.create(order: 2, q_string: 'Which country is hosting FIFA World Cup 2018?', quiz_id: qz2.id)
Answer.create(question_id: q5.id, a_string: 'Russia', correct: true)
Answer.create(question_id: q5.id, a_string: 'Qatar', correct: false)
Answer.create(question_id: q5.id, a_string: 'India', correct: false)

q6 = Question.create(order: 3, q_string: 'Select the teams which have won the World Cup more than 3 times', quiz_id: qz2.id)
Answer.create(question_id: q6.id, a_string: 'Italy', correct: true)
Answer.create(question_id: q6.id, a_string: 'Spain', correct: false)
Answer.create(question_id: q6.id, a_string: 'Germany', correct: true)


qz3 = Quiz.create(sub_genre_id: sg2.id, name: 'Quiz 3')

q7 = Question.create(order: 1, q_string: 'What is Question31?', quiz_id: qz3.id)
Answer.create(question_id: q7.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q7.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q7.id, a_string: 'Option3', correct: false)

q8 = Question.create(order: 2, q_string: 'What is Question32?', quiz_id: qz3.id)
Answer.create(question_id: q8.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q8.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q8.id, a_string: 'Option3', correct: false)

q9 = Question.create(order: 3, q_string: 'What is Question33?', quiz_id: qz3.id)
Answer.create(question_id: q9.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q9.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q9.id, a_string: 'Option3', correct: false)


qz4 = Quiz.create(sub_genre_id: sg3.id, name: 'Quiz 4')

q10 = Question.create(order: 1, q_string: 'What is Question41?', quiz_id: qz4.id)
Answer.create(question_id: q10.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q10.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q10.id, a_string: 'Option3', correct: false)

q11 = Question.create(order: 2, q_string: 'What is Question42?', quiz_id: qz4.id)
Answer.create(question_id: q11.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q11.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q11.id, a_string: 'Option3', correct: false)

q12 = Question.create(order: 3, q_string: 'What is Question43?', quiz_id: qz4.id)
Answer.create(question_id: q12.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q12.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q12.id, a_string: 'Option3', correct: false)


qz5 = Quiz.create(sub_genre_id: sg3.id, name: 'Quiz 5')

q13 = Question.create(order: 1, q_string: 'What is Question51?', quiz_id: qz5.id)
Answer.create(question_id: q13.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q13.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q13.id, a_string: 'Option3', correct: false)

q14 = Question.create(order: 2, q_string: 'What is Question52?', quiz_id: qz5.id)
Answer.create(question_id: q14.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q14.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q14.id, a_string: 'Option3', correct: false)

q15 = Question.create(order: 3, q_string: 'What is Question53?', quiz_id: qz5.id)
Answer.create(question_id: q15.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q15.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q15.id, a_string: 'Option3', correct: false)


qz6 = Quiz.create(sub_genre_id: sg4.id, name: 'Quiz 6')

q16 = Question.create(order: 1, q_string: 'What is Question61?', quiz_id: qz6.id)
Answer.create(question_id: q16.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q16.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q16.id, a_string: 'Option3', correct: false)

q17 = Question.create(order: 2, q_string: 'What is Question62?', quiz_id: qz6.id)
Answer.create(question_id: q17.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q17.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q17.id, a_string: 'Option3', correct: false)

q18 = Question.create(order: 3, q_string: 'What is Question63?', quiz_id: qz6.id)
Answer.create(question_id: q18.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q18.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q18.id, a_string: 'Option3', correct: false)
