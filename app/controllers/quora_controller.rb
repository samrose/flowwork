require 'nokogiri'
require 'open-uri'

class QuoraController < ApplicationController
	def index

	#url = "http://www.walmart.com/search/search-ng.do?search_constraint=0&ic=48_0&search_query=batman&Find.x=0&Find.y=0&Find=Find"
	url = "http://www.quora.com/What-are-the-fundamental-requirements-and-building-blocks-of-a-distributed-internet"
	doc = Nokogiri::HTML(open(url))

	quora = puts doc.xpath('//span')

	end
end
