class TipoMaterial < ActiveRecord::Base
  validates :nome, presence: true
end
