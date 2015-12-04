class Task < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :name_task, presence: true, length: { maximum: 50 }
  validates :date, presence: true

end
