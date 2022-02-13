class PostsController < ApplicationController
  def index
    @posts = [
      {id: 1, name: "POST 1", address: "http://warpas.blog"},
      {id: 2, name: "POST 2", address: "nie"},
      {id: 3, name: "POST 3", address: "nie, zamsz"},
      {id: 4, name: "POST 4", address: "nie, zamsz"},
      {id: 5, name: "POST 5", address: "nie, zamsz"},
      {id: 6, name: "POST 6", address: "nie, zamsz"}
    ]
  end
  def show
  end
end
