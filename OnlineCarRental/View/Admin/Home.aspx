<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineCarRental.View.Admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
      <div class="container mt-5 m-5">
        <div class="row">
         
            <div class="jumbotron  bg-warning">
                <div class="container">
                 <h1 class="display-4">Car Rental Management System Admin Panel</h1>
                   <p class="lead">The Admin can Manage Cars,Customers,Rentals and Returns</p>
              </div>
                </div>
          </div>
            <div class="row">
                <div class="col-lg-3 col-md-6"><div><img src="../../Assets/Images/jeep2.jpg " alt="" height="150" width="250"></div><div><h6 class="text-danger">Jeep Compass</h6></div></div>
                <div class="col-lg-3 col-md-6"><div><img src="../../Assets/Images/thar.jpg " alt="" height="150" width="250"></div><div><h6 class="text-danger">Mahindra Thar</h6></div></div>
                <div class="col-lg-3 col-md-6"><div><img src="../../Assets/Images/hondacity.jpg " alt="" height="150" width="250"></div><div><h6 class="text-danger">Honda City</h6></div></div>
                <div class="col-lg-3 col-md-6"><div><img src="../../Assets/Images/benz2.jpeg " alt="" height="150" width="250"></div><div><h6 class="text-danger">MercedezBenz GLS</h6></div></div>
            </div><div class="row">
                <div class="col-lg-3 col-md-6"><div><img src="../../Assets/Images/seltos.jpg " alt="" height="150" width="250"></div><div><h6 class="text-danger">Kia Seltos</h6></div></div>
                <div class="col-lg-3 col-md-6"><div><img src="../../Assets/Images/innova.jpg " alt="" height="150" width="250"></div><div><h6 class="text-danger">Toyota Innova</h6></div></div>
                <div class="col-lg-3 col-md-6"><div><img src="../../Assets/Images/creta.jpg " alt="" height="150" width="250"></div><div><h6 class="text-danger">Hyundai Creta</h6></div></div>
                <div class="col-lg-3 col-md-6"><div><img src="../../Assets/Images/baleno.jpg " alt="" height="150" width="250"></div><div><h6 class="text-danger">Maruti Suzuki Baleno</h6></div></div>
        </div>
    </div>
</asp:Content>
