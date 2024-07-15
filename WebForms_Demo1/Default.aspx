<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebForms_Demo1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <body>
        <formview Id="formId" runat="server">
            <div>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_title" runat="server" Text="Title"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_title" runat="server" ErrorMessage="title is required" ControlToValidate="txt_title" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_year" runat="server" Text="Year"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="txt_year" runat="server">
                                <asp:ListItem Selected="True" Text="Choose" Value="0"></asp:ListItem>
                                <asp:ListItem Text="2000" Value="1"></asp:ListItem>
                                <asp:ListItem Text="2001" Value="2"></asp:ListItem>
                                <asp:ListItem Text="2002" Value="3"></asp:ListItem>
                                <asp:ListItem Text="2003" Value="4"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="txt_yearValidator" runat="server" ErrorMessage="year is required" ControlToValidate="txt_year" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_category" runat="server" Text="Category"></asp:Label>
                        </td>
                        <td>
                           <asp:RadioButtonList ID="rbl_category" runat="server">
                                <asp:ListItem Text="Action" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Cinema" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Documentary" Value="3"></asp:ListItem>
                           </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="category is required" ControlToValidate="rbl_category" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FileUpload runat="server" ID="fu_image"/>
                            <asp:RequiredFieldValidator ID="fu_imageValidator" runat="server" ErrorMessage="image is required" ControlToValidate="fu_image" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_userAccount" runat="server" Text="User Account"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_userAccount" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="userAccount is required" ControlToValidate="txt_userAccount" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="password is required" ControlToValidate="txt_password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <div>
                    <asp:Button runat="server" ID="btn_save" Text="Save" class="btn btn-primary" OnClick="btn_save_Click"/>
                </div>

                <div class="container mt-5">
                    <h2>Information Table</h2>
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Image</th>
                                <th>Title</th>
                                <th>Year</th>
                                <th>Category</th>
                                <th>User Account</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Image ID="show_image" runat="server" alt="Image 1" />
                                </td>
                                <td>
                                    <asp:Label ID="lbl_show_title" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_show_year" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_show_category" runat="server"></asp:Label>
                                </td>
                                 <td>
                                     <asp:Label ID="lbl_show_userAccount" runat="server"></asp:Label>
                                 </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

            </div>
        </formview>
    </body>

</asp:Content>
