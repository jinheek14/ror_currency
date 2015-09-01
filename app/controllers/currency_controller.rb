class CurrencyController < ApplicationController
	def index
		@countrydatum = CountryDatum.all
	end
end
