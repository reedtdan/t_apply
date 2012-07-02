# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation,
    :DOB, :POB, :Perm_Address, :Cur_Address, :Telephone,
    :Current_Year, :Grad_Level, :Expected_Grad_Date, :Interests,
    :School1, :School2, :School3, :School4, :School5, :Honors_Awards,
    :Extra_Comm_Service, :Work_Experience, :Parent1_Name, :Parent1_Phone, 
    :Parent1_Email, :Parent2_Name, :Parent2_Phone, :Parent2_Email, 
    :Background, :Gender, :Parent_Ed, :Parent_Occupation, :Telluride_Learn,
    :Sig_Name, :Sig_Date
    
  has_secure_password
  
 # has_attached_file :Essay1,
  #  :storage => :s3,
   # :bucket => ENV['App_Uploads'],
#    :s3_credentials => {
#      :access_key_id => ENV['AKIAIDTWYSNZFZXMSRZA'],
#      :secret_access_key => ENV['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']
#    }


  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
  
  private

      def create_remember_token
        self.remember_token = SecureRandom.urlsafe_base64
      end
end