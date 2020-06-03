---
layout: post
title:  "Os 3 pilares do desenvolvimento seguro de aplica&ccedil;&otilde;es Web 2020"
description: "O processo de desenvolvimento seguro de aplicações web não se resume a apenas utilizar o protocolo HTTPS, em conjunto com uma funcionalidade de login. Isso não é o suficiente para garantir que a aplicação..."
date:   2020-05-26 20:14:56 -0300
categories: jekyll update
imagepost: "/assets/images/blog/seguranca/pillars.jpg"
thumbnail: "/assets/images/blog/blog-post-thumb-1.jpg"
# {{ page.date | date: "%-d, %b %Y"}}
---
<div>
<article class="blog-post px-3 py-5 p-md-5">
<div class="container">
<div class="blog-post-body">
    <figure class="blog-banner">
        <a href=""><img class="img-fluid" src="{{ page.imagepost }}" alt="image"></a>
        <figcaption class="mt-2 text-center image-caption">Image Credit: Jhonathan<a href="" target="_blank"></a></figcaption> 
    </figure>
                   
<p>O processo de desenvolvimento seguro de aplica&ccedil;&otilde;es web n&atilde;o se resume a apenas utilizar o protocolo HTTPS, em conjunto com uma funcionalidade de login. Isso n&atilde;o &eacute; o suficiente para garantir que a aplica&ccedil;&atilde;o esteja livre de vulnerabilidades.</p>

<p>Hoje em dia existem diversas ferramentas prontas, nas mais diversas linguagens de programa&ccedil;&atilde;o, que auxiliam pessoas desenvolvedoras a constru&iacute;rem um software funcional do zero em um curto per&iacute;odo de tempo.</p>

<p>Entretanto, um c&oacute;digo robusto e que funciona n&atilde;o necessariamente &eacute; seguro. A boa not&iacute;cia &eacute; que tais ferramentas se preocupam cada vez mais com seguran&ccedil;a e j&aacute; implementam diversos mecanismos para a prote&ccedil;&atilde;o contra as principais vulnerabilidades.</p>

<p>Os ataques mais cr&iacute;ticos a uma aplica&ccedil;&atilde;o s&atilde;o os que consistem em ganhar acesso irrestrito a ela e tamb&eacute;m a obter acesso aos dados sens&iacute;veis que ela gerencia.</p>

<p>Existem diversas pr&aacute;ticas e t&eacute;cnicas para tornar uma aplica&ccedil;&atilde;o livre de poss&iacute;veis vulnerabilidades, sendo que no geral elas seguem a estes tr&ecirc;s pilares:</p>

<ul>
  <li>Gerenciamento do controle de acesso;</li>
  <li>Valida&ccedil;&atilde;o das informa&ccedil;&otilde;es recebidas e</li>
  <li>Gerenciamento dos ataques sofridos.</li>
</ul>

<h2>Gerenciamento de controle de acesso</h2>
<p>Esse pilar foca em evitar que algu&eacute;m consiga ter acesso indevido aos dados e funcionalidades que a aplica&ccedil;&atilde;o gerencia.</p>

<p>As principais t&eacute;cnicas relacionadas a esse pilar s&atilde;o: <b>autentica&ccedil;&atilde;o e autoriza&ccedil;&atilde;o</b>.</p>

<p>Autentica&ccedil;&atilde;o visa garantir que de fato o usu&aacute;rio &eacute; quem ele diz ser, sendo que geralmente &eacute; implementado com o usu&aacute;rio fornecendo um login/senha e a aplica&ccedil;&atilde;o validando se tais informa&ccedil;&otilde;es est&atilde;o corretas. Em aplica&ccedil;&otilde;es que exigem maior seguran&ccedil;a, outros mecanismos podem ser utilizados, tais como certificados digitais e smartcards.</p>

<p>Autoriza&ccedil;&atilde;o consiste na aplica&ccedil;&atilde;o conseguir determinar se um dado usu&aacute;rio tem permiss&atilde;o de acesso a um dado ou funcionalidade que ele est&aacute; requisitando. Em algumas aplica&ccedil;&otilde;es esse controle de acesso pode ser complexo, envolvendo v&aacute;rios perfis e restri&ccedil;&otilde;es, sendo bastante comum encontrar brechas de seguran&ccedil;a na implementa&ccedil;&atilde;o desse mecanismo.</p>

<h2>Valida&ccedil;&atilde;o das informa&ccedil;&otilde;es recebidas</h2>
<p>Esse pilar foca em validar e tratar as informa&ccedil;&otilde;es fornecidas pelos usu&aacute;rios da aplica&ccedil;&atilde;o.</p>

<p>Desenvolvedores devem sempre considerar que as informa&ccedil;&otilde;es fornecidas pelos usu&aacute;rios s&atilde;o inseguras, por serem potencialmente maliciosas.</p>

<p>As principais t&eacute;cnicas relacionadas a esse pilar s&atilde;o: <b>valida&ccedil;&atilde;o sem&acirc;ntica e sanitiza&ccedil;&atilde;o</b>.</p>

