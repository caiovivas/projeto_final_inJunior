class User < ActiveRecord::Base  #Controle de validade de novos usuários
  before_save { self.email = email.downcase }
  validates :cpf, presence: true, length: { is: 11 }
  validates :nome, presence: true, length: { maximum: 32 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 },
            format: { with: VALID_EMAIL_REGEX }
  has_secure_password
  validates :password, presence: true, length: { in: 4..32 }
end