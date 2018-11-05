# Criando usuários para teste.

Team.create name: 'admin'
User.create  admin: 'true', team: Team.last, email: 'admin@admin.com', password: 123456