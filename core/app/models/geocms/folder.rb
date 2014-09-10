module Geocms
  class Folder < ActiveRecord::Base
    extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]

    belongs_to :user

    has_many :contexts

    validates :user, :name, presence: true
    validates :name, uniqueness: true
  end
end