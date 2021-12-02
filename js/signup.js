//testing
//document.querySelector(".body").style.backgroundColor= "blue";

//selection of fields
const firstname = document.querySelector("#firstname");
const surname = document.querySelector("#surname ");
const omangId  = document.querySelector("#omangID").value;
const cellNumber = document.querySelector("#cellNumber");
const email = document.querySelector("#inputEmail");
const brand = document.querySelector("#inputBrand");
const earTag = document.querySelector("#inputEartag");
const password = document.querySelector("#inputPassword");
const confirmPassword = document.querySelector("#inputConfirmPassword");
const address = document.querySelector("#inputAddress");
const city = document.querySelector("#inputCity");
const regionSelection = document.querySelector("#inputRegion"); //this a drop down selection
const submit = document.querySelector("#submitId");

//used for validation check
const checkOut = document.querySelector("#gridCheck");
//there must be 13 selection for inputs

//tesing 2 on the check ratio
checkOut.addEventListener("change", (e)=>alert("checked"));

//validation

function validation (e){
    //e.preventDefault();// used to prevent default action


    var valid = 1;

    if (firstname.length > 100 || surname.length > 100){  // validation of the firstname, surname length
        valid =0;
        document.querySelector("#nameC").style.display = "flex"  // this will diplay some kind of error message to the user

        console.log("firstname not valid")//checking if working toremove on finale


    }

    if(omangId > 999999999 ){  //checking of the omangid length 
        //let id = omangId.toString();
        console.log(" id at is invalid")
    }
    //this will check for special characters for make or female

    // if (omangId.toString().charAt(1) !== 1 || omangId.toString().charAt(4)!== 1) {
    //     valid = 0;

    // //test
    // console.log(omangId.toString());
    // valid = 0;
    // document.querySelector("#omangC").style.display = "flex"
    // console.log(" char at is invalid")
    // }
   

    //this check for the brand length
    if (brand.length > 50 || earTag.length) { 
        valid = 0;
        console.log("brand to long") //remove on finale
        
    } 

    //checking the password length
    if (password.length < 8 || password.value == "" ) {
        console.log("pasword short");  //checking remove on finale
        valid = 0;
        document.querySelector("#passwordC").style.display = "flex"
    
    }
    if (password.toString() !== confirmPassword.toString()) {
        console.log("pasword don matc");
        valid = 0;
        document.querySelector("#passwordC").style.display = "flex"
    }
         
  
    if (valid !== 1) {
        e.preventDefault(); // to prevent the form from submitting wrong info
        console.log("something is not right");
        
    }
    else{
        alert("all is well");
    }
}


submit.addEventListener('click', validation);

