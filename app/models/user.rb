class User < ApplicationRecord
  # validates :name, presence: true, length: { maximum: 50 }
  # validates :name_kana, presence: true
  # validates :tel, presence: true
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  # validates :mail, presence: true, length: { maximum: 255 },
  #                  format: { with: VALID_EMAIL_REGEX },
  #                  uniqueness: { case_sensitive: false }
  # validates :birthday, presence: true
  # validates :question,  length: { maximum: 50 }

  validate :add_error

  def add_error
    errors[:base] << "氏名が入力されていません。" if name.empty?
    errors[:base] << "氏名(カナ)が入力されていません。" if name_kana.empty?
    errors[:base] << "電話番号が入力されていません。" if tel.empty?
    errors[:base] << "メールアドレスが入力されていません。" if mail.empty?
    errors[:base] << "生年月日が入力されていません。" if birthday.empty?
    # errors.add(:name, "氏名が入力されていません。") if name.empty?
    # errors.add(:name_kana, "氏名(カナ)が入力されていません。") if name_kana.empty?
    # errors.add(:tel, "電話番号が入力されていません。") if tel.empty?
    # errors.add(:mail, "メールアドレスが入力されていません。") if mail.empty?
    # errors.add(:birthday, "生年月日が入力されていません。") if birthday.empty?
  end

end
