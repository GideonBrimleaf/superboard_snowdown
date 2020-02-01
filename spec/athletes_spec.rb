
# frozen_string_literal: true

require_relative '../app/models/athletes.rb'

RSpec.describe Athlete do

  let(:new_athlete) do
    new_athlete = Athlete.new({'name'=>'Gideon', 'country'=>'Scotland', 'hometown'=>'Edinburgh', 'sponsor'=>'Burton'})
  end

  describe '#initialize' do

    it 'creates Gideon athlete' do
      expect(new_athlete.name).to eql('Gideon')
      expect(new_athlete.country).to eql('Scotland')
      expect(new_athlete.hometown).to eql('Edinburgh')
      expect(new_athlete.sponsor).to eql('Burton')
    end
  end

end
