class ordem {
    constructor(num) {
        this.num = num;
        this.status = "Pendente";
    }
}

let ordens = [];

function createOrdem() {
    ordens.push(new ordem(Math.floor(Math.random() * 99)));
    this.listarOrdens();

}

function listarOrdens() {
    let pendente = ordens.filter(ordem => ordem.status === "Pendente");
    let andamento = ordens.filter(ordem => ordem.status === "Andamento");
    let concluido = ordens.filter(ordem => ordem.status === "Concluído");


    let tbody = document.getElementById('tbody');
    let tbody2 = document.getElementById("tbody2");
    let tbody3 = document.getElementById("tbody3");


    this.listaOrdem(tbody, pendente);
    this.listaOrdem(tbody2, andamento);
    this.listaOrdem(tbody3, concluido);

}

function listaOrdem(tbody, dados) {



    tbody.innerText = '';

    for (let i = 0; i < dados.length; i++) {

        let tr = tbody.insertRow();

        let td_Numero = tr.insertCell();
        let td_Status = tr.insertCell();
        let td_acao = tr.insertCell();

        td_Numero.innerText = dados[i].num;
        td_Status.innerText = dados[i].status;

        td_Numero.classList.add('center');
        td_Status.classList.add('center');
        td_acao.classList.add('center');

        let imgAltera = document.createElement('img');
        imgAltera.src = 'img/troca.PNG';

        td_acao.appendChild(imgAltera);

        imgAltera.setAttribute("onclick", "mudaStatus(" + dados[i].num + ")");



    }

}


function mudaStatus(num) {
    ordens.forEach(ordem => {
        if (ordem.num === num) {
            if (ordem.status === "Pendente") {
                ordem.status = "Andamento";
                this.listarOrdens();
                return;
            }
            if (ordem.status === "Andamento") {
                ordem.status = "Concluído";
                this.listarOrdens();
                return;
            }

        }
    })
}