class ApplicationController < ActionController::Base
rescue_from Exception,with: :there_is_an_exception

	private
	 def there_is_an_exception
	 	flash[:alert] = "This isn't available to you right now."
    	redirect_to(root_path)
	end
end
