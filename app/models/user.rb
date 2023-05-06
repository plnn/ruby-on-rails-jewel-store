class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password
  after_destroy :ensure_an_admin_remains

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name,  :password, :password_confirmation
  
  
  private
    def ensure_an_admin_remains
        if User.count.zero?
    		raise "Can't delete last user"
    	end
    end
end
