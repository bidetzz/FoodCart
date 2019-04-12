function addToCart(id, qte) {
    let header = new Headers();
    header.append("Content-Type", "application/json");
    let init = {
        credentials: 'same-origin',
        method: 'POST',
        headers: header,
        mode: 'cors',
        body: JSON.stringify({quantity: qte})
    };
    fetch("/cart/"+id, init).then(function(data) {
        //processing after?
    });
}

function removeFromCart(id) {
    let header = new Headers();
    header.append("Content-Type", "application/json");
    let init = {
        credentials: 'same-origin',
        method: 'DELETE',
        headers: header,
    };
    fetch("/cart/"+id, init).then(function(data) {
    //processing after?
        location.reload()
    });

}

function checkout() {
    let header = new Headers();
    header.append("Content-Type", "application/json");
    let init = {
        credentials: 'same-origin',
        method: 'GET',
        headers: header,
    };
    fetch("/checkout", init).then(function(data) {
    //processing after?
    });
}