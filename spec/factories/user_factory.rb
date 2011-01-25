Factory.define :minimal_user, :class => User do |u|
  u.username 'minimal'
  u.email 'minimal@example.com'
  u.password 'test1234'
  u.password_confirmation 'test1234'
end
