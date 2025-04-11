<!DOCTYPE html>
<html>
<head>
  <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
</head>
<body>
  <h1>Bem-vindo ao SaveMyDemand, <%= @provider.first_name %>!</h1>
  <p>Sua conta foi criada com sucesso. Use as credenciais abaixo para acessar:</p>
  <ul>
    <li><strong>Email:</strong> <%= @provider.email %></li>
    <li><strong>Senha provisória:</strong> <%= @password %></li>
  </ul>
  <p>Você pode alterar sua senha após fazer login.</p>
</body>
</html>