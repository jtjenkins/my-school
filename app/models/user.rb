class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, 
         :trackable, :validatable, :two_factor_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
  :admin, :parent, :teacher, :student, 
  :has_two_factor, :two_factor_method, :two_factor_address, 
  :phone_num, :student_id, :first_name, :middle_name, :last_name,
  :grade, :birth_month, :birth_day, :birth_year

  has_many :student_classes
  has_many :classes, :through => :student_classes, :source => :classroom

  belongs_to :school,:validate => true
  validates_associated :school


  has_many :parents, :class_name => 'User'

  validates_presence_of :first_name
  validates_presence_of :last_name

  validate :school_not_nil

  # attr_accessible :title, :body
  # 
  def need_two_factor_authentication?(request)
    return has_two_factor
  end

  def send_two_factor_authentication_code(code)
    puts code
  end

  def send_sms(number, code)
    # put your own credentials here
    account_sid = 'AC12c8cfb04fc7ebd35427d8ab5d9b4f3c'
    auth_token = 'cbbf0aa93039bd8ca4ceff82af13208b'

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

    # send an sms
    @client.account.sms.messages.create(
      :from => '+15005550006', #test number
      :to => number,
      :body => 'School Planner Authentication Code: ' + code
    )
  end

  def school_not_nil
    if school.nil?
      errors.add(:school, "can't be blank")
    end
  end
end
