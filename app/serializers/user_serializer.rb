class UserSerializer
  include JSONAPI::Serializer

  attributes :email, :api_key
end
  # def self.return(user)
  #   {
  #     data: {
  #       type: "users",
  #       id: user.id,
  #       attributes: {
  #         email: user.email,
  #         api_key: user.api_key
  #       }
  #     }
  #   }
  # end
# end