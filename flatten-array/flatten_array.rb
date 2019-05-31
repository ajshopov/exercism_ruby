class FlattenArray
  def self.flatten(array_to_flatten)
    array_to_flatten.flatten.compact
  end
end