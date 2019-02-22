<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EnvironnementList.aspx.cs" Inherits="EnvironnementList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="float:left">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" 
                AutoGenerateColumns="False" 
                DataKeyNames="Id" DataSourceID="SqlDataSource1"
                >
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"/>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Path" HeaderText="Path" SortExpression="Path" />
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Suppr." />
                </Columns>
            </asp:GridView>
        </div>
        <div style="float:right">

            <asp:Label ID="Idlb" runat="server" Text="Id :"></asp:Label>
            <asp:TextBox ID="Idtb" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            <br />

            <asp:Label ID="Namelb" runat="server" Text="Name :"></asp:Label>
            <asp:TextBox ID="Nametb" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />
            <asp:Label ID="Pathlb" runat="server" Text="Path :"></asp:Label>
            <asp:TextBox ID="Pathtb" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Edit" OnClick="Edit_Click"/>
            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Add_Click" />

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Id], [Name], [Path] FROM [Environnement]"
            UpdateCommand="UPDATE Environnement SET Path = @PathText, Name = @NameText WHERE [Id] = @IdText"
            InsertCommand="INSERT INTO Environnement(Name,Path) VALUES (@NameText, @PathText)"
            DeleteCommand="DELETE FROM [Environnement] WHERE [Id] = @Id"
            >
            <insertparameters>
                <asp:formparameter name="NameText" formfield="Nametb" />
                <asp:formparameter name="PathText"  formfield="Pathtb" />
            </insertparameters>
            <UpdateParameters>
                <asp:formparameter name="IdText" formfield="Idtb" />
                <asp:formparameter name="PathText" formfield="Pathtb" />
                <asp:formparameter name="NameText"  formfield="Nametb" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
