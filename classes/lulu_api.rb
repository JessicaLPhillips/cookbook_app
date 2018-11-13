require 'httparty'
class LuluApi
	include HTTParty
	base_uri "https://api.lulu.com/print-jobs/"
end