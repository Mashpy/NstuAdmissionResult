ActiveAdmin.register NstuAdmission do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :roll_no, :name, :father_name, :ssc_gpa, :hsc_gpa, :phy, :che, :math, :bio, :ban_eng, :bangla, :ENG, :math, :ana_abi, :gen_kno, :merit
     index do
        column :roll_no
        column :name
        column :father_name
        column :merit
     end
end
