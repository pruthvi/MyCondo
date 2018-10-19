<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MyCondo.index" %>

<asp:Content ID="Content3" ContentPlaceHolderID="PageTitle" runat="server"> Home Page
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageContent" runat="server">
                                <div class="card m-b-30 text-white bg-danger text-xs-center">
                                    <div class="card-body">
                                        <blockquote class="card-bodyquote">
                                            <p>East side staircase are closed for Maintance</p>
                                            <footer>Please use <cite title="West">West Side</cite> Staircase!
                                            </footer>
                                        </blockquote>
                                    </div>
                                </div> <!-- end card-box-->
       <div class="card m-b-30 text-white bg-success text-xs-center">
                                    <div class="card-body">
                                        <blockquote class="card-bodyquote">
                                            <p>Christmas celebration is being held on 24th Dec.</p>
                                            <footer>Please get your Passes from the reception desk.
                                            </footer>
                                        </blockquote>
                                    </div>
                                </div> <!-- end card-box-->



</asp:Content>
