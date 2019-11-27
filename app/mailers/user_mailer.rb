class UserMailer < ApplicationMailer
 
    def welcome_email(current_user)
        headers['X-MJ-CustomID'] = 'custom value'
        headers['X-MJ-EventPayload'] = 'custom payload'
            @user = current_user
            @url  = 'http://localhost:3000/users/sign_up'
            #pour PROD:  @url  = 'https://bamby-boutique-development.herokuapp.com/users'
            mail(
                from: 'argudo.daniel@gmail.com',
                to: @user.email,
                subject: "Bienvenue dans Bambyboutique!"
                )
    end

    def order_email(current_order)
        @order = current_order
        @user = @order.user
        mail(
            from: 'argudo.daniel@gmail.com',
            to: @user.email,
            subject: 'Bambyboutique, Merci pour votre achat!') 
        # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    end

end
