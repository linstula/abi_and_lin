class GuestSerializer < ActiveModel::Serializer
  attributes :id, :name, :group_id, :rsvp_status, :visit_duration
end
