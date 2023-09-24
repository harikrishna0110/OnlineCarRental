<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="PendingRentals.aspx.cs" Inherits="OnlineCarRental.View.Customer.PendingRentals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
      <div class="row">
          <div class="col"></div>
          <div class="col">
              <h2>Your Pending Rentals</h2>

          </div>
          <div class="col"></div>
      </div>
      <div class="row">
       <div class="col-12">
          
                  <form runat="server">
                   <div class="col-md-9">
                            <asp:GridView runat="server" ID="CarList" Class="table table-hover"
                                AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged" >
                                <AlternatingRowStyle BackColor="#FF6600" BorderColor="#000099" ForeColor="White" />

                            </asp:GridView>
                        </div>

              </form>
          
         
      </div>
  </div>
</asp:Content>

