# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Zombie.create([
  {
    zombie_type: "Pathogenic Zombie",
    description: "You eat 2 out 4 meals from a grease stained paper bag. Salad means having lettuce and tomato on your burger, and now you are going to pay the price.
    Your incubation period will be a long one and you are one of the hardest types of Zombie to kill. Your one weakness is that you are the slowest of the Zombies.",
    zombie_url: 'http://ohbravenewworld.com/wp-content/uploads/2014/05/gmo-zombiebanner.jpg'
  },
  {
    zombie_type: "Slow Zombie",
    description: "Your idea of exercise is walking briskly from your cube to the parking garage; it isn't your fault you are buried in TPS reports. Your lack of physical activity has translated
    into making you amongst the slowest of the undead. You are also one of the easiest to kill.",
    zombie_url: "http://cdn.arstechnica.net/wp-content/uploads/2013/10/zombie-fax.jpg"
  },
  {
    zombie_type: "Fit Zombie",
    description: "You hit the gym 3 times a week and you eat plenty of veggies. You are one of the most
    difficult zombies to kill. Your speed and strength increase with reanimation making you a zombie bad ass.",
    zombie_url: "http://i14.photobucket.com/albums/a309/Dylacat/1-1.jpg"
  },
  {
    zombie_type: "Government Issue Zombie",
    description: "You thought that drug trial would help you pay the rent, but you should have read that release form a little better.
    You now belong to Uncle Sam's Army of the Undead. You are the most formidable of Zombie foes. You have superhero strength and speed.",
    zombie_url: "https://c1.staticflickr.com/9/8382/8679425276_6e3fa8a9ce_z.jpg"
  },
  {
    zombie_type: "Hipster Zombie",
    description: "Your monthly clothing budget is more than most of the livings' mortgage. You drink obscure craft beer that no one has heard of
    and eat in restaurants where the waitstaff ignore you. Your weaknesses are mirrors and windows that you can see yourself in. You are the most stylish of Zombies, but you are also one of the easiest to kill.",
    zombie_url: "http://farm7.static.flickr.com/6070/6121987232_96002a7a74_b.jpg"
  }
  ])

Question.create([
  {
    question: "Where do you buy most of your food?"
  },
  {
    question: "How often do you hit the gym?"
  },
  {
    question: "What does the majority of your income go towards?"
  },
  {
    question: "Have you ever participated in a drug trial?"
  },
  {
    question: "How often have you taken prescription drugs?"
  },
  {
    question: "How many times per week do you drink alcohol?"
  },
  {
    question: "Do you drive often?"
  },
  {
    question: "Have you ever worked for a Government office?"
  },
  {
    question: "How much time do you take getting ready?"
  },
  {
    question: "What type of beer do you like to drink?"
  }
  ])

Quiz.create([
  {
    label: "Zombie"
  }
  ])

Option.create([
  {
    question_id: 1,
    label: "Most of my food purchase involve a speakerpost, my car, and a greasy paper bag."
  },
  {
    question_id: 1,
    label: "I buy my food at the grocery store and add hot water to it."
  },
  {
    question_id: 1,
    label: "I buy my food from the farmer's market."
  },
  {
    question_id: 2,
    label: "I think I have a membership through my work."
  },
  {
    question_id: 2,
    label: "I went twice last month."
  },
  {
    question_id: 2,
    label: "I go three times a week, and run around my neighborhood on the off days."
  },
  {
    question_id: 3,
    label: "Food. Eating healthy costs money."
  },
  {
    question_id: 3,
    label: "I go out a whole lot..."
  },
  {
    question_id: 3,
    label: "Video games."
  },
  {
    question_id: 4,
    label: "No way. That shit is scary."
  },
  {
    question_id: 4,
    label: "There was that time in college. I was afraid I wasn't going to make rent."
  },
  {
    question_id: 4,
    label: "Sure! They pay well and require minimum effort on my part."
  },
  {
    question_id: 5,
    label: "I go to the Medical Doctor every week. He always has samples..."
  },
  {
    question_id: 5,
    label: "Only if I absolutely have to. I will try every home remedy I can before resorting to going to a Doctor."
  },
  {
    question_id: 5,
    label: "Nope. No way. Never. Ever."
  },
  {
    question_id: 6,
    label: "Like I told you, I go out a whole lot."
  },
  {
    question_id: 6,
    label: "On special occasions."
  },
  {
    question_id: 6,
    label: "I am doing this software development bootcamp. Apparently coding and drinking are not independent of one another."
  },
  {
    question_id: 7,
    label: "I drive everywhere. All the time. Always."
  },
  {
    question_id: 7,
    label: "I live downtown. I walk if it is less than a mile."
  },
  {
    question_id: 7,
    label: "I ride a bike or walk the majority of the time."
  },
  {
    question_id: 8,
    label: "Um. No."
  },
  {
    question_id: 8,
    label: "I was in the military for a few years."
  },
  {
    question_id: 8,
    label: "I worked for the CIA. They provided free health care."
  },
  {
    question_id: 9,
    label: "I start four hours before I have to be somewhere."
  },
  {
    question_id: 9,
    label: "I get my clothes ready the night before."
  },
  {
    question_id: 9,
    label: "I start getting ready 10 minutes before I have to walk out the door."
  },
  {
    question_id: 10,
    label: "What ever is on special at the bar."
  },
  {
    question_id: 10,
    label: "I like to try new things."
  },
  {
    question_id: 10,
    label: "I drink locally brewed craft beer only."
  }
  ])

