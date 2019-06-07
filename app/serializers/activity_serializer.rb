class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :sport, :date, :duration, :location
  has_one :user
  belongs_to :user
end
