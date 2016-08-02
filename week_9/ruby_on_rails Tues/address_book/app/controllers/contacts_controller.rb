class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		contact = Contact.new(
			:name => params[:contact][:name],
			:address => params[:contact][:address],
			:phone => params[:contact][:phone],
			:email => params[:contact][:email])

		contact.save

		redirect_to "/contacts"

	end

	def list
		@contacts = Contact.all?
	end

	def show
		@contact = Contact.find_by(:id params[:id])
			unless
