class TextInspectionsController < ApplicationController

	def new
	end

	def create
 
	 	@text = params[:text_inspection][:user_text]

	 	@word_count = @text.split(" ").length

	 	@ert = ((@word_count*60)/275).to_d

	 	@most_written = Hash.new

		@most_written = @text.split(" ").reduce(Hash.new(0)) { |h, v| h.store(v, h[v] + 1); h }

		@ten_most = Hash[@most_written.sort_by{|k,v| -v}[0..9]]

	  render "results"

  end

end
