# frozen_string_literal: true

class Activity < ApplicationRecord
  belongs_to :user
  # validates :text, :user, presence: true
end
