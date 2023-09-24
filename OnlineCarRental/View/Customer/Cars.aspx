<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true"
    CodeBehind="Cars.aspx.cs" Inherits="OnlineCarRental.View.Customer.Cars" enableEventValidation="True" %>

    <asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-10"></div>
                <div class="col-md-2 "><label id="CustName" runat="server">dddd</label></div>
                <div></div>

            </div>

            <div class="row">
                <div class="col-md-5"></div>
                <div class="col-md-5 ml-6"><img src="../../Assets/Images/seltos.jpg" height="170px" /></div>
                <div></div>

            </div>
            <form runat="server">
                <div class="row">


                    <div class="col-md-2"></div>
                    <div class=" col">


                        <div class="col-md-6"></div>
                        <div class="row">
                            <div class="col-5"> </div>
                            <div></div>
                        </div>

                        <div class="row">
                            <div class="col-3"></div>
                            <div class="col-8">
                                <h1 class="text-danger">Available Cars </h1>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <asp:GridView runat="server" ID="CarList" Class="table table-hover"
                                AutoGenerateSelectButton="True" OnClickSelected="CarList_SelectedIndexChanged">
                                <AlternatingRowStyle BackColor="#FF6600" BorderColor="#000099" ForeColor="White" />

                            </asp:GridView>
                        </div>
                         <div class="row">
                    <div class="col-4">
                        <div class="form-group">

                            <input type="date" class="form-control" id="ReturnDate" placeholder="Password"
                                runat="server" required="required" />
                        </div>
                    </div>

                  

                </div><div class="row" >
                     <label id="InfoMsg" runat="server" class="text-danger"></label>
                      <div class="col-10">
                            <div class="form-check d-grid">
                            
                                <asp:Button type="submit" ID="Button2" Class="btn btn-danger" Text="Book" runat="server"
                                    OnClick="Book_btn_Click" Style="margin-left:550px" />

                            </div>
                        </div>

                      </div>
                      



                    </div>
                </div>


               
            </form>


        </div>




    </asp:Content>