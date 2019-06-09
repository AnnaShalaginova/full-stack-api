# frozen_string_literal: true

class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :sport, :date, :duration, :location
  # has_one :user
  # belongs_to :user
  def editable
    scope == object.user
  end
end
