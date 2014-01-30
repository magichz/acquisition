class FormsController < ApplicationController
	def new
	end

	def create
		@form = Form.new(form_params)

		@form.save
		redirect_to @form
	end

	def show
		@form = Form.find(params[:id])
	end

	def index
		@forms = Form.all
	end

	private
		def form_params
			params.require(:form).permit(:Medical_Centre_Name)
		end


end
