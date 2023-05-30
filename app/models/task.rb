class Task < ApplicationRecord
  enum priority: { high: 0, medium: 1, low: 2 }
  enum status: { todo: 0, in_progress: 1, review: 2, done: 3, cancelled: 4 }

  belongs_to :user

  has_paper_trail

  scope :undiscarded,         -> { where(deleted_at: nil) }

  def self.filter_by_priority(priorities)
    where(priority: priorities)
  end

  def discard
    update(deleted_at: Time.current)
  end
end
