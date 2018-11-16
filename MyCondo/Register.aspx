<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MyCondo.Register" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>MyCondo - Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico" />

    <!-- Icons css -->
    <link href="assets/libs/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/libs/dripicons/webfont/webfont.css" rel="stylesheet" type="text/css" />
    <link href="assets/libs/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css" />

    <!-- App css -->
    <!-- build:css -->
    <link href="assets/css/app.css" rel="stylesheet" type="text/css" />
    <!-- endbuild -->

</head>

<body class="bg-account-pages">
    <form id="form1" runat="server">
        <!-- Login -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-12">

                        <div class="wrapper-page">
                            <div class="account-pages">
                                <div class="account-box">
                                    <!-- Logo box-->
                                    <div class="account-logo-box">
                                        <h2 class="text-uppercase text-center">
                                            <a href="Home.aspx" class="text-success">
                                                <span>
                                                    <img src="assets/images/logo.png" alt="" height="40" /></span>
                                            </a>
                                        </h2>
                                    </div>
                                    <div class="account-content">
                                        <div class="form-group mb-3">
                                            <asp:Table ID="AccountcreationTable" runat="server">
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell>
                                                        Personal Info
                                                    </asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableRow>
                                                    <asp:TableCell>

                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="lblFname" runat="server" CssClass="font-weight-medium" Text="First Name"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtFName" runat="server" placeholder="Enter your First Name"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="lblLName" runat="server" CssClass="font-weight-medium" Text="Last Name"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtLName" runat="server" placeholder="Enter your Last Name"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="lblEmail" runat="server" CssClass="font-weight-medium" Text="Email"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:TextBox class="form-control" ID="txtEmail" runat="server" placeholder="Enter your Email" TextMode="Email"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="lblPhone" runat="server" CssClass="font-weight-medium" Text="Phone Number"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Enter your Email" TextMode="Phone"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                        <!--Adress -->
                                        <div class="form-group mb-3">
                                            <asp:Table ID="AdressTable" runat="server">
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell>
                                                        Adress Info
                                                    </asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableRow>
                                                    <asp:TableCell>

                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="lblAdressLine1" runat="server" CssClass="font-weight-medium" Text="Line 1"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtLine1" runat="server" placeholder="Enter Adress Line 1"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="lblAdressLine2" runat="server" CssClass="font-weight-medium" Text="Line 2"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txt" runat="server" placeholder="Enter your Last Name"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="Label3" runat="server" CssClass="font-weight-medium" Text="Email"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Enter your Email" TextMode="Email"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="Label4" runat="server" CssClass="font-weight-medium" Text="Phone Number"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Enter your Email" TextMode="Phone"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                                                                <!--Adress -->
                                        <div class="form-group mb-3">
                                            <asp:Table ID="Table1" runat="server">
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell>
                                                        Personal Info
                                                    </asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableRow>
                                                    <asp:TableCell>

                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="Label5" runat="server" CssClass="font-weight-medium" Text="First Name"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Enter your First Name"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="Label6" runat="server" CssClass="font-weight-medium" Text="Last Name"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Enter your Last Name"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="Label7" runat="server" CssClass="font-weight-medium" Text="Email"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Enter your Email" TextMode="Email"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="Label8" runat="server" CssClass="font-weight-medium" Text="Phone Number"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Enter your Email" TextMode="Phone"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </div>

                                                                                <!--Adress -->
                                        <div class="form-group mb-3">
                                            <asp:Table ID="Table2" runat="server">
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell>
                                                        Personal Info
                                                    </asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableRow>
                                                    <asp:TableCell>

                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="Label9" runat="server" CssClass="font-weight-medium" Text="First Name"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Enter your First Name"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="Label10" runat="server" CssClass="font-weight-medium" Text="Last Name"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="TextBox11" runat="server" placeholder="Enter your Last Name"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="Label11" runat="server" CssClass="font-weight-medium" Text="Email"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:TextBox class="form-control" ID="TextBox12" runat="server" placeholder="Enter your Email" TextMode="Email"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right">
                                                        <asp:Label ID="Label12" runat="server" CssClass="font-weight-medium" Text="Phone Number"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="TextBox13" runat="server" placeholder="Enter your Email" TextMode="Phone"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </div>


                                        <!--Submit button-->
                                        <div class="form-group row text-center">
                                            <div class="col-12">
                                                <asp:Button class="btn btn-block btn-success waves-effect waves-light" ID="btnCreateAccount" runat="server" Text="Create Account" />
                                            </div>
                                        </div>


                                    </div>
                                    <!-- end account-content -->

                                </div>
                                <!-- end account-box -->
                            </div>
                            <!-- end account-page-->
                        </div>
                        <!-- end wrapper-page -->

                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        <!-- END HOME -->


        <!-- jQuery  -->
        <script src="assets/libs/jquery/jquery.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/libs/metismenu/metisMenu.min.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
    </form>
    <!-- end form -->
</body>
</html>

