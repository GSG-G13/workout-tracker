
fetch('/workout').then(res => res.json()).then(data => {
    creatRow(data);
})




