class User < ActiveRecord::Base
  include Location
  extend FriendlyId
  friendly_id :use_for_slug, use: :slugged
  has_secure_password
  
  has_one :profile
  has_many :user_profile_pictures, dependent: :destroy
  
  has_many :assigned_tasks, dependent: :destroy
  has_many :tasks, through: :assigned_tasks
  
  validates_presence_of :password, :on => :create
  validates :first_name, :presence => true, length: {minimum: 2, maximum: 20}
  validates :last_name, :presence => true, length: {minimum: 2, maximum: 20}
  # validates :email, :presence => true, :uniqueness => true
#   validates :zip_code, length: {is: 5}, :numericality => true, allow_blank: true
#   friendly_id :use_for_slug, use: :slugged
  before_save { self.email = email.downcase }
  before_create { generate_token(:authentication_token) }
  #after_update :password_changed?, :on => :update
  before_save :encrypt_password

  
  def avatar
    if user_profile_pictures.last.try(:id).blank?
      "http://www.clker.com/cliparts/A/Y/O/m/o/N/placeholder-md.png"
    else
      user_profile_pictures.last.photo
    end
  end
  
  def full_name
    first_name && last_name && "#{first_name} #{last_name}" || email
  end
  
  # def full_name_with_me
  #   if current_user
  #
  #   else
  #     first_name && last_name && "#{first_name} #{last_name}" || email
  #   end
  # end
  
  
  def use_for_slug
    existing_user = User.where('first_name = ?', self.first_name).where('last_name = ?', self.last_name)
    if existing_user.present?
      "#{first_name} #{last_name} #{existing_user.count}"
    else
      "#{first_name} #{last_name}"
    end
  end
  
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
  
  def encrypt_password
    unless self.password.nil?
      self.password_digest = BCrypt::Password.create(self.password)
    end
  end
  
  def incomplete_tasks
    tasks.where(completed: false)
  end
  
  def self.find_by_full_name(full_name)
    all.each do |user|
      return user if (user.full_name == full_name)
    end
  end
  
end
