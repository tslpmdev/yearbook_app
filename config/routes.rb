YearbookApp::Application.routes.draw do
  get('/courses/:course_id', { :controller => 'Courses', :action => 'section' })
end
