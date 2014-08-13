$(function() {

  var monsterQuiz = new MonsterQuiz();

});

// Zombie
function MonsterQuiz () {
  this.init();
}
MonsterQuiz.prototype = {
  quizList: [],
  quizSelected: null,
  questionSelected: null,
  questionList: [],
  selectedOptions: [],
  init: function (quizzes) {
    var self = this;

    this.getQuizzes();

    $('body').on('click', '.quizDiv', function () {
      self.getQuizQuestions($(this).attr('value'));

    });
  },
  getQuizzes: function (callback) {
    var self = this;
    $.ajax({
      url:'/quizzes',
      success: function(data){
        for(var i in data) {
          self.quizList.push(new Quiz(data[i]));
        }
        self.showQuizList();
      }
    });
  },
  getQuizQuestions: function (quizId) {
    var self = this;
    this.quizId = quizId;
    $.ajax({
      //when i make the ajax call shouldn't it go to this view
      url:'/quizzes/'+quizId+'/questions',
      success: function(data){
        for(var i in data) {
          self.questionList.push(new Question(data[i]));
        }
        self.startQuiz();
      }
    });
  },
  showQuizList: function () {
    for(var i in this.quizList) {
     $('body').append('<div class="quizDiv" value="'+this.quizList[i].id+'">'+this.quizList[i].label+'</div>');
    }
  },
  startQuiz: function () {
    this.questionSelected = 0;
    console.log(this);
    this.showQuestion();
  },
  showQuestion: function () {
    var q = this.questionList[this.questionSelected];
    console.log(q);
    $('body').append('<div>'+q.question+'</div>');
    for(var i in q.options) {
      $('body').append('<div>'+q.options[i].option+'</div>');
    }
  },
  saveSelection: function(){

  },
  nextQuestion: function () {
    this.questionSelected ++;
    this.showQuestion();
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
