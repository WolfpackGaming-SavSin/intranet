class AdminUser < ApplicationRecord
  enum role: [:user, :coordinator, :supervisor, :manager, :agent, :admin]
  enum status: [:inactive, :active]

  devise :database_authenticatable, :recoverable, :rememberable, :validatable, :trackable

  after_initialize :set_default_role, :if => :new_record?
  after_initialize :set_default_status, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  def set_default_status
    self.status ||= :active
  end
end