<p>Valida&ccedil;&atilde;o sem&acirc;ntica consiste em validar as informa&ccedil;&otilde;es do ponto de vista l&oacute;gico, pois nem todos os ataques enviar&atilde;o dados maliciosos. Por exemplo, validar se uma informa&ccedil;&atilde;o que deveria ser num&eacute;rica realmente &eacute; um n&uacute;mero ou validar se um campo oculto/desabilitado foi modificado de maneira n&atilde;o permitida.</p>

<p>Sanitiza&ccedil;&atilde;o consiste em limpar e/ou filtrar as informa&ccedil;&otilde;es fornecidas pelos usu&aacute;rios, removendo assim poss&iacute;veis trechos de c&oacute;digos maliciosos, como c&oacute;digos SQL e JavaScript. Consiste tamb&eacute;m em fazer um “escape” das informa&ccedil;&otilde;es antes de exibi-las na aplica&ccedil;&atilde;o, evitando assim que o browser execute c&oacute;digos maliciosos.</p>

<h2>Gerenciamento dos ataques sofridos</h2>
<p>Esse pilar foca em como lidar com poss&iacute;veis ataques que uma aplica&ccedil;&atilde;o possa sofrer.</p>

<p>Desenvolvedores devem considerar que toda aplica&ccedil;&atilde;o pode ser alvo de hackers maliciosos a qualquer momento. Portanto, &eacute; parte fundamental da &aacute;rea de seguran&ccedil;a ter mecanismos para lidar com ataques sofridos em suas aplica&ccedil;&otilde;es.</p>

<p>Tais mecanismos incluem <b>tratamento de erros, gera&ccedil;&atilde;o de logs e alertas de seguran&ccedil;a.</b></p>

<p>Erros inesperados sempre podem acontecer em aplica&ccedil;&otilde;es em produ&ccedil;&atilde;o, sendo importante ent&atilde;o ter um mecanismo que fa&ccedil;a um tratamento deles.</p>

<p>Evite exibir para os usu&aacute;rios telas padr&otilde;es de erros, pois elas podem conter informa&ccedil;&otilde;es que ser&atilde;o valiosas para os hackers. Lembre-se tamb&eacute;m de sempre gerar logs dos erros inesperados, adicionando a eles o m&aacute;ximo de informa&ccedil;&otilde;es poss&iacute;veis, para que se possa identificar de maneira mais f&aacute;cil e &aacute;gil o problema ocorrido e como corrigi-lo.</p>

<p>Sempre gere logs de auditoria em aplica&ccedil;&otilde;es, pois eles podem ser fontes vitais de informa&ccedil;&otilde;es quanto &agrave; ataques sofridos.</p>

<p>Logs efetivos s&atilde;o aqueles que permitem se descobrir o que de fato aconteceu, quais vulnerabilidades foram exploradas, se o hacker conseguiu ter acesso a dados ou funcionalidades restritas e at&eacute; mesmo informa&ccedil;&otilde;es sobre o hacker em si.</p>

<p>Utilize logs nos pontos chave da aplica&ccedil;&atilde;o, em especial nos seguintes eventos:</p>

<ul>
    <li>Todos os eventos de autentica&ccedil;&atilde;o (sucesso, falha, solicita&ccedil;&atilde;o de altera&ccedil;&atilde;o de senha, etc.);</li>
    <li>Transa&ccedil;&otilde;es relacionadas a movimenta&ccedil;&otilde;es financeiras;</li>
    <li>Tentativas de acesso que foram bloqueadas pela aplica&ccedil;&atilde;o; e</li>
    <li>Dados maliciosos que foram enviados para a aplica&ccedil;&atilde;o.</li>
</ul>

<p>Em casos onde seguran&ccedil;a &eacute; um fator cr&iacute;tico, &eacute; importante criar um mecanismo que alerte os administradores da aplica&ccedil;&atilde;o em tempo real sobre ataques sofridos.</p>

<p>Mecanismos de alerta devem ser disparados para situa&ccedil;&otilde;es de anomalias, tais como:</p>

<ul>
    <li>Uso de recursos de maneira anormal (CPU, memoria, requests excessivos, etc.);</li>
    <li>Regras de neg&oacute;cio da aplica&ccedil;&atilde;o sendo utilizadas de maneira diferente do normal;</li>
    <li>Requisi&ccedil;&otilde;es contendo dados maliciosos; e</li>
    <li>Requisi&ccedil;&otilde;es onde se sabe que dados ocultos ao usu&aacute;rio foram manipulados.</li>
</ul>
<p>
    Certamente seguir a esses tr&ecirc;s pilares far&aacute; com que sua equipe desenvolva softwares cada vez 
    mais seguros, com menos vulnerabilidades e riscos para sua organiza&ccedil;&atilde;o.
</p>
    {% include PromoSectionPartial.html %}
            <nav class="blog-nav nav nav-justified my-5">
                <a class="nav-link-prev nav-item nav-link rounded-left" href="index.html">Anterior<i class="arrow-prev fas fa-long-arrow-alt-left"></i></a>
                <a class="nav-link-next nav-item nav-link rounded-right" href="blog-list.html">Próximo<i class="arrow-next fas fa-long-arrow-alt-right"></i></a>
            </nav>
            <div class="container">
      {% include BlogCommentsSectionPartial.html %}
        </div><!--//container-->
        </div><!--//container-->

<!--
Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

<!-- 
[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/ -->
