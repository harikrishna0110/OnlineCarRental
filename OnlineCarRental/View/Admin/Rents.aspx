<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="OnlineCarRental.View.Admin.Rents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-5"></div>

                     
                    <div class="col-6">
                        <h3 class="text-danger pl-4"> Rented Cars</h3>
                        <img src="../../Assets/Images/rent1.png" width="250" height="160" ></div>
                     
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col-lg-1"></div> 
                    <div class="col-lg-9">
                        <form runat="server">
                           
                          <asp:GridView runat="server" ID="RentList" class="table table-hover"  AutoGenerateSelectButton="True"  >
                                <AlternatingRowStyle BackColor="#FF6600" BorderColor="#000099" ForeColor="White" />

                            </asp:GridView> 
                            <div class="form-group" >
    <input type="text" class="form-control" id="DelayTb"  runat="server"/>
    <label class="form-check-label" for="exampleCheck1">Delay</label>
    <input type="text" class="form-control" id="FineTb"  runat="server" />
    <label class="form-check-label" for="exampleCheck2">Fine</label>
  </div>
                           
                            
                            <div class="form-check d-grid">
                    <label id="InfoMsg" runat="server" class="text-danger">
                        
                    </label>
                    <asp:Button type="submit" ID="Savebtn" Class ="btn btn-danger btn-block" Text ="Return" runat="server" OnClick="Savebtn_Click1"   />
  </div>
 

                        </form>

                    </div>


                </div>
            </div>
          
        </div>
    </div>
</asp:Content>
