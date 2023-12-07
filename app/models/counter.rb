class Counter < ApplicationRecord
  validates :value, presence: true, numericality: { greater_than_or_equal_to: 0 }

  after_initialize :set_default_value

  private

  def set_default_value
    self.value ||= 0
  end
end
