<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FoundPage.aspx.cs" Inherits="matWebForms.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="icons/css/all.css" rel="stylesheet" />
    <script src="icons/js/all.js"></script>
</asp:Content>


<asp:Content ID="foundAnimalsPageId" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="py-5 text-center container hero-section">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:matimelaDBConnectionString %>" SelectCommand="SELECT * FROM [foundAnimals]"></asp:SqlDataSource>
            Animals found </h1>
        <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don’t simply skip over it entirely.</p>
        
      </div>
    </div>
  </section>

  <div class="album py-5 bg-light text-center container">
                    <asp:GridView ID="GridView1" runat="server" CssClass="m-4 ps-5" AutoGenerateColumns="False" DataKeyNames="eartag" DataSourceID="SqlDataSource1" GridLines="Both" BorderColor="Black">
                        <Columns>
                            <asp:BoundField DataField="eartag" HeaderText="Eartag" ReadOnly="True" SortExpression="eartag" />

                            <asp:TemplateField>
                                <ItemTemplate> 
                                    <div class="container-fluid text-start">
                                        <div class="row shadow p-3 m-5 bg-body ">
                                            <div class="col-lg-10" >
                                                <div class="row display-1">
                                                    <div class="col-12"> <!-- brand-->
                                                        <i class="fas fa-tag"></i> <asp:Label ID="Label1" runat="server" Text='<%# Eval("brand") %>'></asp:Label>

                                                    </div>
                                                </div>
                                                 <div class="row">
                                                    <div class="col-12"><!--description-->
                                                      <i class="fas fa-marker"></i> <asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>'></asp:Label>


                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12"><!-- location-->
                                                      <i class="fas fa-map-marker"></i> <asp:Label ID="Label3" runat="server" Text='<%# Eval("location") %>'></asp:Label>


                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <i class="fas fa-venus-double"> </i> <asp:Label ID="Label5" runat="server" Text='<%# Eval("type") %>'></asp:Label>

                                                    </div>
                                                    </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                      <i class="fas fa-at"> </i> <asp:Label ID="Label6" runat="server" Text='<%# Eval("contactEmail") %>'></asp:Label>

                                                    </div>
                                                    </div>
                                                <div class="row">
                                                    <div class="col-12"><!-- email-->
                                                     <i class="fas fa-fill"> </i> <asp:Label ID="Label4" runat="server" Text='<%# Eval("color") %>'></asp:Label>
                                                                                                            
                                                    </div>
                                                </div> 
                                                <div class="row">
                                                    <div class="col-12"><!-- date-->
                                                     <i class="fas fa-calender-day"> </i> <asp:Label ID="Label7" runat="server" Text='<%# Eval("dateFound") %>'></asp:Label>
                                                                                                            
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

                   
                  

               
            </div>
       
  



      <!-- <asp:BoundField DataField="brand" HeaderText="Brand" SortExpression="brand" />
                            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                            <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color" />
                            <asp:BoundField DataField="dateFound" HeaderText="Date found" SortExpression="dateFound" />
                            <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location" />
                            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                            <asp:BoundField DataField="contactEmail" HeaderText="Contact Email" SortExpression="contactEmail" /> -->

</asp:Content>
