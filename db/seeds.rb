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


qz3 = Quiz.create(sub_genre_id: sg2.id, name: 'Wimbledon Trivia')

q7 = Question.create(order: 1, q_string: 'How long was the legendary match between John Isner and Nicolas Mahut in 2010?', quiz_id: qz3.id)
Answer.create(question_id: q7.id, a_string: '8 hours 13 minutes', correct: false)
Answer.create(question_id: q7.id, a_string: '14 hours 1 minute', correct: false)
Answer.create(question_id: q7.id, a_string: '11 hours 5 minutes', correct: true)

q8 = Question.create(order: 2, q_string: 'When did Serena Williams win her first Wibledon Singles Title?', quiz_id: qz3.id)
Answer.create(question_id: q8.id, a_string: '2000', correct: false)
Answer.create(question_id: q8.id, a_string: '2002', correct: true)
Answer.create(question_id: q8.id, a_string: '2006', correct: false)

q9 = Question.create(order: 3, q_string: 'To what length is the grass on Wimbledon courts mowed?', quiz_id: qz3.id)
Answer.create(question_id: q9.id, a_string: '1mm', correct: false)
Answer.create(question_id: q9.id, a_string: '1.2cm', correct: false)
Answer.create(question_id: q9.id, a_string: '8mm', correct: true)


qz4 = Quiz.create(sub_genre_id: sg3.id, name: 'Pulp Fiction Trivia')

q10 = Question.create(order: 1, q_string: 'Which role did the director play in the movie?', quiz_id: qz4.id)
Answer.create(question_id: q10.id, a_string: 'Butch Coolidge', correct: false)
Answer.create(question_id: q10.id, a_string: 'Jimmie Dimmick', correct: true)
Answer.create(question_id: q10.id, a_string: 'The Wolf', correct: false)

q11 = Question.create(order: 2, q_string: 'When was Pulp Fiction released?', quiz_id: qz4.id)
Answer.create(question_id: q11.id, a_string: '1994', correct: true)
Answer.create(question_id: q11.id, a_string: '1992', correct: false)
Answer.create(question_id: q11.id, a_string: '1997', correct: false)

q12 = Question.create(order: 3, q_string: 'What does Pulp Fiction mean?', quiz_id: qz4.id)
Answer.create(question_id: q12.id, a_string: 'Pulp of a tree', correct: false)
Answer.create(question_id: q12.id, a_string: 'Dirty Magazines', correct: true)
Answer.create(question_id: q12.id, a_string: 'None of the above', correct: false)


qz5 = Quiz.create(sub_genre_id: sg3.id, name: 'General Tarantino Trivia')

q13 = Question.create(order: 1, q_string: 'Which of the following have been directed by Tarantino?', quiz_id: qz5.id)
Answer.create(question_id: q13.id, a_string: 'Reservoir Dogs', correct: true)
Answer.create(question_id: q13.id, a_string: 'The Departed', correct: false)
Answer.create(question_id: q13.id, a_string: 'Kill Bill', correct: true)

q14 = Question.create(order: 2, q_string: 'Which of these movies did Tarantino appear as an actor in?', quiz_id: qz5.id)
Answer.create(question_id: q14.id, a_string: 'Death Proof', correct: false)
Answer.create(question_id: q14.id, a_string: 'Reservoir Dogs', correct: true)
Answer.create(question_id: q14.id, a_string: 'Pulp Fiction', correct: true)

q15 = Question.create(order: 3, q_string: 'Which of these Tarantino movies depicts an alternate history?', quiz_id: qz5.id)
Answer.create(question_id: q15.id, a_string: 'Django Unchained', correct: false)
Answer.create(question_id: q15.id, a_string: 'Inglorious Basterds', correct: true)
Answer.create(question_id: q15.id, a_string: 'Reservoir Dogs', correct: false)


qz6 = Quiz.create(sub_genre_id: sg4.id, name: 'Christie Nolan Trivia')

q16 = Question.create(order: 1, q_string: 'In Interstellar, One hour on the planet was equal to how many earth hours?', quiz_id: qz6.id)
Answer.create(question_id: q16.id, a_string: '60 years', correct: false)
Answer.create(question_id: q16.id, a_string: '7 days', correct: false)
Answer.create(question_id: q16.id, a_string: '7 years', correct: true)

q17 = Question.create(order: 2, q_string: 'At the end of Inception, was it a dream or not?', quiz_id: qz6.id)
Answer.create(question_id: q17.id, a_string: 'Yes', correct: false)
Answer.create(question_id: q17.id, a_string: 'No', correct: false)
Answer.create(question_id: q17.id, a_string: 'Nobody Knows', correct: true)

q18 = Question.create(order: 3, q_string: 'Who is the famous scientist depicted in The Prestige?', quiz_id: qz6.id)
Answer.create(question_id: q18.id, a_string: 'Albert Einstien', correct: false)
Answer.create(question_id: q18.id, a_string: 'Nikola Tesla', correct: true)
Answer.create(question_id: q18.id, a_string: 'Isaac Newton', correct: false)
