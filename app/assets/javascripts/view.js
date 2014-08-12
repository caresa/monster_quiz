$(function() {

  var monsterQuiz = new MonsterQuiz();
  getQuizzes(monsterQuiz.showQuizList);


});

// Zombie
var MonsterQuiz = function () {
  this.init();
}
MonsterQuiz.prototype = {
  quizList: null,
  quizSelected: null,
  optionsSelected: [],
  init: function (quizzes) {
    var self = this;

    $('body').on('click', '.quizDiv', function () {
      getQuizQuestions($(this).attr('value'), self.showQuiz);
    });
  },
  showQuizList: function (quizList) {
    self.quizList = quizList;
    console.log(quizList);

    // for(var i in self.quizList) {
    //   $('body').append('<div class="quizDiv" value="'+self.quizList[i].id+'">'+self.quizList[i].label+'</div>');
    // }
  },
  showQuiz: function (quizId, questionObjects) {
    this.quizSelected = quizId;
    console.log(quizId, questionObjects);
  }
};

// Quiz model
var Quiz = function (data) {
  this.init(data);
}
Quiz.prototype = {
  id: null,
  label: null,
  questions: null,
  init: function (data) {
    this.id = data.id;
    this.label = data.label;
  },
  save: function () {
    // ajax to save here
  },
  display: function () {
    // ajax to save here
  }
};

//Question model
var Question = function(data){
  this.init(data);
}
Question.prototype = {
  id: null,
  question: null,
  options: null,
  init: function(data){
    this.id = data.id;
    this.question = data.question;

    this.options = [];
    for(var i in data.options) {
      this.options.push(new Option(data.options[i]));
    }
  }
}

//Option model
var Option = function(data){
  this.init(data);
}
Option.prototype = {
  id: null,
  option: null,
  init: function(data){
    this.id = data.id;
    this.option = data.label;
  }
}

// var MonsterQuestion.prototype = {
//   questionList: null,
//   init; function(questions){
//     var self = this;

//       $
//   }
// }

function getQuizzes (callback) {
  $.ajax({
    url:'/quizzes',
    success: function(data){
      var quizObjects = [];
      for(var i in data) {
        quizObjects.push(new Quiz(data[i]));
      }
      callback(quizObjects);
    }
  });
}

function getQuizQuestions (quizId, callback) {
  $.ajax({
    url:'/quizzes/'+quizId+'/questions',
    success: function(data){
      var questionObjects = [];
      for(var i in data) {
        questionObjects.push(new Question(data[i]));
      }
      callback(quizId, questionObjects);
    }
  });
}
