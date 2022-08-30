class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :password_confirmation, :phone_no, :avatar
end
