$("#like-<%= @tweet.id %>").
  html("<%= j(render partial: 'users/like', locals: { tweet: @tweet }) %>");