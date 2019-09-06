class BeerSerializer < ActiveModel::Serializer
  attributes :id, :style, :min_temp, :max_temp
end
