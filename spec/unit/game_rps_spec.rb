require 'robot'
require 'game_rps'

describe Game do 
  subject(my_game) {described_class('player_name'=> 'Paula', 'player_button' => 'rock', 'robot' => 'paper')}
  let(:name) {double = name}

  describe '#name' do
    it 'returns a name ' do 
      expect(my_game.name).to eq 'Paula'
    end 
  end 

  describe '#button' do 
    it 'returns a user button' do 
      expect(my_game.button).to eq 'rock'
    end 
  end 

  describe '#robot' do 
    it 'returns a robot choice' do 
      expect(my_game.robot).to eq 'paper'
    end 
  end  

  describe '#round' do 
  it 'returns a win message' do 
    allow(my_game).to receive :round
  end 

end 


  
end 