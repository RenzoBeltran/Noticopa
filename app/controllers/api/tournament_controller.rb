class Api::TournamentController < ApplicationController
	def index
		@tournaments = Tournament.all
	end

	def create
		puts 'estoy en create'
		@tournament = Tournament.new(name: params[:name],
			image_url: params[:image_url])
		@tournament.save
		puts @tournament.errors.messages
	end

	def show
		begin
			@tournament = Tournament.find(params[:tournament_id])
		rescue
			render json: {tournament: {}}
		end		
	end

	def update
		@tournament = Tournament.find(params[:tournament_id])
		render json: @tournament.update(name: params[:name], image_url: params[:image_url])

	end

	def destroy
		begin
			@tournament = Tournament.find(params[:tournament_id]).destroy
			if @tournament.destroyed?
				render json: true
			else
				render json: false
			end
		rescue
			render json: false
		end
	end


end
