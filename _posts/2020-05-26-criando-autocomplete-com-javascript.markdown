---
layout: post
title:  "Criando automplete com Javascript"
description: "O processo de desenvolvimento seguro de aplicações web não se resume a apenas utilizar o protocolo HTTPS, em conjunto com uma funcionalidade de login. Isso não é o suficiente para garantir que a aplicação..."
date:   2020-05-26 20:14:56 -0300
categories: jekyll update
imagepost: "/assets/images/JavaScript.png"
thumbnail: "/assets/images/blog/blog-post-thumb-2.jpg"
#Facebook Open Graph Meta tags
ogtitle: "Criando um autocomplete com Javascript"
ogtype: "article"
ogdescription: "O processo de desenvolvimento seguro de aplicações web não se resume a apenas utilizar o protocolo HTTPS, em conjunto com uma funcionalidade de login. Isso não é o suficiente para garantir que a aplicação..."
ogimage: "/assets/images/about-me.jpg"
---
<body>
 <div class="container">
  <div class="blog-post-body">
    <figure class="blog-banner">
        <a href="{{ page.url }}"><img class="img-fluid" src="{{ page.imagepost }}" alt="image"></a>
        <figcaption class="mt-2 text-center image-caption">Credit image: {{ site.author }}<a href="" target="_blank"></a></figcaption> 
    </figure>
            <p>Uma empresa de viagem gostaria de melhorar a experi&ecirc;ncia de seus clientes quando eles forem
                procurar um destino. Para isso foi proposto a cria&ccedil;&atilde;o de uma ferramenta que faz a procura da
                cidade baseado no que o usu&aacute;rio est&aacute; digitando.</p>

            <p>Mais conhecida como autocomplete, ela n&atilde;o s&oacute; vai evitar erros de digita&ccedil;&atilde;o, mas tamb&eacute;m
                promover outros destinos de acordo com o que o cliente digitar no campo de busca.</p>

            <p>Como podemos utilizar o JavaScript para nos auxiliar nessa tarefa?</p>

            <h2>Come&ccedil;ando o autocomplete</h2>
            <p>Atualmente os nomes das cidades que a ag&ecirc;ncia oferece os pacotes est&atilde;o armazenadas no
                seguinte array:</p>
            <p>const destino = ['Salvador', ‘Vit&oacute;ria', Macei&oacute;, 'Cear&aacute;','Rio Branco',’Macap&aacute;’, ‘Porto Velho’,
                ‘Olinda’, ‘Aracaju’, ‘Capit&oacute;lio’,‘S&atilde;o Paulo’, ‘Paraty’];
                A primeira coisa que vamos fazer &eacute; criar uma fun&ccedil;&atilde;o para o autocomplete que vai receber o
                destino como par&acirc;metro e retornar para os usu&aacute;rios as op&ccedil;&otilde;es.</p>
            <pre>
<code>
function autoComplete(cidade) {
 const destino = ['Salvador', 'Vit&oacute;ria', 'Macei&oacute;', 'Cear&aacute;','Rio Branco','Macap&aacute;', 'Porto Velho',
 'Olinda', 'Aracaju','Capit&oacute;lio','S&atilde;o Paulo', 'Paraty'];
 return destino;
}
</code>
</pre>
                        <p>Uma das vantagens do autocomplete &eacute; digitar uma ou duas letras e j&aacute; receber algum resultado.
                            Ent&atilde;o temos que encontrar uma maneira de pegar a quantidade de letras que forem digitadas e
                            verificar se existe alguma cidade que corresponde a essas letras e retornar os resultados
                            para o usu&aacute;rio.</p>
                        <h2>Filtrando o array</h2>
                        <p> Para evitar de encontrar diverg&ecirc;ncias entre o que o usu&aacute;rio digita e o nome das cidades no
                            array, precisamos padronizar o input do usu&aacute;rio para comparar com o nome da cidade de forma
                            mais assertiva. Para isso, vamos colocar todas as letras digitadas em min&uacute;sculo usando o
                            m&eacute;todo toLowerCase.</p>
                        <p>Quando fizermos a compara&ccedil;&atilde;o,precisamos retornar uma nova lista, onde somente os dados que
                            baterem com o que o usu&aacute;rio digitou devem estar presentes, para nos ajudar a <b>filtrar</b>
                            iterando por todo o array.</p>

                        <pre>
<code>
    
  return destino.filter((valor) => {
  const valorMinusculo = valor.toLowerCase()
  const cidadeMinusculo = valor.toLowerCase()
 })
}
</code>
</pre>

                        <p>Agora que j&aacute; temos todas as cidade em min&uacute;sculo, para fazer a compara&ccedil;&atilde;o e retornar a nova
                            lista no filter vamos usar o m&eacute;todo includes. Ele vai dizer se a string que digitamos, seja
                            ela uma letra ou o nome todo da cidade, est&aacute; na vari&aacute;vel valorMinusculo. Caso a resposta
                            seja verdadeira, retornamos essa string para o usu&aacute;rio.</p>

                        <pre>
