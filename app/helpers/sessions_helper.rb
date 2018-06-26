module SessionsHelper
    def current_user
        #@current_user(訳は現在のユーザー)にUserテーブルからsessionによって保持されたユーザーidを探してきて代入
        
        @current_user ||= User.find_by(id: session[:user_id])
    end
    
    def logged_in?
        !!current_user
    end
end
