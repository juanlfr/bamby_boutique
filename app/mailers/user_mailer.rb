class UserMailer < ApplicationMailer
 
    def welcome_email(current_user)
        headers['X-MJ-CustomID'] = 'custom value'
        headers['X-MJ-EventPayload'] = 'custom payload'
            @user = current_user
            @url  = 'http://localhost:3000/users/sign_up'
          #@url  = 'https://bamby-boutique-development.herokuapp.com/users'
            mail(
                from: 'argudo.daniel@gmail.com',
                to: @user.email,
                subject: "Bambyboutique"
                )
        #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
        #@user = current_user
    
        #on définit une variable @url qu'on utilisera dans la view d’e-mail
        #@url  = 'http://localhost:3000/users/sign_up'
        

        #mail(to: @user.email, subject: 'Bienvenue dans la boutique de chatons')
    end

    #def buy_email
        #@user = params[:user]
        # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
        #mail(to: @user.email, subject: 'Merci pour votre achat') 
   #end

  
end
