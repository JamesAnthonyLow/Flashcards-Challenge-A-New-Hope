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


deck_1 = Deck.create!(name:"Game of Thrones")
deck_2 = Deck.create!(name:"Star Trek Trivia")

card_collection_1.each do |card|
  c = Card.new(card)
  deck_1.cards << c
  c.save
end

card_collection_2.each do |card|
  c = Card.new(card)
  deck_2.cards << c
  c.save
end

