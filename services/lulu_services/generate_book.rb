class LuluServices::GenerateBook < LuluServices::Base
	class Error < StandardError; end
	def post(book_pdf)
		begin
			response = @connection.post (
				path: 
				body:
				expects:
				debug_response: true
			)
			J
end