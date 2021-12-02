<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LostPage.aspx.cs" Inherits="matWebForms.LostPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="icons/css/all.css" rel="stylesheet" />
    <script src="icons/js/all.js"></script>

</asp:Content>



<asp:Content ID="LostAnimalPage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>
<!-- the hero section that will act as the introduction to the page of ofund animals -->
  <section class="py-5 text-center container hero-section">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">Lost Animals</h1>
        <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don’t simply skip over it entirely.</p>
      
      </div>
    </div>
  </section>



       


  <div class="album py-5 bg-light container text-center ps-4">
         <asp:GridView ID="GridViewLost" runat="server" CssClass="m-4 ps-5" AutoGenerateColumns="False" DataKeyNames="eartag" DataSourceID="SqlDataSourceLost" BorderColor="Black">
             <Columns>
                 <asp:BoundField DataField="eartag" HeaderText="Eartag" ReadOnly="True" SortExpression="eartag" />
                  <asp:TemplateField>
                                <ItemTemplate> 
                                    <div class="container-fluid text-start">
                                        <div class="row shadow p-3 m-5 bg-body text-start">
                                            <div class="col-lg-10" >
                                                <div class="row display-6">
                                                    <div class="col-12"> <!-- location-->
                                                       <i class="fas fa-tag "></i> <asp:Label ID="Label1" runat="server" CssClass="" Text='<%# Eval("brand") %>'></asp:Label>

                                                    </div>
                                                </div>
                                                 <div class="row bg-light  p-1 mt-2">
                                                    <div class="col-12 "><!--color-->
                                                       <i class="fas fa-marker"></i> <asp:Label ID="Label2" runat="server" CssClass=" " Text='<%# Eval("description") %>'></asp:Label>


                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12"><!-- date-->
                                                      <i class="fas fa-map-marker"></i>  <asp:Label ID="Label3" runat="server" Text='<%# Eval("location") %>'></asp:Label>


                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <i class="fas fa-venus-double"></i> <asp:Label ID="Label5" runat="server" Text='<%# Eval("type") %>'></asp:Label>

                                                    </div>
                                                    </div>
                                                <div class="row ">
                                                    <div class="col-12">
                                                       <i class="fas fa-calendar-day"> </i>  <asp:Label ID="Label6" runat="server" Text='<%# Eval("dateLost") %>'></asp:Label>

                                                    </div>
                                                    </div>
                                                <div class="row">
                                                    <div class="col-12"><!-- color-->
                                                        <i class="fas fa-fill"> </i>  <asp:Label ID="Label4" runat="server" Text='<%# Eval("color") %>'></asp:Label>
                                                                                                            
                                                    </div>
                                                </div>                                              
                                            </div>


                                            <div class =" col-lg-2 img">
                                                <img src="images/placeholder.jpg" class="img-fluid m-2" width="400" height="auto"/>

                                            </div>

                                        </div>
                                    </div>
                                    
                                </ItemTemplate>
                            </asp:TemplateField>





                 
             </Columns>
                    </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSourceLost" runat="server" ConnectionString="<%$ ConnectionStrings:matimelaDBConnectionString %>" SelectCommand="SELECT * FROM [lostAnimals]"></asp:SqlDataSource>
        
  </div>

</main>



   

</asp:Content>
