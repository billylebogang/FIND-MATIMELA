// POPULATING THE FOUND ANIMALS SECTION WITH A FEW ANIMALS THAT HAVE BEEN FOUND TO ATTRACT FARMERS

var foundAnimals = [
    {
      brand: 'BIL 67',
      eartag:'723167',
      location: 'Metlojane',
      color: 'ntsho',
      sex: 'female',
      description: 'e nale maoto ale four, hlogo e nale padi',
      imageSrc:'./images/eartag.jpg'  

    },
    {
        brand: 'OK J67',
        eartag:'72fhk67',
        location: 'Cwagare',
        color: 'kgwaana',
        sex: 'female',
        description: 'e nale maoto ale four, mogatla o mosetla',
        imageSrc:'./images/eartag.jpg' 
    },
    {
        brand: 'IL GH',
        eartag:'7246667',
        location: 'Gakhudu',
        color: 'Nkgwe',
        sex: 'Male',
        description: 'e goga chain e kima, e gobetse mo thamong',
        imageSrc:'./images/eartag.jpg' 
    },
    {
        brand: 'MY STAR',
        eartag:'72gjk',
        location: 'Kgoro',
        color: 'Kwebu',
        sex: 'Male',
        description: 'e goga chain e kima kima, e maswe thata',
        imageSrc:'./images/eartag.jpg' 
    }
] // array of animals which shall be added dynamical from the databse once connected



const foundAnimalsCtn = document.querySelector(".found-animals");

foundAnimalsCtn.style.backgroundColor = "red"; //used to check if the JAVASCRIPT is working

function addFoundAnimal(brand, description, location,color, imageSrc,sex){
    for(i=0; i<foundAnimals.length;i++){
        //setting the parameters in the function to the values in array object
        brand = foundAnimals[i].brand;
        description = foundAnimals[i].description;
        location = foundAnimals[i].location;
        color = foundAnimals[i].color;
        imageSrc = foundAnimals[i].imageSrc;
        sex = foundAnimals[i].sex;

        //creating of the elements to add dymanically to the DOM
        let animaldiv = document.createElement("div");
        animaldiv.classList.add('card', 'col', 'm-3') // adding of class is done her including bootstrap classes. edit to make it look well
        
        animaldiv.setAttribute("style","width:20rem")
        animaldiv.innerHTML= `

            <img src="${imageSrc}" class="card-img-top" alt="animal found">
            <div class="card-body">
            <h5 class="card-title "> ${brand} </h5>
            <p class="card-text">
                <P>${description}</P> 
                <h5>Animal details</h5>
                <p>location: ${location}</p>
                <P>color: ${color}</P>
                <P>sex: ${sex}</P>
            </p>
            <a href="#" class="btn btn-primary">more details</a>
            </div>
            
        ` // this  is the card for the individual animals that is rendered in the DOM

        foundAnimalsCtn.appendChild(animaldiv);
    }
}

//foundAnimals.map(addFoundAnimal) // the mapping function did not work it duplicated when a for loop was introduced
 addFoundAnimal(); //callling the iteration of the loop to render in to DOM



//********************************************************************************************************************
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// *******************************************************************************************************************



