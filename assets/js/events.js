const selecionado = document.querySelector("#selecionado");




selecionado.addEventListener("change", (el) => {
  if (selecionado.checked) {
    
  }
});

selecionado.dispatchEvent(new Event("change"));
