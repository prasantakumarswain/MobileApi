namespace :admin_users do

  desc "Create Admin users via rakes"
  task :create_admin => :environment do
    admin = Admin.new
    admin.email = "admin@webonise.com"
    admin.password = "admin6186"
    admin.password_confirmation = "admin6186"
    admin.save
  end

end