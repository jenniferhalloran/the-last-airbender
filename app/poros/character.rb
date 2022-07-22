class Character 
    attr_reader :name,
                :allies,
                :enemies,
                :photo_url,
                :affiliation

    def initialize(data)
      @name = data[:name]
      @allies = format_array(data[:allies])
      @enemies = format_array(data[:enemies])
      @photo_url = data[:photoUrl]
      @affiliation = data[:affiliation]
    end

    def format_array(array)
        array.join(", ")
    end
end