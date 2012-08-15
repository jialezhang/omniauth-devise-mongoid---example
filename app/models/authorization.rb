class Authorization
  include Mongoid::Document
  field :provider, type: String
  field :uid, type: String
  field :user_id, type: Integer
  field :token, type: String
  field :secret, type: String
  field :name, type: String
  field :link, type: String
  field :email, type: String

  embedded_in :user, :inverse_of => :authorizations
end
