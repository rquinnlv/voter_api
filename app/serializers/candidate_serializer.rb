class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :name, :percentage, :ward, :photo_path
end
