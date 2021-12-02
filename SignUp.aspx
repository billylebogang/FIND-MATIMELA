<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="matWebForms.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="singUpCtn container p-lg-5 " style="background-image: url(../images/banner.jpg); background-size: cover;">
        <asp:Label ID="lblEror" runat="server" Text="here"></asp:Label>

    <div class="row g-3">


        <div class="row g-3 col-8">

             <div class="col-md-6">
            <label for="txtOmang" class="form-label">Omang Number</label>
            <asp:TextBox ID="txtOmang" TextMode="Number" runat="server" class="form-control"  aria-label=""></asp:TextBox>

           
            <span style='display:none;' class="fst-italic fw-lighter text-mute text-danger" id="omangC">ID number is not valid</span>
        </div>

        
        <div class="col-md-6">
            <label for="txtName" class="form-label">First name</label>  
            <asp:TextBox ID="txtName" TextMode="SingleLine" runat="server" class="form-control" aria-label="First name"></asp:TextBox>

            
            <!-- VALIDATION TEXT -->
            <span style='display: none;' class="fst-italic fw-lighter text-mute text-danger" id="nameC">Name or Surame is not within range</span>
        </div>

        <div class="col-md-6">
            <label for="txtLastname" class="form-label">Surname</label>
            <asp:TextBox ID="txtLastname" TextMode="SingleLine" runat="server" class="form-control"  aria-label="Last name"></asp:TextBox>

            
        </div>

             <div class="col-md-6">
          <label for="txtLocation" class="form-label">Location</label>
              <asp:TextBox ID="txtLocation" TextMode="SingleLine" runat="server" class="form-control" ></asp:TextBox>
        </div>

          
       
        <div class="col-md-6">
            <label for="txtCellnumber" class="form-label">Cell number</label>
            <asp:TextBox ID="txtCellnumber" TextMode="SingleLine" runat="server" class="form-control" aria-label=""></asp:TextBox>

           
        </div>

        <div class="col-12">
          <label for="txtEmail" class="form-label">Email</label>
            <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" class="form-control" ></asp:TextBox>

          
        </div>

            <div class="col-12">
          <label for="txtAddress" class="form-label">Address</label>
              <asp:TextBox ID="txtAddress" TextMode="SingleLine" runat="server" class="form-control" ></asp:TextBox>

        
        </div>

        
       

        <div class="col-md-6">
          <label for="txtPassword" class="form-label">Password</label>
            <asp:TextBox ID="txtPassword" TextMode="SingleLine" runat="server" class="form-control" ></asp:TextBox>

          
          <span style='display: none;' class="fst-italic fw-lighter text-mute text-danger" id="passwordC">Password must match and lenght greater than 8</span>
        </div>

        <div class="col-md-6">
            <label for="txtConfirmPassword" class="form-label">Confirm password</label>
              <asp:TextBox ID="txtConfirmPassword" TextMode="SingleLine" runat="server" class="form-control" ></asp:TextBox>

            
          </div>


        
       
    
        </div>


        <div class="col-12 m-2" >
           <asp:Button ID="signUpBtn" runat="server" Text="Register" class="btn btn-primary" OnClick="signUpBtn_Click" />
          
        </div>
      </div>

    
  
    


</section>


</asp:Content>
