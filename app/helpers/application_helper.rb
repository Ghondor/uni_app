module ApplicationHelper
  def session_link
    if (logged_in?)
      link_to("My profile", student_path(current_user))
      link_to("Logout", logout_path,  method: :delete)
    else
      link_to("Signup",  new_student_path)
      link_to("Login", login_path)
    end
  end
end
