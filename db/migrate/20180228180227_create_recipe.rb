class CreateRecipe < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipe) do |r|
      r.column(:name, :string)
      r.column(:rating, :integer)
      r.column(:ingredient_id, :integer)
      r.column(:instruction_id, :integer)
      r.column(:tag_id, :integer)

      r.timestamps()
    end
  end
end
