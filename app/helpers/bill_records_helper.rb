module BillRecordsHelper

  def get_user_name(user_id)
    User.find_by_id(user_id).name
  end
end
