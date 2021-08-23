# CucumberCovidTest
API Contract Testing Automation using Ruby and Cucumber

O código incluso neste repositório tem como principal objetivo ilustrar um Teste de Contrato automatizado, utilizando dados da seguinte API(https://corona.lmao.ninja) e validando a estrutura da mesma. A API mencionada retorna dados da COVID-19.

O código foi elaborado em Ruby com uso de BDD (Cucumber), validando a estrutura de retorno sendo o Brasil o país informado na requisição.
A estrutura, nome de variáveis, métodos, etc foram elaborados na língua inglesa. No entanto é importante evidenciar que isso não será uma barreira na compreensão do teste em si.

1. <b>Primeiramente, se faz necessário ter Ruby e Cucumber instalados na máquina. Link de referência: https://www.ruby-lang.org/en/documentation/installation/</b>

2. Assim que é executado <b>git clone</b> no projeto, deve-se abrir um terminal apontando para a pasta do projeto e executar o comando <b>bundle install</b>.

3. Se as dependências forem instaladas com sucesso, podemos iniciar a visualização da resposta da automação. É importante notar alguns pontos:

  - Seguindo BDD, temos o seguinte cenário:
  
    <b>Feature: Response
    
    As a developer
    
    I want to be able to receive a valid response when I make an API call</b>
    

  <b>Scenario: receive a successful response</b>
  
    Given I have the right API route to receive data about COVID-19 in Brazil
    
    When I execute a GET requisition
    
    Then I display a 200 status
    


Em Português:

  <b>Feature: Resposta
  
  Como desenvolvedor
  
  Quero poder receber uma resposta válida ao fazer uma chamada na API</b>
  

  <b>Cenário: receber uma resposta de sucesso</b>
  
    Dado que eu tenho uma rota da API para receber dados da COVID-19 no Brasil
    
    Quando eu faço uma requisição GET
    
    Então eu recebo um status 200
    

Analisando, pode-se evidenciar que objetivo é que o teste valide a estrutura da resposta, de forma que seja retornado um status 200.
Sendo assim, podemos executar, no mesmo terminal apontando para a pasta do projeto o comando: <b>cucumber features/response.feature</b>

4. Executando o comando, a mensagem que aparecerá deverá ser exibida desta forma:

![tests-cucumber](https://user-images.githubusercontent.com/44241382/130378638-d0bf982b-e2af-4257-a4d6-00e9b14cff4f.PNG)

Nesta mensagem é perceptível o sucesso no teste, concluindo que as 3 etapas colocadas passaram e, consequentemente, o cenário em si foi concluído com sucesso.
