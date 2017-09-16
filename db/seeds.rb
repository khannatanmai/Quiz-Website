# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

g1 = Genre.create(name: 'Sports', image: 'http://gamerlimit.com/wp-content/uploads/2016/04/original.jpg')
g2 = Genre.create(name: 'Movies', image: 'http://baltimoresportsandlife.com/wp-content/uploads/2016/07/Movies.jpg')

sg1 = SubGenre.create(name: 'Football', genre_id: g1.id, image: 'https://static.pexels.com/photos/39562/the-ball-stadion-football-the-pitch-39562.jpeg')
sg2 = SubGenre.create(name: 'Tennis', genre_id: g1.id, image: 'https://az616578.vo.msecnd.net/files/2016/02/26/635921175574540783-563300402_tennis%203.jpeg')
sg3 = SubGenre.create(name: 'Tarantino Classics', genre_id: g2.id, image: 'http://cdn.movieweb.com/img.news.tops/NE41TiY2ZWDr85_3_b/Quentin-Tarantino-Movies-Ranked.jpg')
sg4 = SubGenre.create(name: 'Nolan Classics', genre_id: g2.id, image: 'https://www.nyfa.edu/student-resources/wp-content/uploads/2014/12/Christopher-Nolan-Collage.jpg')


qz1 = Quiz.create(sub_genre_id: sg1.id, name: 'Quiz 1', current_question: 0, score: 0)

q1 = Question.create(order: 1, q_string: 'What is Question1?', quiz_id: qz1.id)
Answer.create(question_id: q1.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q1.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q1.id, a_string: 'Option3', correct: false)

q2 = Question.create(order: 2, q_string: 'What is Question2?', quiz_id: qz1.id)
Answer.create(question_id: q2.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q2.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q2.id, a_string: 'Option3', correct: false)

q3 = Question.create(order: 3, q_string: 'What is Question3?', quiz_id: qz1.id)
Answer.create(question_id: q3.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q3.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q3.id, a_string: 'Option3', correct: false)


qz2 = Quiz.create(sub_genre_id: sg1.id, name: 'Quiz 2', current_question: 0, score: 0)

q4 = Question.create(order: 1, q_string: 'What is Question21?', quiz_id: qz2.id)
Answer.create(question_id: q4.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q4.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q4.id, a_string: 'Option3', correct: false)

q5 = Question.create(order: 2, q_string: 'What is Question22?', quiz_id: qz2.id)
Answer.create(question_id: q5.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q5.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q5.id, a_string: 'Option3', correct: false)

q6 = Question.create(order: 3, q_string: 'What is Question23?', quiz_id: qz2.id)
Answer.create(question_id: q6.id, a_string: 'Option1', correct: true)
Answer.create(question_id: q6.id, a_string: 'Option2', correct: false)
Answer.create(question_id: q6.id, a_string: 'Option3', correct: false)


qz3 = Quiz.create(sub_genre_id: sg2.id, name: 'Quiz 3', current_question: 0, score: 0)

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


qz4 = Quiz.create(sub_genre_id: sg3.id, name: 'Quiz 4', current_question: 0, score: 0)

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


qz5 = Quiz.create(sub_genre_id: sg3.id, name: 'Quiz 5', current_question: 0, score: 0)

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


qz6 = Quiz.create(sub_genre_id: sg4.id, name: 'Quiz 4', current_question: 0, score: 0)

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
