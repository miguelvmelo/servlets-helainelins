<h1 align="center"> 
[Disciplina de Programação III]
</h1>
<h4 align="center"> 
    Universidade de Pernambuco | Campus Garanhuns | Curso de Licenciatura em Computação
</h4>
<h4 align="center"> 
 🚧 Java para WEB 🚀 em construção... 🚧
</h4>
<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/tgmarinho/nlw1?color=%2304D361">
  <img alt="Repository size" src="https://img.shields.io/github/repo-size/tgmarinho/nlw1">
  <a href="https://github.com/tgmarinho/nlw1/commits/master">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/tgmarinho/nlw1">
  </a>
</p>

## Estrutura

- [Sobre](#sobre)
- [Requisitos](#requisitos)
- [Configuração de Ambiente](#configuracao)
- [Instruções para a construção do seu projeto](#instrucoes)
- [Licença](#license)
- [Autor](#autor)

---

## Sobre

<div style="text-align: justify">
  Vivenciar a experiência de construir soluções Java para WEB utilizando tecnologias e frameworks atuais, através de soluções integradas utilizando arquitetura MVC.
</div>

## Requisitos

- Git
- Java Virtual Machine 11
- Maven 3.6.3
- Eclipse IDE for Enterprise Java Developers
- Spring Tool Suite 4 (STS)
- Postgre SQL

---

## Configuração de Ambiente

### SDKMan

<div style="text-align: justify">
Existe um [BUG](https://github.com/sdkman/sdkman-cli/issues/593) no SDKMAN no Windows que não efetua corretamente a troca de versões dos sdks na pasta current. Para corrigi-lo é necessário fazer uma alteração no arquivo *.bashrc* que existe na sua pasta de usuário.
</div>

1. Abra o arquivo ´.bashrc´
2. Acrescente uma linha em branco no início do arquivo
3. Cole esta instrução ´export MSYS=winsymlinks:lnk´ na linha criada.
4. Salve o arquivo

### Máquina Virtual Java

O Eclipse 4.7, que é compatível com o Spring Tool Suite, precisa da JVM na versão 11

1. Abra o ConEmu(MinGW) e instale o sdk utilizando o seguinte comando ´sdk install java 11.0.8.j9-adpt´
2. Torne a versão instalada como padrão ´sdk use java 11.0.8.j9-adpt´
3. Execute ´java -version´ para ter certeza que o jdk foi atualizado 

<div style="text-align: justify">
- Para que os demais passos funcionem é necessário que você tenha criado a variável de ambiente %JAVA_HOME% no exercício anterior. Ela deve apontar para o diretório ´c:\Users\SEU_USUARIO\.sdkman\candidates\java\current$´
- Para se certificar que a variável está criada execute ´echo $JAVA_HOME$´ no console e verifique a saída impressa.
</div>

### Maven

1. Execute ´mvn -version´ no terminal de comando para ter certeza que o Maven foi instalado corretamente

<div style="text-align: justify">
- Para que o comando funcione é necessário que você tenha criado a variável de ambiente %M2_HOME% no exercício anterior. Ela deve apontar para o diretório ´c:\Users\SEU_USUARIO\.sdkman\candidates\maven\current$´
- Para se certificar que a variável está criada execute ´echo $M2_HOME$´ no console e verifique a saída impressa.
</div>

### GitHub Classroom

1. Faça o aceite do convide enviado na página da disciplina.
2. Aceite o assignment
3. Aguarde o GitHub criar o seu repositório
4. Clique na URL do repositório para acessá-lo
5. Clique no botão "Code", copie a URL do repositório
6. Faça o clone da branch no seu workspace utilizando o link copiado

- Lembre-se de ter configurado as variáveis de usuário no seu arquivo global do git

  - ´git config --global user.email "you@example.com"´
  - ´git config --global user.name "Your Name"

### Eclipse e Spring Tool Suite (STS)

1. O STS precisa do Eclipse na versão [4.7](https://www.eclipse.org/downloads/packages/release/2020-09/r/eclipse-ide-enterprise-java-developers)
2. Baixe, descompacte
3. Execute o Eclipse no workspace onde realizou o clone do projeto

### Spring Tool Suite

1. No Eclipse acesse o menu ´Help > Eclipse Marketplace´ e procure por ´Spring Tools 4´
2. Clique em ´install´ e execute os passos de instalação

---

## Instruções para a construção do seu projeto

<div style="text-align: justify">
Sua misssão será criar um servlet capaz de consumir uma API externa via webservice. A API será de sua escolha, o grande objetivo é que você implemente um Servlet capaz de receber dados do usuário, realize um processamento com a ajuda da API e devolva uma saída ao usuário. Você deverá contemplar na sua solução ao menos dois verbos HTTP de sua escolha, onde cada um deles devolve o resultado do processamento de uma maneira diferente.

Por exemplo, na aula de hoje irei seguir com vocês na criação do Carinha Servlet, uma implementação simples que recebe um token do usuário, consulta a api [Adorable Avatars](http://avatars.adorable.io/) e apresenta ao usuário a imagem do avatar gerado. Neste projeto serão implementados os verbos GET e POST.

_Na implementação do GET o usuário solicita o processamento através de uma URL e envia o parâmetro ´nome´ para o servlet e ele retorna a imagem gerada na resposta.
_Na implementação do método POST o serlet recebe os dados através do formulário criado na página ´carinha.jsp´ e apresenta a imagem gerada no mesmo formulário.

Você deverá implementar o seu projeto e utilizar o controle de versões do GitHub onde poderei acompanhar a evolução de vocês e poder tirar todas as dúvidas relativas à implementação.Ao concluir a construção você deverá enviar criar um pull request onde poderei realizar a avaliação do código de seu projeto e registrar todos os feedbacks necessários para que vocês possam acompanhar de maneira mais detalhada e aproveitem a oportunidade para fixar o conhecimento.
</div>

### Criação do Projeto

<div style="text-align: justify">
1. Crie seu projeto no eclipse utilizando o menu "File -> New -> Other -> Spring Boot -> Spring Starter Project"
2. Preencha as informações de ´nome´, ´group´, ´artifact´, ´description´ e ´package´ a seu critério, coerente com os dados de seu projeto.
3. Preencha a informação ´Packaging´ de acordo com o empacotamento coerente para o tipo de apliação que vamos desenvolver. (primeiro ponto de avaliação :wink:)
4. Siga para a próxima etapa e selecione o starter "Web -> Spring Web" e avance para a próxima etapa e conclua o assistente de criação.
</div>

### Ajuste de Configurações do Projeto

<div style="text-align: justify">
O Spring Boot cria a aplicação web com suporte default para implementação utilizando o Spring MVC que é um framework para desenvolver interfaces com o usuário utilizando o padrão de projeto MVC, que não é o nosso caso agora. Nós estamos ainda a contrução e solidificalção dos conceitos da API de servlets e por este motivo vamos desenvolver o projeto sem a utilização deste framework. Para isso precisaremos realizar alguns ajustes nas configurações do projeto para dar suporte às nossas necessidades.

1. O primeiro ajuste é no arquivo ´pom.xml´ onde vamos acrescentar na sessão ´dependencies´ as dependências que dão suporte ao desenvolvimento de servlets e jsps
´<dependency>
   <groupId>org.apache.tomcat.embed</groupId>
			<artifactId>tomcat-embed-jasper</artifactId>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>jstl</artifactId>
		</dependency>´

2. Este ajuste é opcional e também é feito no arquivo pom.xml para habilitar o suporte ao mecanismo de ´hotdeploy´ que identifica quando for feita alguma alteração de código e já reinicia o contexto do conteiner de servlet sem que você precise para e subi-lo manualmente toda vez que fizer uma alteração.
´<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-devtools</artifactId>
			<optional>true</optional>
		</dependency>´

3. Altere o arquivo ´application.properties´ para que o spring boot saiba que vamos usar páginas jsp e onde ele deve buscar por elas
´spring.mvc.view.prefix=/
 spring.mvc.view.sufix=.jsp
´
4. No spring boot atual podemos configurar o suporte a servlets através de anotações. Para utilizar o recurso vamos remover a classe ´CCC´ e acrescentar a anotação ´@ServletComponentScan´ na classe ´...Application´ para que ela escaneie e configure automaticamente o(s) servlet(s) criados na aplicação.
</div>
### Criação do Servlet

<div style="text-align: justify">
1. Crie a classe do seu servlet. (outro ponto de avaliação, de qual classe você deve herdar? :flushed:)
2. Implemente os verbos aos quais seu servlet vai responder. (outro ponto de avaliação, quais métodos você vai sobrescrever? :flushed:)
3. Lembre-se de utilizar os conceitos de separação de responsabilidade e reutilização de código. (outro ponto de avaliação)
4. Lembre-se de implementar respostas diferentes ao usuário de acordo com o verbo HTTP da requisição.
5. Você vai precisar anotar o seu servlet com ´@WebServlet´ para que ele seja identificado, configurado e publicado na aplicação.
</div>

### Ajustes para consumir APIs externas

<div style="text-align: justify">
Para estar apto a consumir serviços de APIs externas a sua aplicação precisaremos acrescentar uma configuração via código para utilizar a API de suporte à webservices através do spring.

1. Abra a sua classe ´...Application´ e acrescente o seguinte método
´@Bean
	public RestTemplate restTemplate(List<HttpMessageConverter<?>> messageConverters) {
	    return new RestTemplate(messageConverters);
	}´

2. Este passo é opcional e será necessário se você precisar consumir servicos que retornam dados no formato de array de bytes no envelope de resposta. (outro ponto de avaliação, acrescente somente se for necessário para o seu projeto.:open_hands:)
´@Bean
	public ByteArrayHttpMessageConverter byteArrayHttpMessageConverter() {
	    return new ByteArrayHttpMessageConverter();
	}´

3. No seu servlet acrescente uma variável de classe que irá receber o suporte ao consumo de webservices pelos seus métodos
´@Autowired
	RestTemplate restTemplate;´

4. Consulte a API do Spring para saber como consumir e receber respostas através do ´RestTemplate´ (outro ponto de avaliação)
</div>

### Entrega do projeto

<div style="text-align: justify">
Ao finalizar o seu projeto você deve se certificar de que todo o código foi enviado ao seu repositório do GitHub e em seguida abrir um ´pull request´. O GitHub me notifica imediatamente da entrega do projeto. Em seguida realizarei todos os feedbacks na ferramenta e em seguida será marcada uma entevista onde conversaremos um pouco sobre o projeto desenvolvido.
</div>
---

## Licença

MIT License

Copyright (c) [2017] [James Q Quick]

---

## Autor

- Twitter - [@hbarreiros_](https://twitter.com/hbarreiros_)

[Voltar](#estrutura)