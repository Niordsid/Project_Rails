class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|


      t.string :title,          null: false,  default: ""
      t.string :description,    null:false,   default: ""
      t.string :status,         null: false,  default:"Pending"
      t.datetime :create_at
      t.datetime :due_at

      t.timestamps



    end
    add_foreign_key :users, :tasks
    add_foreign_key :projects, :tasks

  end
end
