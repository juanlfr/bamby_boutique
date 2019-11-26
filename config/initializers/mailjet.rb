# kindly generated by appropriated Rails generator
Mailjet.configure do |config|
  config.api_key = '164ccbf592bd054b2d3e0785a8383167'
  config.secret_key = 'f355547b8dc1664a180fe8f9b24c7db1'
  config.default_from = 'argudo.daniel@gmail.comm'
  # Mailjet API v3.1 is at the moment limited to Send API.
  # We’ve not set the version to it directly since there is no other endpoint in that version.
  # We recommend you create a dedicated instance of the wrapper set with it to send your emails.
  # If you're only using the gem to send emails, then you can safely set it to this version.
  # Otherwise, you can remove the dedicated line into config/initializers/mailjet.rb.
  config.api_version = 'v3.1'

end

variable = Mailjet::Send.create(messages: [{
  'From'=> {
    'Email'=> 'argudo.daniel@gmail.com',
    'Name'=> 'Daniel'
  },
  'To'=> [
    {
      'Email'=> 'argudo.daniel@gmail.com',
      'Name'=> 'Daniel'
    }
  ],
  'Subject'=> 'Bienvenue de la belle boutique',
  'TextPart'=> 'Bienvenue',
  'HTMLPart'=> '<h3>Bienvenue dans la boutique de beaux chatons <a href=\'https:/https://bamby-boutique-development.herokuapp.com/\'> Bamby boutique</a>!</h3><br /> Que le chat soit avec vous!',
  'CustomID' => 'AppGettingStartedTest'
}]
)
p variable.attributes['Messages']

