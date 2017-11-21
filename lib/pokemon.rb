class Pokemon
  attr_accessor :id, :name, :type, :db, :hp  #this can't be right

  def initialize(catch_em_all)
    @id = catch_em_all[:id]
    @name = catch_em_all[:name]
    @type = catch_em_all[:type]
    @db = catch_em_all[:db]
    @hp = 60
  end

  def self.save(id, name, type, db)
    db.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?)", id, name, type)
  end

  def find
  end

end
