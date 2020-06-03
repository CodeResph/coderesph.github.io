const c = (el)=>document.querySelector(el);
const cs = (el)=>document.querySelectorAll(el);

productsJson.map((produto, index)=>{
    let cardItem = c('.models .card-item').cloneNode(true);

    cardItem.querySelector('.card-item img.card-item--img').src = produto.img;

    cardItem.querySelector('.card-item--name').innerHTML = produto.name;
    cardItem.querySelector('.card-item--price').innerHTML = `R$${produto.price.toFixed(2)}`;
    cardItem.querySelector('.card-item--qtdparcel').innerHTML = `${produto.qtdparcel}x`;
    cardItem.querySelector('.card-item--parcel').innerHTML = `R$${produto.parcel.toFixed(2)}`;

    c('.products-area').append(cardItem);
});