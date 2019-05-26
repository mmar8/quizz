require 'quizz'

describe Quizz do
  it 'asks question and receives YES' do
    q = Quizz.new('Is Paris capital of France? 1. yes, 2. no', '1')
    expect(q.ask_question).to receive(:puts).with("Is Paris capital of France? 1. yes, 2. no")
    allow(STDIN).to receive(:gets) { 'joe' }
  end
end


# it "takes user's name and returns it" do
#   expect(STDOUT).to receive(:puts).with("What shall I call you today?")
#   allow(STDIN).to receive(:gets) { 'joe' }
#   expect(game.ask_for_name).to eq 'Joe'
# end
