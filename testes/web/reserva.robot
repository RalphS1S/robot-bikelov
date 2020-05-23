*** Settings ***
Documentation   Pedido de reservas
...             Para que eu possa aprovar ou reprovar
...             Sendo um anúnciante que possui anúncios cadastrados
...             Quero receber pedidos de reserva no meu dashboard

Resource        ../../resources/steps_kw.robot

Suite Setup      Logged with "eu@ralph.io"
Suite Teardown   End Session

Test Teardown    End Test

*** Variables ***
${bike}=        {"thumb": "elleven.jpg", "name": "Elleven Rocker 26 Marchas", "brand": "Shimano", "price": "15" }

*** Test Cases ***
Receber pedido de reserva
    [tags]  todo
    Dado que estou logado como "eu@ralph.io"
    E tenho anúncios cadastrados
    Quando o cliente "clebinho@bol.com.br" solicite uma reserva para o meu anúncio
    Então devo ver esta solicitação no meu dashboard

#