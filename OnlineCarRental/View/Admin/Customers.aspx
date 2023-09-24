<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="OnlineCarRental.View.Admin.Customers"  enableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                     <h4 class="text-danger pl-4"> Manage Customers </h4>
                    <div class="col"><img src="../../Assets/Images/customer1.png" width="250" height="160" /></div>
                     
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <form runat="server">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Customer Name</label>
                                <input type="text" class="form-control" id="CustNumberTb"
                                    placeholder="Enter Customer's Name" runat="server">
                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Customer Address</label>
                                <input type="text" class="form-control" id="AddTb"
                                     placeholder="Enter Customer's Address" runat="server">
                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Customer Phone</label>
                                <input type="text" class="form-control" id="PhoneTb"
                                     placeholder="Enter Phone" runat="server">
                                
                            </div>
                             <div class="form-group">
                                <label for="exampleInputEmail1">Customer Password</label>
                                <input type="text" class="form-control" id="PasswordTb"
                                     placeholder="Enter Password" runat="server">
                                
                            </div>
                         
                            <br/>
                           <br/>
                            <label id="ErrorMssg" runat="server" class="text-danger"> </label>
                            <asp:Button type="submit" ID="Editbtn" Class ="btn btn-danger" Text ="Edit" runat="server" OnClick="Editbtn_Click"  />
                            <asp:Button type="submit" ID="Savebtn" Class ="btn btn-danger" Text ="Save" runat="server" OnClick="Savebtn_Click1"  />
                            <asp:Button type="submit" ID="DeleteBtn" Class ="btn btn-danger" Text ="Delete" runat="server" OnClick="DeleteBtn_Click"  />
                        </form>

                    </div>

                </div>
            </div>
            <div class="col-md-8">
                  <h1>Customer  List </h1>
         
           <asp:GridView runat="server" ID="CustomersList" Class="table table-hover"  AutoGenerateSelectButton="True" OnSelectedIndexChanged="CustomersList_SelectedIndexChanged"  >
               <AlternatingRowStyle BackColor="#FF6600" BorderColor="#000099"  ForeColor="White"/>
               
           </asp:GridView>
         </div>
    </div>
    </div>
</asp:Content>
