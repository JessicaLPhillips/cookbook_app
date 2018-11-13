class LuluServices::Base
	def initialize
		@connection = Excon.new(
			'https://api.lulu.com/print-jobs/',
			headers: {
				'Content-Type': 'application/json',
				'Authorization': 
				'Cache-Control': 'no-cache',
				}
			)		
	end
end