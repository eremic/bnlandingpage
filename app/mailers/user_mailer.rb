class UserMailer < ActionMailer::Base
  default from: "BrewNation <welcome@harrys.com>"

  def signup_email(user)
    @user = user
    @twitter_message = "#Birra evolva. Excited for @BrewNationCo to launch."

    mail(:to => user.email, :subject => "Thanks for signing up!")
  end
end
