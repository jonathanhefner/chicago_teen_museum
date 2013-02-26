# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

User.new do |u|
  u.email = 'erindragotto@gmail.com'
  u.role = 'admin'
  u.password = 'CHANGEME'
end.save!


Gallery.create([
  { title: 'Rights of Passage',
    description: 'Even Superman had to work at learning how to leap tall buildings in a single bound. Rights of Passage showcases hard times, identifiable transitions, and overcoming obstacles.' },

  { title: 'What a Wonderful World This Could Be',
    description: 'From climate change and the environment to social change or humanitarian acts, show us how you make this world a better place.' },

  { title: '"Make My Day..."',
    description: 'Bullying affects all of us in one way or another. How has it affected you? What can we do to stop it?' },

  { title: 'Silly String',
    description: 'Collaborative montages of silly or random events.' },

  { title: 'Stupid Is as Stupid Does',
    description: 'Peer pressure is a real thing. How have you been tempted? Why?' },

  { title: 'Addictions',
    description: 'What are yours? How do you cope?' },

  { title: 'Mama Said',
    description: 'Problem with the \'rents? Your perspective on parents, parenting, or lack thereof.' },

  { title: 'Fabuloso',
    description: 'What\'s trending with you? Show us why your fashion, music, and fads should be loved by all.' },

  { title: 'Something Tells Me I\'m ...',
    description: 'Fill in the blank.' },

  { title: 'Seriously Folks',
    description: 'Politics plays a role in our everyday life, from our schools and communities to our towns and cities to our nation as whole. What political events have affected you or have affected the place you live?' },

  { title: 'My Moral Compass',
    description: 'What does being moral mean to you?  How do you know what "being moral" means?' }
])
