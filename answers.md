# Q0: Why is this error being thrown?

This error is being thrown because the class to create a Pokemon object is not yet created, so Pokemon models do not exist yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The random pokemon is chosen by a random level number from 1..20. All these pokemon are chosen from the following names: Squirtle, Charmander, Bulbasaur, or Pikachu and are determined in the seeds.rb file.

Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

Button to links a button displaying the text "Throw a Pokeball!", to the capture_path, which calls the capture function in the Pokemon controller, passing the id of the current pokemon.

# Question 3: What would you name your own Pokemon?

I would name my own Pokemon Mipsy.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

Into redirect_to I passed in, trainer_path id: @pokemon.trainer_id. The path needed an id because it needs to connect to a specific trainer's show.html.erb page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

It shows a red error message at the top of the application that can be closed by the user.

# Give us feedback on the project and decal below!

The project was awesome and really fun! I just wish that all code from lecture or a written description of the steps (like a guide) would be available for reference instead of having to re-watch lectures over and over.

# Extra credit: Link your Heroku deployed app
