module UsersHelper
  def show
    @nickname = current_user.nickname
    @tweets = current_user.tweets
end
