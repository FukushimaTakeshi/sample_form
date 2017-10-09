class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :name_kana, presence: true
  validates :tel, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :mail, presence: true, length: { maximum: 255 },
                   format: { with: VALID_EMAIL_REGEX },
                   uniqueness: { case_sensitive: false }
  validates :birthday, presence: true
  validates :question,  length: { maximum: 50 }

end
