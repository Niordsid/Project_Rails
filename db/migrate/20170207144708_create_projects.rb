class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|


      t.string :title,                null: false, default:""
      t.string :description,          null: false, default: ""
      t.datetime :create_at
      t.decimal  :percent_complete,   null:false, default: 0 

      t.timestamps
    end
  end
end
