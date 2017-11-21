class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  @@all = []

  def initialize(catch_em_all)
    @id = catch_em_all[:id]
    @name = catch_em_all[:name]
    @type = catch_em_all[:type]
    @db = catch_em_all[:db]
    @hp = 60
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type, hp) VALUES (?, ?, ?)", name, type, hp)
  end

  def self.find(id,db)
    self.all.detect{|p| p.id == id.to_i }
  end

  def alter_hp(new_hp)
    self.hp = new_hp
  end
end
