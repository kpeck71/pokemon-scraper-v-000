class Pokemon
  attr_accessor :name, :type, :db

  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
  end

  def save(pk_name, pk_type, db)
  end

  def find
  end

end
