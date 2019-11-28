class UserMailer < ApplicationMailer
 
    def welcome_email(current_user)
        headers['X-MJ-CustomID'] = 'custom value'
        headers['X-MJ-EventPayload'] = 'custom payload'
            @user = current_user
            #on localhost:
            #@url  = 'http://localhost:3000/users/sign_up'
            #on PRODUCTION mode:
            @url  = 'https://bamby-boutique.herokuapp.com/users'
            mail(
                from: 'bamby.boutique.thp@gmail.com',
                to: @user.email,
                subject: "Bienvenue dans Bamby-boutique!"
                )
    end

    #Sending mail tou CUSTOMER after customer paid chart
    def order_email(current_order)
        headers['X-MJ-CustomID'] = 'custom value'
        headers['X-MJ-EventPayload'] = 'custom payload'
        @order = current_order
        @user = @order.user
        mail(
            from: 'bamby.boutique.thp@gmail.com',
            to: @user.email,
            subject: 'Bamby-boutique: merci pour votre achat!'
            ) 
    end

    #Sending mail to ADMIN after customer paid chart
    def admin_order_email(current_order)
        headers['X-MJ-CustomID'] = 'custom value'
        headers['X-MJ-EventPayload'] = 'custom payload'
        @order = current_order
        @user = @order.user
        mail(
            from: 'bamby.boutique.thp@gmail.com',
            to: 'bamby.boutique.thp@gmail.com',
            subject: ':ADMIN: Nouvel achat à expédier'
            ) 
    end

end
