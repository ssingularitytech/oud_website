admin = User.find_by(email: 'admin@example.com')

unless admin
  User.create!(
    email: 'admin@example.com',
    password: 'Password@1234',
    password_confirmation: 'Password@1234'
  )
end
