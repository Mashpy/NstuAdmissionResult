require 'test_helper'

class NstuAdmissionsControllerTest < ActionController::TestCase
  setup do
    @nstu_admission = nstu_admissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nstu_admissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nstu_admission" do
    assert_difference('NstuAdmission.count') do
      post :create, nstu_admission: { ENG: @nstu_admission.ENG, ana_abi: @nstu_admission.ana_abi, ban_eng: @nstu_admission.ban_eng, bangla: @nstu_admission.bangla, bio: @nstu_admission.bio, che: @nstu_admission.che, father_name: @nstu_admission.father_name, gen_kno: @nstu_admission.gen_kno, hsc_gpa: @nstu_admission.hsc_gpa, math: @nstu_admission.math, math: @nstu_admission.math, merit: @nstu_admission.merit, name: @nstu_admission.name, phy: @nstu_admission.phy, roll_no: @nstu_admission.roll_no, ssc_gpa: @nstu_admission.ssc_gpa }
    end

    assert_redirected_to nstu_admission_path(assigns(:nstu_admission))
  end

  test "should show nstu_admission" do
    get :show, id: @nstu_admission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nstu_admission
    assert_response :success
  end

  test "should update nstu_admission" do
    patch :update, id: @nstu_admission, nstu_admission: { ENG: @nstu_admission.ENG, ana_abi: @nstu_admission.ana_abi, ban_eng: @nstu_admission.ban_eng, bangla: @nstu_admission.bangla, bio: @nstu_admission.bio, che: @nstu_admission.che, father_name: @nstu_admission.father_name, gen_kno: @nstu_admission.gen_kno, hsc_gpa: @nstu_admission.hsc_gpa, math: @nstu_admission.math, math: @nstu_admission.math, merit: @nstu_admission.merit, name: @nstu_admission.name, phy: @nstu_admission.phy, roll_no: @nstu_admission.roll_no, ssc_gpa: @nstu_admission.ssc_gpa }
    assert_redirected_to nstu_admission_path(assigns(:nstu_admission))
  end

  test "should destroy nstu_admission" do
    assert_difference('NstuAdmission.count', -1) do
      delete :destroy, id: @nstu_admission
    end

    assert_redirected_to nstu_admissions_path
  end
end
