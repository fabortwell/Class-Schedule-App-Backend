class TechnicalMentorSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_no
end

# the serializer shows how data shall be displayed