class UsersController < ApplicationController

  def index
    users = User.all
    render json: users.as_json({
      except: [:updated_at, :created_at],
      include: {
        favourites: {
          except: [:updated_at, :created_at, :image]
        }
      }
      })
  end

end