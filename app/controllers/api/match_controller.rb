class Api::MatchController < ApplicationController
	def index
		@matches = Match.all
	end

	def create
		@match = Match.new(date: params[:date],
			stadium: params[:stadium], referee: params[:referee], tournament_id: params[:tournament_id])
		@match.save

	end

	def show
		begin
			@match = Match.find(params[:match_id])
		rescue
			render json: {match: {}}
		end		
	end

	def update
		@match = Match.find(params[:match_id])
		render json: @match.update(date: params[:date], stadium: params[:stadium], referee: params[:referee], tournament_id: params[:tournament_id])

	end

	def destroy
		begin
			@match = Match.find(params[:match_id]).destroy
			if @match.destroyed?
				render json: true
			else
				render json: false
			end
		rescue
			render json: false
		end
	end
end
