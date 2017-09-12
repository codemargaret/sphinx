require('rspec')
require('sphinx')
require('pry')

describe('Sphinx#riddle?') do
  it('takes answer and returns true if answer is correct') do
    answer = Sphinx.new("What walks on four legs in the morning, two legs in the afternoon, and three legs in the evening?","person")
    expect(answer.riddle?).to eq(true)
  end

  it('takes answer and returns false if answer is incorrect') do
    answer = Sphinx.new("What walks on four legs in the morning, two legs in the afternoon, and three legs in the evening?","cat")
    expect(answer.riddle?).to eq(false)
  end
end

describe('Sphinx#pick_question') do
  it('selects two random questions') do
    answer = Sphinx.new("placeholder","placeholder")
    expect(
    answer.pick_question.all? {|key| answer.q_and_a.keys.include?(key)}).to eq(true)
  end

  it('ignores punctuation, spaces, and capital letters') do
    answer = Sphinx.new("placeholder","placeholder")
    expect(
    answer.pick_question.all? {|key| answer.q_and_a.keys.include?(key)}).to eq(true)
  end
end
