json.array!(@nstu_admissions) do |nstu_admission|
  json.extract! nstu_admission, :id, :roll_no, :name, :father_name, :ssc_gpa, :hsc_gpa, :phy, :che, :math, :bio, :ban_eng, :bangla, :ENG, :math, :ana_abi, :gen_kno, :merit
  json.url nstu_admission_url(nstu_admission, format: :json)
end
