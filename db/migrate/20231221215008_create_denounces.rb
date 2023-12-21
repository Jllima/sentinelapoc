class CreateDenounces < ActiveRecord::Migration[7.1]
  def change
    create_table :denounces do |t|
      t.string :desc

      t.timestamps
    end
  end
end
