class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find params[:id]
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find params[:id]
		# if (@pokemon.health <= 0)
		# 	@pokemon.destroy
		# end
		if @pokemon.health > 0
			@pokemon.health -= 10
			@pokemon.save
		end
		redirect_to trainer_path id: @pokemon.trainer_id
	end

	def heal
		@pokemon = Pokemon.find params[:id]
		if (@pokemon.health < 100)
			@pokemon.health += 10
			@pokemon.save
		end
		redirect_to trainer_path id: @pokemon.trainer_id
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create pokemon_params
		@pokemon.trainer_id = current_trainer.id
		check_saved = @pokemon.save
		if check_saved
			redirect_to trainer_path(current_trainer)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			render "new"
		end
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end
