card_collection_1 = [{question: "How many times does Ygritte shoot Jon?", answer: "Three times"},
  {question: "Who said: 'A man who fights for gold can’t afford to lose to a girl.'", answer: "Daenerys"},
  {question: "Who was tortured in 'Dark Wings, Dark Words,'' the second episode of season 3?", answer: "Theon"},
  {question: "Which is the only kingdom to NOT be conquered by the Andals?", answer: "The north"},
  {question: "What is Lady Talisa's surname?", answer: "Maegyr"},
  {question: "Prodigies appear in the oddest of places.", answer: "Varys"},
  {question: "In the season 4 premiere, who gives Sansa a necklace and promises to help get her out of King's Landing?", answer: "Dontos Hollard"},
  {question: "Ned Stark's great sword and the ancestral sword of house Stark is named what?", answer: "Ice"},
  {question: "Who is Arya's 'dancing teacher'?", answer: "Syrio Forel"},
  {question: "According to Tyrion, what scent does Cersei like?", answer: "Lavender"},
  {question: "During battle of Blackwater where does Tyrion get injured?", answer: "His face"},
  {question: "What did King Robert place in the hand of the statue of Lyanna Stark in the Winterfell crypt?", answer: "A feather"},
  {question: "Who said: 'Laughing at another person’s misery was the only thing that made me feel like everyone else.'", answer: "Tyrion"},
  {question: "Which of Craster's daughters tries to get Jon and Samwell to take her with them?", answer: "Gilly"},
  {question: "Who is the god that the red priests pray to?", answer: "R'hllor"},
  {question: "Which house has the sigil of a black crowned stag on a golden field?", answer: "Baratheon"}]

card_collection_2 = [{question: "Actor Tim Russ is best known for portraying the vulcan Tuvok in Star: Trek Voyager, what other alien race did he bring to life in a 1993 episode of Deep Space Nine called 'Invasive Procedures?'" , answer: "Klingon" },
  {question:'What was the first episiode of the original series of Star Trek?', answer:'The Cage'},
  {question:"What is 7 of 9's full borg designation?", answer: "7 of 9, Tertiary Adjunct of Unimatrix Zero-One" },
  {question: "What was the first name of Gene Roddenberry's wife who also played Nurse Christine Chapel in TOS and Lwaxana Troi and the voice of the ship's computer in TNG and other series?", answer: "Majel" },
  {question: "What set of guidelines do Ferengi business people hold dear?", answer: "The Rules of Acquisition" }
]

card_collection_3 = [{question: "What were the Dursleys eating for breakfast on the morning that Harry was invited to the Quiddich World Cup with the Weasleys?", answer: "Grapefruit"}, {question: "What was the name of the highly explosive object displayed in Xenophilius Lovegood's house?", answer: "Erumpent horn"}, {question: "What Quidditch team was Ron the biggest fan of, despite their terrible record?", answer:"The Chudley Cannons"}, {question:"What is Gilderoy Lockhart's favorite color?", answer:"Lilac"}, {question: "Who did Mr. Weasley borrow his tent from for the Quiddich World Cup?", answer: "Perkins"}, {question: "What color does Polyjuice Potion turn when Harry's hair is added?", answer: "Gold"}, {question: "Harry and Ron find the troll in the...", answer: "Girl's Bathroom"}, {question: "Who did The Quibbler claim Sirius Black really was?", answer: "Stubby Boardman"}, {question: "What alias does Hermione use when captured by Snatchers?", answer: "Penelope Clearwater"}, {question: "What is the first potion Professor Slughorn assigns his class to brew?", answer: "Draught of Living Death"}]

card_collection_4 = [{question: "When Doc, Marty and Jennifer are traveling on the skyway after first arriving in 2015, they see a sign that points them toward Hill Valley. It reads: 'Local traffic: Hill Valley exit next _______.'", answer: "Right"}, {question: "Doc shows Marty a newspaper reading 'Youth Jailed for Attempted Robbery.' In the article, which Marty reads part of aloud, how many years does it say that his son, Martin McFly Jr, will spend in the state penitentiary?", answer: "15 years"}, {question: "After seeing the paper, Doc tells Marty that the week following Marty Jr.'s sentencing Marty's daughter, Marlene, attempted to break her brother out of jail, and was sentenced to prison herself. How long was Marlene's term to be?", answer: "20 years"}, {question: "In the future, the former courthouse of Hill Valley is still standing and preserved just as it was in the past. What time does the clock tower read in 2015? (Hint- it is the same time it has read since it was struck by lightning in 1955.)", answer: "10:04"}, {question: "As Marty looks around Hill Valley, he sees the local cinema which is now called the Holomax. 'Jaws 19' is the movie showing. Who is the director of 'Jaws 19'?", answer: "Max Spielberg"}, {question: "When Marty enters Cafe 80's, who is the first video waiter that speaks to him?", answer: "Ronald Reagan"}, {question: "If you watch the credits carefully, you will notice that Boy one (Mikey) in Cafe 80's (the boy who gets the video game working) is played by a now very famous actor. Who played Mikey?", answer: "Elijah Wood"}, {question: "A fight in the cafe leads to a hoverboard chase outside. Marty attempts to fly his hoverboard over water and finds it is impossible. Griff then pulls out a box and when he opens it, out comes a jet powered hoverboard. What is this board called?", answer: "Pit Bull"}, {question: "Inside the Blast from the Past antique store, the saleswoman sells Marty the sports almanac. She also tries to sell him what item?", answer: "Dustbuster"}, {question: "When Doc and Marty return to Jennifer, two cops have found her. They say aloud her information from 2015: 'McFly, Jennifer Jane Parker,_______________. Age 47'. Which address goes in the blank?", answer: "3793 Oakhurst St., Hilldale"}, {question: "When do Marty, Doc, and Jennifer arrive in the future?", answer: "October 21st, 2015"}, {question: "What is the name of Biff's grandson?", answer: "Griff"}]


deck_1 = Deck.create!(name: "Game of Thrones Trivia", deck_img: "http://orig05.deviantart.net/c1b2/f/2014/044/5/e/game_of_thrones___winter_is_coming___ico__by_annyiss99-d76a8yr.png", desc: "A trivia game for true Game of Throne fans.")
deck_2 = Deck.create!(name: "Star Trek Trivia", deck_img: "http://assets.huluim.com/blog/StarTrek_Capns.jpeg")
deck_3 = Deck.create!(name: "Harry Potter Trivia", deck_img: "http://cdn.playbuzz.com/cdn/b7651115-5f4b-4b33-b8ab-b44afbc1a552/196753bc-36f6-4bf5-a56f-16153cabaa58.jpg")
deck_4 = Deck.create!(name: "Back to the Future Trivia", deck_img: "http://bbstmlb.com/wp-content/uploads/2014/11/back-to-the-future2-logo.jpg")

card_collection_1.each do |card|
  new_card = Card.new(card)
  deck_1.cards << new_card
  new_card.save
end

card_collection_2.each do |card|
  new_card = Card.new(card)
  deck_2.cards << new_card
  new_card.save
end

card_collection_3.each do |card|
  new_card = Card.new(card)
  deck_3.cards << new_card
  new_card.save
end

card_collection_4.each do |card|
  new_card = Card.new(card)
  deck_4.cards << new_card
  new_card.save
end


