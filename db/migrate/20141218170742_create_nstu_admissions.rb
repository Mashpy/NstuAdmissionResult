class CreateNstuAdmissions < ActiveRecord::Migration
  def change
    create_table :nstu_admissions do |t|
      t.integer :roll_no
      t.string :name
      t.string :father_name
      t.float :ssc_gpa
      t.float :hsc_gpa
      t.float :phy
      t.float :che
      t.float :math
      t.float :bio
      t.float :ban_eng
      t.float :bangla
      t.float :ENG
      t.float :math
      t.float :ana_abi
      t.float :gen_kno
      t.float :merit

      t.timestamps
    end
  end
end
