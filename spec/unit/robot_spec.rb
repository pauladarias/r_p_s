require 'robot'

describe 'random' do 
subject(:robot) {described_class}
    it 'returns a random value' do 
        allow(robot).to receive(:scissors)
    end 
end 