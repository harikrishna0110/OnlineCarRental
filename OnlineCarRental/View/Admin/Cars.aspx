  <%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="OnlineCarRental.View.Admin.WebForm1" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                     <h3 class="text-danger pl-4"> Manage Cars </h3>
                    <div class="col"><img src="../../Assets/Images/car2.png" width="400" height="120" /></div>
                     
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <form runat="server">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Licence Number</label>
                                <input type="text" class="form-control" id="LNumber"
                                    placeholder="Enter plate number" runat="server">
                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Brand</label>
                                <input type="text" class="form-control" id="BrandTb"
                                     placeholder="Enter the Car's Brand" runat="server">
                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Model</label>
                                <input type="text" class="form-control" id="ModelTb"
                                     placeholder="Enter Model" runat="server">
                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Price</label>
                                <input type="text" class="form-control" id="PriceTb"
                                     placeholder="Enter PriceTB" runat="server">
                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Color</label>
                                <input type="text" class="form-control" id="ColorTb"
                                    placeholder="Enter color" runat="server">
                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Available</label>
                              
                                    <asp:DropDownList ID="AvailebleCB" runat="server" class="form-control">
                                        <asp:ListItem>Avialable</asp:ListItem>
                                         <asp:ListItem>Booked</asp:ListItem>
                                    </asp:DropDownList>
                                
                                
                            </div>
                            <br/>
                           <br/>
                            <label id="ErrorMssg" runat="server" class="text-danger"> </label>
                            <asp:Button type="submit" ID="Editbtn" Class ="btn btn-danger" Text ="Edit" runat="server" OnClick="Editbtn_Click" />
                            <asp:Button type="submit" ID="Savebtn" Class ="btn btn-danger" Text ="Save" runat="server" OnClick="Savebtn_Click" />
                            <asp:Button type="submit" ID="DeleteBtn" Class ="btn btn-danger" Text ="Delete" runat="server" OnClick="DeleteBtn_Click" />
                           
                        </form>

                    </div>

                </div>
            </div>
            <div class="col-md-8">
                <h1>Car List </h1>
           <asp:GridView runat="server" ID="CarList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged" >
               <AlternatingRowStyle BackColor="#FF6600" BorderColor="#000099"  ForeColor="White"/>
               
           </asp:GridView>
            </div>
        </div>
        </div>
    
 </asp:Content>
