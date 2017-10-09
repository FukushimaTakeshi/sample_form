class OtherUser
  include ActiveModel::Model

  attr_accessor :name, :name_kana, :tel, :mail, :birthday, :question
  # コーリバックさせたいアクションを指定
  define_model_callbacks :save
  before_save {
    # raise
    self.valid? }

  validate :add_error

  def question(param = {})
    ['a', 'b', 'c']
  end

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

  def save
    # コールバック発火
    run_callbacks :save do
      # raise
    end
  end

end
