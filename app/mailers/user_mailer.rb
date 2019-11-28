class UserMailer < ApplicationMailer
 
    def welcome_email(current_user)
        headers['X-MJ-CustomID'] = 'custom value'
        headers['X-MJ-EventPayload'] = 'custom payload'
            @user = current_user
            #on localhost:
            #@url  = 'http://localhost:3000/users/sign_up'
            #on PRODuction mode:
            @url  = 'https://bamby-boutique-development.herokuapp.com/users'
            mail(
                from: 'bamby.boutique.thp@gmail.com',
                to: @user.email,
                subject: "Bienvenue dans Bambyboutique!"
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
            subject: 'Bambyboutique, Merci pour votre achat!'
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
            subject: 'ADMIN: Un nouvel achat a été effectué sur le site'
            ) 
    end

end
