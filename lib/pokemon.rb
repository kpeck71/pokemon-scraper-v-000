class Pokemon
  attr_accessor :id, :pk_name, :pk_type, :db, :hp  #this can't be right

  def initialize(catch_em_all)
    @id = catch_em_all[:id]
    @name = catch_em_all[:pk_name]
    @type = catch_em_all[:pk_type]
    @db = catch_em_all[:db]
    @hp = 60
  end

  def self.save(id, pk_name, pk_type, db)
    db.execute("INSERT INTO pokemon (id, pk_name, pk_type) VALUES (?, ?, ?)", id, pk_name, pk_type)
  end

  def find
  end

end
