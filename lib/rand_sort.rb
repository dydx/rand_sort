module RandomSort

  module Array

    def sorted?
      each_cons(2).all? { |a, b| (a <=> b) <= 0 }
    end

    def rsort
      if self.sorted?
        self
      else
        self.shuffle!
        self.rsort
      end
    end

  end

end

Array.include RandomSort::Array
