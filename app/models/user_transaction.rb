class UserTransaction < ApplicationRecord
  belongs_to :from_user, class_name: 'User', optional: true
  belongs_to :to_user, class_name: 'User'

  validates :amount, presence: true
  after_create :save_users_balance

  def save_users_balance
    ActiveRecord::Base.transaction do
      if from_user
        from_user.balance -= amount
        return if from_user.balance.negative?
      end
      to_user.balance += amount
      to_user.save

      from_user.try(:save)
    end
  end
end
