class Pickup < ActiveRecord::Base
  def self.random
    template = Pickup.all.sample(1)[0]
    needs = template.text.scan(/\[(.*?)\]/)
    freq = Hash.new(0)
    needs.each do |symbol|
      freq[symbol] += 1
    end
    freq.each do |key, value|
      template.subsitute(key, value)
    end
    template
  end

  def subsitute(symbol, freq)
    obj_type = Mapping.find_by_symbol(symbol).object_type
    objects = Partial.where(object_type: obj_type).sample(freq)
    freq.times do |i|
      replacement = objects.pop.text
      self.text.sub!(symbol[0], replacement)
    end
      self.text
  end
end
