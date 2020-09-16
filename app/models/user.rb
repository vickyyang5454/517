class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
#include DataMapper::Resource

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

'''  property :id, Serial
  property :email, String, :required => true, :unique => true, :format => :email_address
  property :active, Boolean
  # ...

  has n, :roles, :through => Resource
  # ...

  # for assignment of roles
  def role_ids=(ids)
    self.roles.clear
    ids.delete_if{|i| i.empty?}.each do |id|
      self.roles << Role.get(id)
    end
  end

  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end

  def role?(role)
    return !!self.roles.first(:name => role.to_s.camelize)
  end'''

end


