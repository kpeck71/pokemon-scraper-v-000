class Pokemon
  attr_accessor :pk_name, :type, :db

  def initialize(pk_name, pk_type, db)
    @pk_name = pk_name
    @pk_type = pk_type
    @db = db
  end

  def save(pk_name, pk_type, db)
  end

  def find
  end

end
