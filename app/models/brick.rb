class Brick < ActiveRecord::Base
  
  has_many :relationships, :dependent => :destroy
  has_many :relations, :through => :relationships
  
  has_many :inverse_relationships, :class_name => "Relationship", :foreign_key => "relation_id", :dependent => :destroy
  has_many :inverse_relations, :through => :inverse_relationships, :source => :brick
  
  has_many :statizations, :dependent => :destroy
  has_many :states, :through => :statizations
  
  has_many :categorizations, :dependent => :destroy
  has_many :categories, :through => :categorizations
  
  has_many :notes, :as => :notable
    
  validates :name, :presence => true, :uniqueness => true
  
  attr_accessor :new_category, :new_state, :new_species, :new_gender, :brick_category, :brick_to_state, :state_to_species, :species_to_gender, :gender_to_field
  
  after_create :build_nested_objects
  
  private
  
  def build_nested_objects
    use_or_create_state
    use_or_create_species
    use_or_create_gender
    
    field   = self.gender_to_field
    self.statizations.create(:state_id => @state)
    Speciesization.create(:state_id => @state, :species_id => @species)
    Genderization.create(:species_id => @species, :gender_id => @gender)
  end
  
  def use_or_create_state
    if !self.new_state.blank?
      @state = State.create(:name => self.new_state)
      @state = @state.id
    else
      @state = self.brick_to_state
    end
  end
  
  def use_or_create_species
    if !self.new_species.blank?
      @species = Species.create(:name => self.new_species)
      @species = @species.id
    else
      @species = self.state_to_species
    end
  end
  
  def use_or_create_gender
    if !self.new_gender.blank?
      @gender = Gender.create(:name => self.new_gender)
      @gender = @gender.id
    else
      @gender = self.species_to_gender
    end
  end
  
  
end
