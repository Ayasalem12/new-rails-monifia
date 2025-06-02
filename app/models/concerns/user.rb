class User < ApplicationRecord
    validates :name, :DOB, :email, :phone_number, presence: true
    validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :DOB, format: { with: /\d{4}-\d{2}-\d{2}/, message: "must be in YYYY-MM-DD format" }
  end