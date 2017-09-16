# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

g1 = Genre.create(genre_id: 1, name: 'Sports', image: 'http://gamerlimit.com/wp-content/uploads/2016/04/original.jpg')
g2 = Genre.create(genre_id: 2, name: 'Movies', image: 'http://baltimoresportsandlife.com/wp-content/uploads/2016/07/Movies.jpg')

sg1 = SubGenre.create(sub_genre_id: 1, name: 'Football', genre_id: g1.id, image: 'https://static.pexels.com/photos/39562/the-ball-stadion-football-the-pitch-39562.jpeg')
sg2 = SubGenre.create(sub_genre_id: 2, name: 'Tennis', genre_id: g1.id, image: 'https://az616578.vo.msecnd.net/files/2016/02/26/635921175574540783-563300402_tennis%203.jpeg')
sg3 = SubGenre.create(sub_genre_id: 3, name: 'Tarantino Classics', genre_id: g2.id, image: 'http://cdn.movieweb.com/img.news.tops/NE41TiY2ZWDr85_3_b/Quentin-Tarantino-Movies-Ranked.jpg')
sg4 = SubGenre.create(sub_genre_id: 4, name: 'Nolan Classics', genre_id: g2.id, image: 'https://www.nyfa.edu/student-resources/wp-content/uploads/2014/12/Christopher-Nolan-Collage.jpg')


qz1 = Quiz.create(quiz_id: 1, sub_genre_id: sg1.id, name: 'Quiz 1', current_question: 0, score: 0)

q1 = Question.create(question_id: 1, order: 1, q_string: 'What is Question1?', quiz_id: 1)
q2 = Question.create(question_id: 2, order: 2, q_string: 'What is Question2?', quiz_id: 1)
q3 = Question.create(question_id: 3, order: 3, q_string: 'What is Question3?', quiz_id: 1)
q25 = Question.create(question_id: 25, order: 4, q_string: 'What is Question25?', quiz_id: 1)


qz2 = Quiz.create(quiz_id: 2, sub_genre_id: sg1.id, name: 'Quiz 2', current_question: 0, score: 0)

q4 = Question.create(question_id: 4, order: 1, q_string: 'What is Question4?', quiz_id: 2)
q5 = Question.create(question_id: 5, order: 2, q_string: 'What is Question5?', quiz_id: 2)
q6 = Question.create(question_id: 6, order: 3, q_string: 'What is Question6?', quiz_id: 2)


qz3 = Quiz.create(quiz_id: 3, sub_genre_id: sg2.id, name: 'Quiz 3', current_question: 0, score: 0)

q7 = Question.create(question_id: 7, order: 1, q_string: 'What is Question7?', quiz_id: 3)
q8 = Question.create(question_id: 8, order: 2, q_string: 'What is Question8?', quiz_id: 3)
q9 = Question.create(question_id: 9, order: 3, q_string: 'What is Question9?', quiz_id: 3)


qz4 = Quiz.create(quiz_id: 4, sub_genre_id: sg2.id, name: 'Quiz 4', current_question: 0, score: 0)

q10 = Question.create(question_id: 10, order: 1, q_string: 'What is Question10?', quiz_id: 4)
q11 = Question.create(question_id: 11, order: 2, q_string: 'What is Question11?', quiz_id: 4)
q12 = Question.create(question_id: 12, order: 3, q_string: 'What is Question12?', quiz_id: 4)


qz5 = Quiz.create(quiz_id: 5, sub_genre_id: sg3.id, name: 'Quiz 5', current_question: 0, score: 0)

q13 = Question.create(question_id: 13, order: 1, q_string: 'What is Question13?', quiz_id: 5)
q14 = Question.create(question_id: 14, order: 2, q_string: 'What is Question14?', quiz_id: 5)
q15 = Question.create(question_id: 15, order: 3, q_string: 'What is Question15?', quiz_id: 5)


qz6 = Quiz.create(quiz_id: 6, sub_genre_id: sg3.id, name: 'Quiz 6', current_question: 0, score: 0)

q16 = Question.create(question_id: 16, order: 1, q_string: 'What is Question16?', quiz_id: 6)
q17 = Question.create(question_id: 17, order: 2, q_string: 'What is Question17?', quiz_id: 6)
q18 = Question.create(question_id: 18, order: 3, q_string: 'What is Question18?', quiz_id: 6)


qz7 = Quiz.create(quiz_id: 7, sub_genre_id: sg4.id, name: 'Quiz 7', current_question: 0, score: 0)

q19 = Question.create(question_id: 19, order: 1, q_string: 'What is Question19?', quiz_id: 7)
q20 = Question.create(question_id: 20, order: 2, q_string: 'What is Question20?', quiz_id: 7)
q21 = Question.create(question_id: 21, order: 3, q_string: 'What is Question21?', quiz_id: 7)


qz8 = Quiz.create(quiz_id: 8, sub_genre_id: sg4.id, name: 'Quiz 8', current_question: 0, score: 0)

q22 = Question.create(question_id: 22, order: 1, q_string: 'What is Question22?', quiz_id: 8)
q23 = Question.create(question_id: 23, order: 2, q_string: 'What is Question23?', quiz_id: 8)
q24 = Question.create(question_id: 24, order: 3, q_string: 'What is Question24?', quiz_id: 8)
