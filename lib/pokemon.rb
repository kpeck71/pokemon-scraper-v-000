class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  @@all = []

  def initialize(id:, name:, type:, db:, hp:nil)
    @id, @name, @type, @db, @hp = id, name, type, db, hp
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id,db)
    self.detect{|p| p.id == id.to_i }
  end

  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? where id = ?", new_hp, self.id)
  end
end
