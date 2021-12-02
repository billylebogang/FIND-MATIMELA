<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="matWebForms.UserDashboard" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <section class="userDashboard container-fluid"> 


      <div class=" dash-container container-fluid row-md-2">
        <div class="profile-container container col  ">
          <div class="profile-here">
            <div class="cover-pic">
              <div class="profile-pic"> 
                  <asp:Image ID="profilePic" runat="server" width="170" height="170"  src="" alt=""  />
                <div> </div>
              </div>
            </div>
            <div class="name-part">

                <asp:Label ID="namelabel" runat="server" Text="Label"></asp:Label> <span class="user-name">  </span> <asp:Label ID="surnamelabel" runat="server" Text="surname"></asp:Label>
               
            </div>


          
          </div> 
            <!-- user contacts-->
          <div class="contacts user-details display-6">
              <asp:Label ID="L1" runat="server" Text="Label"></asp:Label> 
              <br>
              <asp:Label ID="numberlabel" runat="server" Text="Label"></asp:Label>

          </div>

            <!-- user location-->
          <div class="location user-details display-6">
          <span class="material-icons md-48">My location: </span><asp:Label ID="Locationlabel" runat="server" Text="Label"></asp:Label>

          </div>

            <!-- user brands -->
          <div class="brand user-details display-6">
              <asp:DropDownList ID="brandList" runat="server" CssClass="form-control">
                  <asp:ListItem Selected="True">Check brands</asp:ListItem>

              </asp:DropDownList>
               <asp:TextBox ID="txtAddBrand" runat="server" CssClass="form-control m-2" TextMode="SingleLine" placeholder="Enter new brand"></asp:TextBox>
              <asp:Button ID="AddBrandBtn" runat="server" Text="Add Brand" CssClass="btn btn-info m-3" OnClick="AddBrandBtn_Click" />

          </div>

          <div class="brand user-details">
              <h3 class="display-6">Add my ear tag</h3>
              <asp:DropDownList ID="animalTagList" runat="server" CssClass="form-control">
                  <asp:ListItem Selected="True">Check eartag</asp:ListItem>

              </asp:DropDownList>
              <asp:TextBox ID="txtAddTag" runat="server" CssClass="form-control m-2" TextMode="SingleLine" placeholder="Enter eartag"></asp:TextBox>
              <asp:Button ID="AddTagBtn" runat="server" Text="Add tag" CssClass="btn btn-info m-3" OnClick="updateTagBtn_Click" />
          </div>
          
            <asp:LinkButton ID="EditProfileLinkBtn" runat="server" data-bs-toggle="modal" data-bs-target="#updateProfile" class="dash-btn btn2 col-sm-12 m-2 " OnClick="EditProfileLinkBtn_Click">Edit profile</asp:LinkButton>
         

         
        </div>

        <div class="user-dashboard container col ">
        <h2>User Dashboard</h2>

        <div class="dash-buttons-container container row">
        
            <asp:HyperLink ID="registerFAnimal" runat="server" data-bs-toggle="modal" data-bs-target="#registerFoundAnimal" class="dash-btn btn1 col-sm-12 m-2" >   
                   Register Found animal
            </asp:HyperLink>

            <asp:HyperLink ID="registerLAnimal" runat="server"  data-bs-toggle="modal" data-bs-target="#registerLostAnimal" class="dash-btn btn2 col-sm-12 m-2 ">

                
                      Register lost
                 
            </asp:HyperLink>

            <asp:LinkButton ID="foundAnimals" runat="server" class="dash-btn btn3 col-sm-12 m-2" OnClick="foundAnimals_Click"> See Found Animals</asp:LinkButton>


            <asp:linkButton ID="lostAnimalsLink" runat="server" class="dash-btn btn4 col-sm-12 m-2" OnClick="lostAnimalsLink_Click">
               
                        See Lost Animals
                
            </asp:linkButton>
            
            <asp:LinkButton ID="reportsLink" runat="server" class="dash-btn btn5 col-sm-12 m-2" OnClick="reportsLink_Click">
                 
                              Reports
            </asp:LinkButton>


            

            <asp:linkButton ID="meesagesLink" runat="server" class="dash-btn btn6 col-sm-12 m-2-sm-12 m-2" data-bs-toggle="modal" data-bs-target="#inbox" >           
                                              Inbox
            
            </asp:linkButton>
            <asp:linkButton ID="LinkButton1" runat="server" class="dash-btn btn6 col-sm-12 m-2-sm-12 m-2" data-bs-toggle="modal" data-bs-target="#createMessage" >           
                                              Create Message
            
            </asp:linkButton>


            <asp:linkButton ID="signOutBtn" runat="server" class="dash-btn btn6 col-sm-12 m-2-sm-12 m-2">           
                                              Sign out
            
            </asp:linkButton>
                
        </div>
        </div>

        </div>
      
    </section>

    <section>
      <!-- modals -->

      <!-- MODAL FOR REGISTERING LOST ANIMAL col-md-4 col-sm-12 m-2-->

      <div class="modal fade" id="registerLostAnimal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="staticBackdropLabel">Register lost animal</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
      
              <div>
                <!-- brand -->
                <div class="mb-3">

                   

                  <label for="txtLostBrand" class="form-label">Brand of Lost animal</label>

                    <asp:TextBox ID="txtLostBrand" runat="server" class="form-control" TextMode="SingleLine"></asp:TextBox>            

                  <div id="noticer" class="form-text">You information shared here will be shared in the website</div>
                </div>


      
                <!-- eartag -->
                <div class="mb-3">

                  <label for="txtLostTag" class="form-label">Eartag of animal lost</label>

                   <asp:TextBox ID="txtLostTag" runat="server" class="form-control" TextMode="SingleLine"></asp:TextBox>

                </div>
      
                <!-- type -->
                <div class="mb-3">
                    <label for="lstLostType" CssClass="form-label">Type of animal lost</label>

                 <asp:DropDownList ID="lstLostType" runat="server" CssClass="form-control">
                     <asp:ListItem Value="">select drop</asp:ListItem>
                     <asp:ListItem Value="cattle">Cattle</asp:ListItem>
                     <asp:ListItem Value="goat">Goat</asp:ListItem>
                     <asp:ListItem Value="sheep">Sheep</asp:ListItem>

                    
                 </asp:DropDownList>

                  
                </div>
      
                <!-- color -->

                <div class="mb-3">

                  <label for="txtLostColor" class="form-label">Color of lost animal</label>

                    <asp:TextBox ID="txtLostColor" runat="server" TextMode="SingleLine" Class="form-control" MaxLength="50"></asp:TextBox>
                  
                </div>
      
                <!-- date lost -->
                <div class="mb-3">

                  <label for="txtLostDate" class="form-label">Date of last seen</label>
                    <asp:TextBox ID="txtLostDate" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                  
                </div>

                <!-- location -->
                <div class="mb-3">
                  <label for="txtLostLocation" class="form-label">Location lost at</label>
                        <asp:DropDownList ID="txtLostLocation1" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">select drop</asp:ListItem>
                        <asp:ListItem Value="Central">Central</asp:ListItem>
                        <asp:ListItem Value="Ghanzi">Ghanzi</asp:ListItem>
                        <asp:ListItem Value="Kgalagadi">Kgalagadi</asp:ListItem>
                        <asp:ListItem Value="Kweneng">Kweneng</asp:ListItem>
                         <asp:ListItem Value="North East">North East</asp:ListItem>
                         <asp:ListItem Value="North West">North West</asp:ListItem>
                         <asp:ListItem Value="South East">South East</asp:ListItem>
                         <asp:ListItem Value="Southern">Southern</asp:ListItem>


                    
                 </asp:DropDownList>
                  
                </div>
      
                <!-- description -->
                <div class="mb-3">
                  <label for="txtLostDescription" class="form-label">Description of animal</label>

                    <asp:TextBox ID="txtLostDescription" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>

                </div>

                <!-- image upload -->
                <div class="mb-3">
                  <label for="LostImage" class="form-label">Picture of animal</label>

                    <asp:FileUpload ID="LostImage" runat="server"  class="form-control" accept="image/*"/>
                 
                </div>
                <!-- the submit button-->
                  <asp:Button ID="btnLostSubmit" runat="server" Text="Submit" class="btn btn-primary" OnClick="btnLostSubmit_Click" />

               
      
              </div>
      
            </div>
            <div class="modal-footer">
                <asp:Button ID="btnClose" runat="server" Text="Close" class="btn btn-secondary" data-bs-dismiss="modal" />
             
            </div>
          </div>
        </div>
      </div>
      
      
      
      <!-- ****************************************************************************************************************************************************************************************************************************************************** -->
      
      <!-- MODAL FOR REGISTERING FOUND ANIMAL -->
      
      <div class="modal fade" id="registerFoundAnimal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="staticBackdropLabel">Register Found animal</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
      
              <div>
                <!-- brand -->
                <div class="mb-3">
                  <label for="txtFoundBrand" class="form-label">Brand of found animal</label>

                    <asp:TextBox ID="txtFoundBrand" runat="server" TextMode="SingleLine" class="form-control"></asp:TextBox>
                  
                 
                </div>
      
                <!-- eartag -->
                <div class="mb-3">
                  <label for="txtFoundTag" class="form-label">Eartag of found animal</label>

                    <asp:TextBox ID="txtFoundTag" TextMode="SingleLine" class="form-control" runat="server"></asp:TextBox>

                </div>
      
                <!-- type -->
                <div class="mb-3">

                  <label for="txtFoundType" class="form-label">Type of animal</label>

                    <asp:DropDownList ID="lstFoundType" runat="server" class ="form-control">
                        <asp:ListItem Value="">select drop</asp:ListItem>
                        <asp:ListItem Value="cattle">Cattle</asp:ListItem>
                        <asp:ListItem Value="goat">Goat</asp:ListItem>
                        <asp:ListItem Value="sheep">Sheep</asp:ListItem>

                    </asp:DropDownList>

          
                </div>
      
                <!-- color -->
                <div class="mb-3">
                  <label for="txtFoundColor" class="form-label">Color of animal found</label>
                    <asp:TextBox ID="txtFoundColor" TextMode="SingleLine" class="form-control"    runat="server"></asp:TextBox>
                  
                </div>
      
                <!-- date lost -->
                <div class="mb-3">
                  <label for="txtFoundDate" class="form-label">Date found</label>
                    <asp:TextBox ID="txtFoundDate" TextMode="Date" class="form-control"  runat="server"></asp:TextBox>

                 
                </div>

                  <div class="mb-3">
                  <label for="txtFoundEmail" class="form-label">Contact email</label>
                      <asp:TextBox ID="txtFoundEmail" class="form-control" TextMode="Email" runat="server"></asp:TextBox>
                  
                </div>

                <!-- location -->
                <div class="mb-3">
                  <label for="txtFoundLocation1" class="form-label">Location found at</label>
                    <asp:DropDownList ID="txtFoundLocation1" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">select drop</asp:ListItem>
                        <asp:ListItem Value="Central">Central</asp:ListItem>
                        <asp:ListItem Value="Ghanzi">Ghanzi</asp:ListItem>
                        <asp:ListItem Value="Kgalagadi">Kgalagadi</asp:ListItem>
                        <asp:ListItem Value="Kweneng">Kweneng</asp:ListItem>
                         <asp:ListItem Value="North East">North East</asp:ListItem>
                         <asp:ListItem Value="North West">North West</asp:ListItem>
                         <asp:ListItem Value="South East">South East</asp:ListItem>
                         <asp:ListItem Value="Southern">Southern</asp:ListItem>

                        </asp:DropDownList>
                 
                </div>
      
                <!-- description -->
                <div class="mb-3">
                  <label for="foundDescription" class="form-label">Description of animal found</label>
                    <asp:TextBox ID="txtFoundDescription" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>
                 
                </div>
                <!-- image upload -->
                <div class="mb-3">
                  <label for="foundImage" class="form-label">Picture of animal</label>
                    <asp:FileUpload ID="foundImage" runat="server" class="form-control"/>

                
                </div>
                <!-- the submit button-->
                  <asp:Button ID="foundSubmitBtn" runat="server" Text="Submit" class="btn btn-primary" OnClick="foundSubmitBtn_Click"/>

               
      
              </div>
      
            </div>
            <div class="modal-footer">
                <asp:Button ID="foundCloseBtn" runat="server" Text="Close" class="btn btn-secondary" data-bs-dismiss="modal"/>
              
            </div>
          </div>
        </div>
      </div>
      


    </section>

    <!-- form for updating-->

    <div class="modal fade" id="updateProfile" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" >Update user profile</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

              <div class="row g-3 col-8 p-3">
        
        <div class="col-md-6">
            <label for="txtUpdateFname" class="form-label">First name</label>

            <asp:TextBox ID="txtUpdateFname" runat="server" TextMode="SingleLine" class="form-control" aria-label="First name" MaxLength="50"></asp:TextBox>


            <!-- VALIDATION TEXT -->
            <span style='display: none;' class="fst-italic fw-lighter text-mute text-danger" id="nameC">Name or Surame is not within range</span>
        </div>

        <div class="col-md-6">
            <label for="txtUpdateSurname" class="form-label">Surname</label>

            <asp:TextBox ID="txtUpdateSurname" runat="server" TextMode="SingleLine" class="form-control" aria-label="Last name"></asp:TextBox>

          
        </div>
          

        <div class="col-md-6">
            <label for="txtUpdateCellNumber" class="form-label">Cell number</label>

            <asp:TextBox ID="txtUpdateCellNumber" runat="server"  TextMode="Number" class="form-control" ></asp:TextBox>

            
        </div>
        
        <div class="col-md-6">

            <label for="txtUpdateBrand" class="form-label">Animal Brand</label>
            <asp:TextBox ID="txtUpdateBrand" runat="server"  TextMode="SingleLine" class="form-control" ></asp:TextBox>

            
        </div>

        <div class="col-md-6">
          <label for="txtUpdateTag" class="form-label">Eartag</label>
            <asp:TextBox ID="txtUpdateTag" runat="server" TextMode="SingleLine" class="form-control"></asp:TextBox>

         
        </div>
    


        <div class="col-md-6">
          <label for="txtUpdatePassword" class="form-label">New Password</label>
            <asp:TextBox ID="txtUpdatePassword" runat="server" TextMode="SingleLine" class="form-control"></asp:TextBox>
       
          <span style='display: none;' class="fst-italic fw-lighter text-mute text-danger" id="passwordC">Password must match and lenght greater than 8</span>
        </div>

        <div class="col-md-6">
            <label for="txtupdateCpassword" class="form-label">Confirm new password</label>
            <asp:TextBox ID="txtupdateCpassword" runat="server" TextMode="SingleLine" class="form-control"></asp:TextBox>

          </div>


        
        <div class="col-md-6">
          <label for="txtUpdateLocation" class="form-label">New location</label>
            <asp:TextBox ID="txtUpdateLocation" runat="server" TextMode="SingleLine" class="form-control" ></asp:TextBox>

        </div>


        <div class="col-12">
            <asp:Button ID="updateSubmitBtn" runat="server" Text="Update" class="btn btn-primary"/>
          
        </div>
      </div>

            </div>


        </div>




     

     </div>



    <!-- FORM FOR CREATING A MESSAGE-->

     <div class="modal fade" id="createMessage" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="staticBackdropLabel">Create a new message</h5>
                
                
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <p class="text-muted">Please ensure you have type the correct Email</p>
              <div>
                <!-- sender -->
               
      
                <!-- reciever -->
                <div class="mb-3">
                  <label for="txtFoundTag" class="form-label">To:</label>

                    <asp:TextBox ID="recieverTxt" TextMode="Email" class="form-control" runat="server" placeholder="Receiver email here"></asp:TextBox>

                </div>
      
                <!-- message -->
                <div class="mb-3">

                  <label for="txtFoundType" class="form-label"></label>

                    <asp:TextBox ID="messageTxt" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Write message!"></asp:TextBox>

          
                </div>
                
                </div>
                <!-- the submit button-->
                  <asp:Button ID="CreateMessageBtn" runat="server" Text="Send" class="btn btn-primary" OnClick="CreateMessageBtn_Click" />

            </div>
            <div class="modal-footer">
                <asp:Button ID="Button2" runat="server" Text="Close" class="btn btn-secondary" data-bs-dismiss="modal"/>
              
            </div>
          </div>
        </div>
      </div>





    <!-- MODAL FOR VIEW MESSAGES-->

     <div class="modal fade" id="inbox" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="staticBackdropLabel">Create a new message</h5>
                
                
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
              
            <div class="modal-body">
              
              <div class="row">
                  <asp:PlaceHolder ID="holder" runat="server"></asp:PlaceHolder>
               <div class="card m-2 col" style="width: 18rem;">
                  <div class="card-body">
                    <h5 class="card-title">From : User</h5>
                    <p class="card-text m-3"> Ke bone kgomonyana yaago muna yee bopang ele. tla o tseye before re tlhapa.</p>

                      <asp:Button ID="DeleteBtn" runat="server" Text="Delete" CssClass="btn btn-primary" />
                  </div>
                </div>
                </div>
          
            </div>
            
          </div>
        </div>
      </div>






</asp:Content>
