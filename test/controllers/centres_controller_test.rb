require 'test_helper'

class CentresControllerTest < ActionController::TestCase
  setup do
    @centre = centres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:centres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create centre" do
    assert_difference('Centre.count') do
      post :create, centre: { Address_state: @centre.Address_state, accountant_id: @centre.accountant_id, address_id: @centre.address_id, address_postcode: @centre.address_postcode, address_street: @centre.address_street, address_suburb: @centre.address_suburb, admin_no: @centre.admin_no, centre_id: @centre.centre_id, centre_id: @centre.centre_id, centre_id: @centre.centre_id, centre_name: @centre.centre_name, contact_email: @centre.contact_email, contact_id: @centre.contact_id, contact_name: @centre.contact_name, contact_position: @centre.contact_position, contact_title: @centre.contact_title, contact_type: @centre.contact_type, doctor_contract: @centre.doctor_contract, doctor_id: @centre.doctor_id, doctor_name: @centre.doctor_name, end_date: @centre.end_date, external_rating: @centre.external_rating, hourly_rate: @centre.hourly_rate, internal_rating: @centre.internal_rating, nursing_no: @centre.nursing_no, offer_amount: @centre.offer_amount, operation_days: @centre.operation_days, pathology_provider_Name: @centre.pathology_provider_Name, phone_number: @centre.phone_number, plan_year: @centre.plan_year, practitioner_no: @centre.practitioner_no, profit_beforetax: @centre.profit_beforetax, property_ownership: @centre.property_ownership, property_type: @centre.property_type, radiology_provider_name: @centre.radiology_provider_name, rental_dentist: @centre.rental_dentist, rental_dietician: @centre.rental_dietician, rental_hearing: @centre.rental_hearing, rental_pathology: @centre.rental_pathology, rental_physio: @centre.rental_physio, revenue_alliedhealth: @centre.revenue_alliedhealth, revenue_medicare: @centre.revenue_medicare, revenue_practice: @centre.revenue_practice, revenue_thirdparty: @centre.revenue_thirdparty, service_year: @centre.service_year, software_name: @centre.software_name, specialist_no: @centre.specialist_no, start_date: @centre.start_date }
    end

    assert_redirected_to centre_path(assigns(:centre))
  end

  test "should show centre" do
    get :show, id: @centre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @centre
    assert_response :success
  end

  test "should update centre" do
    patch :update, id: @centre, centre: { Address_state: @centre.Address_state, accountant_id: @centre.accountant_id, address_id: @centre.address_id, address_postcode: @centre.address_postcode, address_street: @centre.address_street, address_suburb: @centre.address_suburb, admin_no: @centre.admin_no, centre_id: @centre.centre_id, centre_id: @centre.centre_id, centre_id: @centre.centre_id, centre_name: @centre.centre_name, contact_email: @centre.contact_email, contact_id: @centre.contact_id, contact_name: @centre.contact_name, contact_position: @centre.contact_position, contact_title: @centre.contact_title, contact_type: @centre.contact_type, doctor_contract: @centre.doctor_contract, doctor_id: @centre.doctor_id, doctor_name: @centre.doctor_name, end_date: @centre.end_date, external_rating: @centre.external_rating, hourly_rate: @centre.hourly_rate, internal_rating: @centre.internal_rating, nursing_no: @centre.nursing_no, offer_amount: @centre.offer_amount, operation_days: @centre.operation_days, pathology_provider_Name: @centre.pathology_provider_Name, phone_number: @centre.phone_number, plan_year: @centre.plan_year, practitioner_no: @centre.practitioner_no, profit_beforetax: @centre.profit_beforetax, property_ownership: @centre.property_ownership, property_type: @centre.property_type, radiology_provider_name: @centre.radiology_provider_name, rental_dentist: @centre.rental_dentist, rental_dietician: @centre.rental_dietician, rental_hearing: @centre.rental_hearing, rental_pathology: @centre.rental_pathology, rental_physio: @centre.rental_physio, revenue_alliedhealth: @centre.revenue_alliedhealth, revenue_medicare: @centre.revenue_medicare, revenue_practice: @centre.revenue_practice, revenue_thirdparty: @centre.revenue_thirdparty, service_year: @centre.service_year, software_name: @centre.software_name, specialist_no: @centre.specialist_no, start_date: @centre.start_date }
    assert_redirected_to centre_path(assigns(:centre))
  end

  test "should destroy centre" do
    assert_difference('Centre.count', -1) do
      delete :destroy, id: @centre
    end

    assert_redirected_to centres_path
  end
end
