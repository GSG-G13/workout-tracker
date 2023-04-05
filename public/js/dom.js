
const thead = document.querySelector('.parent')
const creatRow = (data) => {
    data.forEach(workout => {
        const tr = document.createElement('tr')
        const td1 = document.createElement("td");
        td1.setAttribute("data-label", "Date");
        td1.textContent = workout.workout_date;



        const td2 = document.createElement("td");
        td2.setAttribute("data-label", "Excersice");
        td2.textContent = workout.exercise;


        const td3 = document.createElement("td");
        td3.setAttribute("data-label", "Reps");
        td3.textContent = workout.reps;

        const td4 = document.createElement("td");
        td4.setAttribute("data-label", "Duration");
        td4.textContent = workout.duration;


        // add the <td> elements to the <tr> element
        tr.appendChild(td1);
        tr.appendChild(td2);
        tr.appendChild(td3);
        tr.appendChild(td4);
    });

}
