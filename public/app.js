
fetch('/workout').then(res => res.json()).then(data => {
   data.data.workouts.forEach(element => {
    creatRow(element);
   }); 
})






