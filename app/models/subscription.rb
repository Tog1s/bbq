class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :event, presence: true
  validates :user_name, presence: true, unless: -> { user.present? }
  validates :user_email, presence: true, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/, unless: -> { user.present? }

  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }
  validates :user_email, uniqueness: {scope: :event_id}, unless: -> { user.present? }
  
  validate :check_email_uniq, on: :create
  #validate :check_current_user, on: :create

  def user_name
    if user.present?
      user.name
    else
      super
    end
  end

  def user_email
    if user.present?
      user.email
    else
      super
    end
  end
  
  private
  
  def check_email_uniq
    errors.add(:user_email, :taken) if user.nil? && User.where(email: user_email).present?
  end
  
  def check_current_user
    errors.add(:user, I18n.t('subscriptions.errors.self_subscriptions_error')) if event.user == user
  end
  
  def subscription_params
    params.fetch(:subscription, {}).permit(:user_email, :user_name)
  end
end
