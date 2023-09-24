<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="OnlineCarRental.View.Admin.Returns" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-3"><img src="../../Assets/Images/benz2.jpeg" height="150px" />
                <h1 class="text-danger">Car Returned</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                                        <form runat="server">
                           
                          <asp:GridView runat="server" ID="RentList" class="table table-hover"  AutoGenerateSelectButton="True"  >
                                <AlternatingRowStyle BackColor="#FF6600" BorderColor="#000099" ForeColor="White" />

                            </asp:GridView> 
    
                        </form>
            </div>
        </div>
    </div>
</asp:Content>
