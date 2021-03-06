
# frozen_string_literal: true

require_relative 'spec_helper'
require_relative '../db/setup_test_db'
require_relative '../app/models/athletes'

RSpec.describe Athlete do

  setup_test_database!

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

  describe '#save' do

    it 'saves Gideon athlete to db' do
      expect(new_athlete.save).to eql(1)
    end
  end

  describe '#update' do

    it "updates Gideon's profile and returns entry" do
      new_athlete.update({'country'=>'Narth','hometown'=> 'Narth', 'sponsor'=>'Salomon'})
      expect(new_athlete.name).to eql('Gideon')
      expect(new_athlete.country).to eql('Narth')
      expect(new_athlete.hometown).to eql('Narth')
      expect(new_athlete.sponsor).to eql('Salomon')
    end
  end

end
