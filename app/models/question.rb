class Question < ActiveRecord::Base
  has_many :quiz_questions
  has_many :quizzes, :through => :quiz_questions
  has_many :options

  def as_json(options={})
    json_hash = super
    json_hash.merge :options => self.options
  end

end
