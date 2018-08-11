module Findable
    def find_by_name(name)
      self.all.find{|o| o.name}
  end
end
