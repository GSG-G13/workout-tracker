
fetch('/workout/2').then(res => res.json()).then(data => {
   data.data.workouts.forEach(element => {
    creatRow(element);
   }); 
})




