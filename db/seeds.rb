
admin = User.find_by(email: 'admin@example.com')

unless admin
  User.create!(
    email: 'admin@example.com',
    password: 'Password@#',
    password_confirmation: 'Password@#'
  )
end
