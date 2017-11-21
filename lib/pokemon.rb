class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  @@all = []

  def initialize(catch_em_all)
    @id = catch_em_all[:id]
    @name = catch_em_all[:name]
    @type = catch_em_all[:type]
    @db = catch_em_all[:db]
    @@all << self
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id,db)
    pokes = db.execute("SELECT * FROM pokemon WHERE id= ?", id).flatten
    Pokemon.new(id: pokes[0], name: pokes[1], type: pokes[2], hp: pokes[3], db: db)
  end

  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? where id = ?", new_hp, self.id)
  end
end
