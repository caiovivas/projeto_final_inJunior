class Material < ActiveRecord::Base
  validates :descricao, presence: true
  validates :tipo, presence: true
  validates :patrimonio, presence: true
  validates :usuario, presence: true
end
