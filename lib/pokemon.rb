class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  @@all = []

  def initialize(id:nil, name:nil, type:nil, db:nil, hp:nil)
    @id, @name, @type, @db, @hp = id, name, type, db, hp


    # @id = catch_em_all[:id]
    # @name = catch_em_all[:name]
    # @type = catch_em_all[:type]
    # @db = catch_em_all[:db]
    # @hp = 60 || hp
    # @@all << self
  end

  def self.all
    @@all
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id,db)
    self.all.detect{|p| p.id == id.to_i }
  end

  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? where id = ?", new_hp, self.id)
  end
  binding.pry
end
