 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineCarRental.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Libraries/css/bootstrap.min.css" />
</head>
<body>
    <div class="container-fluid">
        <div class=" row">
            <div class="col-md-3"></div>
            <div class="col-md-5">
                <div class="row mt-5"> 
                    <div class="col"></div>

                     <div class="col">
                         <div> <h4 class="text-danger"> Online Car  Rental</h4></div>
                        
                         <img src="../Assets/Images/login.jpg" height="200px"  />
                     </div>
                     <div class="col"></div>
                </div>
                <form runat="server">
                <div class="form-group" runat="server">
    <label for="exampleInputEmail1">Email address</label>
    <input type="text" class="form-control" id="UserNameTb" aria-describedby="emailHelp" placeholder="Enter UserId " runat="server" required="required"/>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="PasswordTb" placeholder="Password" runat="server" required="required"/>
  </div>
  <div class="form-group" >
    <input type="radio" class="form-check-input" id="CustRadio" name="Role" runat="server"/>
    <label class="form-check-label" for="exampleCheck1">Customer</label>
    <input type="radio" class="form-check-input" id="AdminRadio" name="Role" runat="server" />
    <label class="form-check-label" for="exampleCheck2">Admin</label>
  </div>
                <br/>
                <div class="form-check d-grid">
                    <label id="InfoMssg" runat="server" class="text-danger">
                        
                    </label>
                    <asp:Button type="submit" ID="Savebtn" Class ="btn btn-warning btn-block" Text ="Login" runat="server" OnClick="Savebtn_Click1"   />
  </div>
 
</form> 
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
  
  
</body>
</html>