<code>
 return valorMinusculo.includes(cidadeMinusculo)
 Nosso c&oacute;digo completo ficou assim:

 function autoComplete(cidade) {
 const destino = ['Salvador', 'Vit&oacute;ria', 'Macei&oacute;', 'Cear&aacute;','Rio Branco','Macap&aacute;', 'Porto Velho', 
    'Olinda','Aracaju','Capit&oacute;lio','S&atilde;o Paulo', 'Paraty'];

 return destino.filter((valor) => {
 const valorMinusculo = valor.toLowerCase()
 const cidadeMinusculo = cidade.toLowerCase()

 return valorMinusculo.includes(cidadeMinusculo)
 })
}
</code>
</pre>
                        <p>&oacute;timo! O autocomplete foi criado, agora vamos exibir o resultado para o usu&aacute;rio =)</p>

                        <h2>Exibindo o resultado para o usu&aacute;rio</h2>
                        <p>Temos dois campos no nosso HTML, um campo para o usu&aacute;rio digitar o destino e uma <span
                                class="badge badge-secondary">
                                < ul>
                                    </ul>
                            </span> que vamos usar para exibir os resultados:</p>

                        <pre>
<code>
<span><</span>ul class="sugestoes"></ul><br>
<span><</span>input class="campo" type="text">

</code>
</pre>
                        <p>Primeiro temos que capturar os seletores do campo:</p>

                        <pre>
<code>
 const campo = document.querySelector('.campo')
 const sugestoes = document.querySelector('.sugestoes')

</code>
</pre>
                        <p> Agora &eacute; s&oacute; adicionar um evento ao campo de busca para quando o usu&aacute;rio digitar j&aacute; trazer o
                            nome das cidades automaticamente.</p>
                        <pre>
<code>
 campo.addEventListener('input', ({ target }) => {
 const dadosDoCampo = target.value
</code>
</pre>
                        <p>Como a vari&aacute;vel dadosDoCampo est&aacute; recebendo o que est&aacute; sendo digitado, criamos uma condi&ccedil;&atilde;o:
                            caso a string capturada pelo evento seja verdadeira colocamos o resultado dentro do campo
                            sugestoes com a ajuda do innerHTML.</p>
                        <p>A fun&ccedil;&atilde;o autoComplete, nos retorna sempre um array. Precisamos gerar uma lista de elementos
                            baseada na lista de sugest&otilde;es, para “mapear” a lista de sugest&otilde;es para elementos, vamos usar
                            a fun&ccedil;&atilde;o map que vai ser respons&aacute;vel por iterar pelos resultados e vai criar li com a
                            resposta, n&atilde;o esquecendo de usar o join para devolver o resultado como string.</p>

                        <pre>
<code>
 if(dadosDoCampo.length) {
  const autoCompleteValores = autoComplete(dadosDoCampo)
  sugestoes.innerHTML = `
   ${autoCompleteValores.map((value) => {
   return (
     `< li >${value}< /li >` 
   )
  }).join('')}
 `}
})
</code>
</pre>
                        <p>O nosso c&oacute;digo agora com o evento ficou assim:</p>

                        <pre>
<code>
function autoComplete(cidade) {
    
const destino = ['Salvador', 'Vit&oacute;ria', 'Macei&oacute;', 'Cear&aacute;','Rio Branco','Macap&aacute;', 'Porto Velho',
 'Olinda','Aracaju','Capit&oacute;lio','S&atilde;o Paulo', 'Paraty'];
    return destino.filter((valor) => {
            const valorMinusculo = valor.toLowerCase()
            const cidadeMinusculo = cidade.toLowerCase()

            return valorMinusculo.includes(cidadeMinusculo)
        })
}
const campo = document.querySelector('.campo')
const sugestoes = document.querySelector('.sugestoes')

campo.addEventListener('input', ({ target }) => {
    const dadosDoCampo = target.value
    if(dadosDoCampo.length) {
        const autoCompleteValores = autoComplete(dadosDoCampo)
        sugestoes.innerHTML = `
        ${autoCompleteValores.map((value) => {
            return (
                `< li>${value}< /li>`
                    )
            }).join('')}
        `
    }
})
</code>
</pre>
                        <h2>Para saber mais</h2>
                        <p>Uma outra maneira de fazer um r&aacute;pido autocomplete &eacute; atrav&eacute;s das propriedades do HTML5 como
                            datalist que vai representar
                            um conjunto de elementos e a option value que representa um item.</p>
                        <pre>
<code>

< label for="busca">Buscar pa&iacute;ses< /label>
< input type="search" id="busca" list="paises">
    
< datalist id="destino">
    < option value="Salvador"></ option>
    < option value="Vit&oacute;ria"></ option>
    < option value="Macei&oacute;"></ option>
    < option value="Cear&aacute;"></ option> 
    < option value="Rio Branco"></ option> 
    < option value="Macapa"></ option> 
    < option value="Olinda"></ option>
    < option value="Aracaju"></ option>
    < option value="Capit&oacute;lio"></ option>
    < option value="S&atilde;o Paulo"></ option>
    < option value="Paraty"></ option>
</code>
</pre>
 {% include PromoSectionPartial.html %}
 {% include BlogCommentsSectionPartial.html %}
</div><!--//container-->