QuizQuestion.create([
  {
    question_id: 1,
    quiz_id: 1
  },
  {
    question_id: 2,
    quiz_id: 1
  },
  {
    question_id: 3,
    quiz_id: 1
  },
  {
    question_id: 4,
    quiz_id: 1
  },
  {
    question_id: 5,
    quiz_id: 1
  },
  {
    question_id: 6,
    quiz_id: 1
  },
  {
    question_id: 7,
    quiz_id: 1
  },
  {
    question_id: 8,
    quiz_id: 1
  },
  {
    question_id: 9,
    quiz_id: 1
  },
  {
    question_id: 10,
    quiz_id: 1
  }
  ])

OptionsMeta.create([
  {
    options_id: 1,
    z_type: "Slow",
    score: 3
  },
  {
    options_id: 1,
    z_type: "Pathogenic",
    score: 1
  },
  {
    options_id: 2,
    z_type: "Pathogenic",
    score: 6
  },
  {
    options_id: 2,
    z_type: "Slow",
    score: 5
  },
  {
    options_id: 3,
    z_type: "Hipster",
    score: 7
  },
  {
    options_id: 3,
    z_type: "Fit",
    score: 5
  },
  {
    options_id: 4,
    z_type: "Slow",
    score: 8
  },
  {
    options_id: 5,
    z_type: "Slow",
    score: 6
  },
  {
    options_id: 6,
    z_type: "Fit",
    score: 8
  },
  {
    options_id: 6,
    z_type: "Hipster",
    score: 5
  },
  {
    options_id: 7,
    z_type: "Hipster",
    score: 7
  },
  {
    options_id: 7,
    z_type: "Fit",
    score: 6
  },
  {
    options_id: 8,
    z_type: "Hipster",
    score: 5
  },
  {
    options_id: 8,
    z_type: "Slow",
    score: 6
  },
  {
    options_id: 9,
    z_type: "Slow",
    score: 4
  },
  {
    options_id: 10,
    z_type: "Fit",
    score: 3
  },
  {
    options_id: 11,
    z_type: "Hipster",
    score: 2
  },
  {
    options_id: 11,
    z_type: "Government Issue",
    score: 6
  },
  {
    options_id: 11,
    z_type: "Pathogenic",
    score: 4
  },
  {
    options_id: 12,
    z_type: "Hipster",
    score: 5
  },
  {
    options_id: 12,
    z_type: "Pathogenic",
    score: 4
  },
  {
    options_id: 12,
    z_type: "Government Issue",
    score: 8
  },
  {
    options_id: 13,
    z_type: "Fit",
    score: 6
  },
  {
    options_id: 14,
    z_type: "Fit",
    score: 4
  },
  {
    options_id: 14,
    z_type: "Government Issue",
    score: 3
  },
  {
    options_id: 14,
    z_type: "Pathogenic",
    score: 2
  },
  {
    options_id: 15,
    z_type: "Fit",
    score: 4
  },
  {
    options_id: 16,
    z_type: "Pathogenic",
    score: 3
  },
  {
    options_id: 15,
    z_type: "Hipster",
    score: 5
  },
  {
    options_id: 15,
    z_type: "Slow",
    score: 6
  },
  {
    options_id: 17,
    z_type: "Fit",
    score: 5
  },
  {
    options_id: 18,
    z_type: "Hipster",
    score: 2
  },
  {
    options_id: 18,
    z_type: "Slow",
    score: 4
  },
  {
    options_id: 19,
    z_type: "Slow",
    score: 5
  },
  {
    options_id: 20,
    z_type: "Hipster",
    score: 2
  },
  {
    options_id: 20,
    z_type: "Fit",
    score: 1
  },
  {
    options_id: 21,
    z_type: "Hipster",
    score: 4
  },
  {
    options_id: 21,
    z_type: "Fit",
    score: 3
  },
  {
    options_id: 22,
    z_type: "Fit",
    score: 1
  },
  {
    options_id: 23,
    z_type: "Pathogenic",
    score: 2
  },
  {
    options_id: 23,
    z_type: "Government Issue",
    score: 4
  },
  {
    options_id: 24,
    z_type: "Government Issue",
    score: 5
  },
  {
    options_id: 25,
    z_type: "Hipster",
    score: 3
  },
  {
    options_id: 25,
    z_type: "Slow",
    score: 4
  },
  {
    options_id: 26,
    z_type: "Hipster",
    score: 2
  },
  {
    options_id: 26,
    z_type: "Fit",
    score: 2
  },
  {
    options_id: 27,
    z_type: "Slow",
    score: 3
  },
  {
    options_id: 27,
    z_type: "Hipster",
    score: 4
  },
  {
    options_id: 28,
    z_type: "Slow",
    score: 3
  },
  {
    options_id: 29,
    z_type: "Fit",
    score: 1
  },
  {
    options_id: 30,
    z_type: "Hipster",
    score: 3
  }
  ])


