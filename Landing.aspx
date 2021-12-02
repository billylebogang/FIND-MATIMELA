<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="matWebForms.WebForm1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <section class="banner container">
        <div class="container-fluid">
            <div class="container-fluid banner">
                <!-- <img src="./images/banner.jpg" alt="banner picture of farm" class="banner img-fluid"> -->
                <div class="align-middle">
                    <h1 class=" display-3 btext ">
                        Let us help you locate your lost animal
                    </h1>

                    <p class="display-6">Get notified once your animals has been found</p>
                    <div class="btn-group">
                        <asp:LinkButton ID="signUpBtn" runat="server" class="btn btn-outline-primary" OnClick="signUpBtnID_Click" >Sign up </asp:LinkButton>

                        <asp:LinkButton ID="signInBtn" runat="server"  class="nav-link active btn btn-primary" data-bs-toggle="modal" data-bs-target="#sign-in" OnClick="signInBtn_Click">Sign in</asp:LinkButton>

                        <!--<a href="./signup/signup.html" class="btn btn-outline-primary"> Sign up </a>
                        <a class="nav-link active btn btn-primary" data-bs-toggle="modal" data-bs-target="#sign-in"> Sign in</a> -->
                    </div>
                        
                </div>
            </div>
        </div>

    </section>

    <!-- modal for the sign in part -->
    <div class="modal fade" id="sign-in" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="staticBackdropLabel">Sign in</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <div>
                  <div class="mb-3">
                    <label for="txtSignInEmail" class="form-label">Email address</label>
                      <asp:TextBox ID="txtSignInEmail" TextMode="SingleLine" runat="server" class="form-control" aria-describedby="emailHelp"></asp:TextBox>
                    <div id="emailHelp" class="form-text">You information shared here will be kept private</div>
                  </div>
                  <div class="mb-3">
                    <label for="txtSignInPassword" class="form-label">Password</label>
                      <asp:TextBox ID="txtSignInPassword" TextMode="Password" runat="server" class="form-control" aria-describedby="emailHelp"></asp:TextBox>
                      
                  </div>
                <asp:Button ID="signInBtnSubmit" runat="server" Text="Sign in" class="btn btn-primary" OnClick="signInBtnSubmit_Click"/>
                  
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>

    
</asp:Content>
