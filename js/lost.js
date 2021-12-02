var lostAnimal = [
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


const messageContainer = document.querySelector(".message-box")
    const contactOwerBtn = document.querySelector(".contact-owner");

const lostAnimalsContainer = document.querySelector(".animals-container");

lostAnimalsContainer.style.backgroundColor = "red"; //used to check if the JAVASCRIPT is working to remove on submit

function addLostAnimal(brand, description, location,color, imageSrc,sex){
    
    for(i=0; i<lostAnimal.length;i++){
        //setting the parameters in the function to the values in array object
        brand = lostAnimal[i].brand;
        description = lostAnimal[i].description;
        location = lostAnimal[i].location;
        color = lostAnimal[i].color;
        imageSrc = lostAnimal[i].imageSrc;
        sex = lostAnimal[i].sex;


        
        //creating of the elements to add dymanically to the DOM
        let animaldiv = document.createElement("div");
        animaldiv.classList.add('col') // adding of class is done her including bootstrap classes. edit to make it look well
        
        animaldiv.setAttribute("style","width:20rem")
        animaldiv.innerHTML= `

            <div class="card shadow-sm">
                <img src=${imageSrc} class="card-img-top" alt="${description}">
                
                <div class="card-body">
                    <h5 class="card-img-overlay"> Ani<span class="bg-white p-1">  ${brand}</span> </h5>
                    <p class="card-text">
                        <P>${description}</P>
                        <h5>Animal details</h5>
                        <p>location: ${location}</p>
                        <P>color: ${color}</P>
                        <P>sex: ${sex}</P>
                    </p>
                <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary" contact-onwer>Contact owner</button>
                    <button type="button" class="btn btn-sm btn-outline-secondary">Seen</button>
                    
                    </div>
                    
                </div>
                <div class="message-box mt-3 d-none">
                      <input type="email" name="messagesEmail" id="messagesEmailId" class="form-control" placeholder="enter your email contact">
                      <textarea name="messages" id="messagesId" cols="30" rows="10" class="form-control my-2" placeholder="leave ur message here or contact"></textarea>
                      <button class="btn btn-sm btn-info m-2"> Send</button>
                    </div>
                </div>
            </div>
            
        ` // this  is the card for the individual animals that is rendered in the DOM

        
        lostAnimalsContainer.appendChild(animaldiv);
        contactOwerBtn.addEventListener("click", ()=>{ console.log("messge box clicked")});
    }
}

//lostAnimal.map addLostAnimal) // the mapping function did not work it duplicated when a for loop was introduced
 addLostAnimal(); //callling the iteration of the loop to render in to DOM



//********************************************************************************************************************
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// *******************************************************************************************************************

//getting the messages.

function showMessagebox(e){
    

     console.log("messge box clicked")
   
}



