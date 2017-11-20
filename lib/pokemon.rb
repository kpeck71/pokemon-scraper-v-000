class Pokemon
  attr_accessor :name, :type, :db

  def initialize(catch_em_all)
    @name = catch_em_all[:pk_name]
    @type = catch_em_all[:pk_type]
    @db = catch_em_all[:pk_name]
  end

  def self.save(pk_name, pk_type, db)
  end

  def find
  end

end
