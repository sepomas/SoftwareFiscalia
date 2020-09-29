class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :rut, format: { with: /([0-3]{0,1}+).([000-999]{3}+).([000-999]{3}+)-([0-9])/,
                            message: 'invalid' }, uniqueness: true

  def Carabinero?
    if job == "Carabinero"
      true
    else
      false
    end
  end

  def Fiscal?
    if job == "Fiscal"
      true
    else
      false
    end
  end
end
