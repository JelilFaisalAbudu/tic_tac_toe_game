require_relative '../lib/message.rb'

describe Message do
  let(:message) { Message.new }

  context '#give_msg' do
    it 'returns the string version of the given parameter' do
      expect(message.give_msg(45_215)).to eql('45215')
    end
  end

  context '#first_player' do
    let(:msg) { 'Jelil has randomly been selected as the first player.' }

    it 'returns a hard coded message with the value of the argument given' do
      expect(message.first_player('Jelil')).to eql('msg')
    end
  end
end
