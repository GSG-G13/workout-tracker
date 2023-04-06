
const tbody = document.querySelector('.parent')
const creatRow = (data) => {
    
        const tr = document.createElement('tr')
        const td1 = document.createElement("td");
        td1.setAttribute("data-label", "Date");
        td1.textContent = data.workout_date;



        const td2 = document.createElement("td");
        td2.setAttribute("data-label", "Excersice");
        td2.textContent = data.exercise;


        const td3 = document.createElement("td");
        td3.setAttribute("data-label", "Reps");
        td3.textContent = data.reps;

        const td4 = document.createElement("td");
        td4.setAttribute("data-label", "Duration");
        td4.textContent = data.duration;


        // add the <td> elements to the <tr> element
        tr.appendChild(td1);
        tr.appendChild(td2);
        tr.appendChild(td3);
        tr.appendChild(td4);
        tbody.appendChild(tr)
    

}


  