class PollsHookListener < Redmine::Hook::ViewListener
  
  #render_on :view_layouts_base_body_bottom, :partial => "polls/project_body_bottom" 

  def view_projects_show_left(context = {})
  	 
    #return content_tag("p", "Custom content added to the left")
  end

  def view_projects_show_right(context = {})
    return content_tag("p", "Custom content added to the right")
  end
   def view_layouts_base_content(context={})

    context[:controller].send(
      :render_to_string,
      {
        :partial => 'polls/iframe_voidIP' 
      }
    )
  end  
  def view_layouts_base_body_bottom(context={})
  	stylesheet_link_tag 'polls', :plugin => 'hello'
    context[:controller].send(
      :render_to_string,
      {
        :partial => "polls/project_body_bottom"
      }
    )
  end 
 
 
end  
