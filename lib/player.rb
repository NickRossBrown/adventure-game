class Player < ActiveRecord::Base

  def self.oneword (current_room, user_input)
    word1 = user_input[0]
    if ["look"].include?(word1)
      Event.create({:room_id => nil, :entry => current_room.description})
    elsif ["commands"].include?(word1)
      Event.create({:room_id => nil, :entry => 'Commands should either be one word, e.g.'})
      Event.create({:room_id => nil, :entry => 'look, which would return the room description'})
      Event.create({:room_id => nil, :entry => 'or two words, e.g. kick bucket'})
      Event.create({:room_id => nil, :entry => 'in the form VERB NOUN'})
      Event.create({:room_id => nil, :entry => 'which would attempt to KICK a BUCKET'})
    elsif ["listen"].include?(word1)
      noises = ['You hear the whistling wind outside the house.', 'You hear moaning and rattling chains in a distant part of the house.', 'You hear faint music emanating from a vent in the wall.', 'You hear footsteps behind you']
      Event.create({:room_id => nil, :entry => noises.sample})
    end
  end

end
