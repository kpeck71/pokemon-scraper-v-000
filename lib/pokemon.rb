class Pokemon
  attr_accessor :id, :pk_name, :pk_type, :db  #this can't be right

  def initialize(pokemon)
    @id = pokemon[id]
    @name = pokemon[pk_name]
    @type = pokemon[pk_type]
    @db = pokemon[db]
    @hp = 60
  end

  def self.save(id, pk_name, pk_type, db)
    db.execute("INSERT INTO pokemon (id, pk_name, pk_type) VALUES (?, ?, ?)", id, pk_name, pk_type)
  end

  def find
  end

end
