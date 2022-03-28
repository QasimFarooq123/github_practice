class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects
  validates :first_name, :last_name, presence: true
  validates :last_name, uniqueness: true
  # validates :first_name, :last_name, length: {minimum: 3, maximum: 18}
  # validates :first_name, format: {with: /\A[a-zA-Z]\+/, message: 'only letter are allowed'}
  validate :name_length
  after_commit :display_name
  def display_name
    if last_name.present?
      puts 'name is present'
    else
      puts 'name is not present'
    end
  end

  def name_length
    puts 'lenth is to short' if first_name.length < 3
  end
end
