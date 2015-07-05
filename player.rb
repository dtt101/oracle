class Player

  attr_reader :gender, :race, :role, :alignment, :attributes

  def initialize(options)
    @gender = options[:gender]
    @race = options[:race]
    @role = options[:role]
    @alignment = options[:alignment]

    @attributes = AttributeGenerator.new(role).attributes
  end

end
