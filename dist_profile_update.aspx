<%@ page language="C#" autoeventwireup="true" inherits="dist_profile_update, App_Web_edp0we5m" %>

<%--<%@ Register Assembly="Infragistics35.WebUI.UltraWebGrid.v10.3, Version=10.3.20103.1013, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb"
    Namespace="Infragistics.WebUI.UltraWebGrid" TagPrefix="igtbl" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>HRMS Page</title>

    <script src="../../JavaScript/jquery.min.js" type="text/javascript"></script>

    <script type="text/javascript">

        $(function () {

            $('#lastpostingdatetxt').datepicker({
                inline: true,
                dateFormat: "dd/mm/yy",

            });
        });
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgPhoto')
                        .attr('src', e.target.result)
                        .width(350)
                        .height(290);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
        function readURLT(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgTrade')
                        .attr('src', e.target.result)
                        .width(350)
                        .height(290);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

    <style type="text/css">
        .igte_EditWithButtons
        {
            font-size: 10px;
            font-family: Segoe UI, Verdana, Arial, Sans-Serif;
            background-color: #FFFFFF;
            height: 20px;
            width: 130px;
            outline: 0;
            border: solid 1px #999999;
        }
        .igte_Inner
        {
            border-width: 0;
        }
        .igte_EditInContainer
        {
            font-size: 12px;
            font-family: Segoe UI, Verdana, Arial, Sans-Serif;
            background-color: Transparent;
            border-width: 0px;
            outline: 0;
        }
        .igte_Button
        {
            background-color: #8EBEE0;
            background-image: url(E:/PRGntSOA_HRMS/HRMS.WEB/ig_res/Default/images/igte_spinbuttonbg.gif);
            background-repeat: repeat-x;
            line-height: normal;
            border: solid 1px #699BC9;
            color: #FFFFFF;
            cursor: pointer;
        }
        .igte_ButtonSize
        {
            width: 15px;
            height: 100%;
        }
        .style69
        {
            height: 6px;
        }
        .style48
        {
            width: 86%;
            height: 57px;
            margin-left: 0px;
        }
        .style49
        {
            text-align: left;
        }
        .style62
        {
            width: 48%;
        }
        .style81
        {
            text-align: left;
            height: 6px;
        }
        .style92
        {
            width: 194px;
        }
        .style95
        {
        }
        .style97
        {
            height: 16px;
        }
        .form_button
        {
            margin-left: 0px;
        }
        .style100
        {
            width: 837px;
        }
        .style102
        {
            text-align: left;
            width: 119px;
        }
        .pos
        {
            text-align: center;
            width: 400px;
        }
        .style104
        {
            width: 88%;
        }
        .style105
        {
            width: 50px;
        }
        .style106
        {
            height: 101px;
        }
        .style94
        {
            text-align: left;
            border: 1px solid White;
            width: 78px;
            height: 8px;
        }
        .style98
        {
            width: 138px;
        }
        .style107
        {
            width: 229px;
        }
        .style109
        {
            width: 216px;
        }
        .style111
        {
            width: 198px;
        }
        .style112
        {
            width: 264px;
        }
        .style113
        {
            width: 100%;
        }
        .style114
        {
            height: 74px;
        }
    </style>
</head>
<body bgcolor="#c0c0c0">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div align="center" style="width: 1109px">
        <table align="center">
            <tr>
                <td class="style92">
                    &nbsp;
                </td>
                <td class="style100">
                    <%--<img src="~/image/header-bgx.jpg" style="width: 857px; height: 78px;" />--%>
                    <img src="images/header-bgx.jpg" style="width: 857px; height: 78px;" />
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="style92">
                    <asp:Label ID="Label92" runat="server" Width="240px"></asp:Label>
                    &nbsp;
                </td>
                <td class="style100">
                    <table align="center" bgcolor="White" style="width: 858px; margin-right: 0px">
                        <tr bgcolor="#33CCFF">
                            <td class="style95" colspan="2" align="center">
                                Basic Informationn
                            </td>
                        </tr>
                        <tr bgcolor="#33CCFF">
                            <td class="style95" colspan="2" align="center">
                                <asp:Label ID="lblMessage" runat="server" BackColor="#8BB3BE" Font-Bold="True" Font-Size="Larger"
                                    ForeColor="#FF0066" Height="28px" Style="text-align: center" Width="531px"></asp:Label>
                            </td>
                        </tr>
                        <tr bgcolor="#D2E9FF" align="center">
                            <td>
                                <table bgcolor="#D2E9FF" class="style94">
                                    <tr>
                                        <td class="style102">
                                            <asp:Label ID="Label121" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Dist.Code"></asp:Label>
                                        </td>
                                        <td class="style97" align="left">
                                            <table class="style62">
                                                <tr>
                                                    <td class="style63">
                                                        <asp:TextBox ID="txtDistId" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                            Font-Bold="True" ForeColor="#003300" Width="103px"></asp:TextBox>
                                                    </td>
                                                    <td width="60px" align="center">
                                                        <asp:Button ID="btnFind" runat="server" OnClick="btnFind_Click1" Font-Bold="True"
                                                            Text="Find" Width="80px" Height="27px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style102">
                                            <asp:Label ID="Label11" runat="server" BorderColor="#CC6699" BorderStyle="None" Font-Bold="True"
                                                Font-Names="Tunga" ForeColor="#003300" Text="Name" Height="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtName" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                Font-Bold="False" ForeColor="#111111" Width="199px" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style102">
                                            <asp:Label ID="Label8" runat="server" BorderColor="#CC6699" BorderStyle="None" Font-Bold="True"
                                                Font-Names="Tunga" ForeColor="#003300" Text="Addr1" Height="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtAddr1" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                Font-Bold="False" ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style102">
                                            <asp:Label ID="Label10" runat="server" BorderColor="#CC6699" BorderStyle="None" Font-Bold="True"
                                                Font-Names="Tunga" ForeColor="#003300" Text="Addr2" Height="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtAddr2" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                Font-Bold="False" ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style102">
                                            <asp:Label ID="Label122" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Addr3" Height="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtAddr3" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                Font-Bold="False" ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style102">
                                            <asp:Label ID="Label59" runat="server" Font-Bold="True" Font-Names="Tunga" ForeColor="#003300"
                                                Text="Addr4" Width="110px" Height="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtAddr4" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                Font-Bold="False" ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style102">
                                            <asp:Label ID="Label75" runat="server" Font-Bold="True" Font-Names="Tunga" ForeColor="#003300"
                                                Text="Group Name" Height="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtGroupName" runat="server" BorderStyle="None" Font-Bold="False"
                                                ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style102">
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td bgcolor="#D2E9FF" class="style106">
                                <table bgcolor="#D2E9FF" class="style94" style="border-style: ">
                                    <tr>
                                        <td style="text-align: left">
                                       <%--     <asp:Button ID="btnEdit" runat="server" Font-Bold="True" OnClick="btnEdit_Click"
                                                Text="Edit" Width="80px" Height="27px" Style="margin-left: 10px" Visible="False" />--%>
                                        </td>
                                        <td style="text-align: left">
                                            <table class="style113">
                                                <tr>
                                                    <td align="center">
                                                        &nbsp;
                                                    </td>
                                                    <td align="right">
                                                        <asp:Button ID="btnLikeSave" runat="server" Font-Bold="True" OnClick="btnLikeSave_Click"
                                                            Text="SAVE" Width="80px" Height="27px" />
                                                        <asp:Button ID="btnSave" runat="server" Font-Bold="True" OnClick="btnSave_Click"
                                                            Text="SAVE" Width="80px" Height="27px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left" bgcolor="#33CCFF">
                                            <asp:Label ID="Label131" runat="server" Font-Bold="True" Font-Names="Tunga" ForeColor="#003300"
                                                Text="Party Status" Height="20px"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:CheckBox ID="CheckBox1" runat="server" BackColor="White" Enabled="False" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left" bgcolor="#33CCFF">
                                            <asp:Label ID="Label132" runat="server" Font-Bold="True" Font-Names="Tunga" ForeColor="#003300"
                                                Text="Party Mobile" Height="20px"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="txtPartyMobileNo" runat="server" BorderStyle="None" Font-Bold="False"
                                                ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left" bgcolor="#33CCFF">
                                            <asp:Label ID="Label133" runat="server" Font-Bold="True" Font-Names="Tunga" ForeColor="#003300"
                                                Text="ZM Mobile" Height="20px"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="txtZmMobileNo" runat="server" BorderStyle="None" Font-Bold="False"
                                                ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left">
                                            <asp:Label ID="Label73" runat="server" Font-Bold="True" ForeColor="#003300" Text="Type"
                                                Font-Names="Tunga" Height="20px"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="txtType" runat="server" BorderStyle="None" Font-Bold="False" ForeColor="#111111"
                                                Width="200px" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left">
                                            <asp:Label ID="Label130" runat="server" Font-Bold="True" ForeColor="#003300" Text="Type Name"
                                                Font-Names="Tunga" Height="20px"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="txtTypeNa" runat="server" BorderStyle="None" Font-Bold="False" ForeColor="#111111"
                                                Width="200px" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style49">
                                            <asp:Label ID="Label38" runat="server" Font-Bold="True" ForeColor="#003300" Text="Region"
                                                Width="103px" Font-Names="Tunga" Height="20px"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="txtRegion" runat="server" BorderStyle="None" Font-Bold="False" ForeColor="#111111"
                                                Width="200px" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style49">
                                            <asp:Label ID="Label129" runat="server" Font-Bold="True" ForeColor="#003300" Text="Zone"
                                                Font-Names="Tunga" Height="20px"></asp:Label>
                                        </td>
                                        <td style="text-align: left" align="center">
                                            <asp:TextBox ID="txtZone" runat="server" BorderStyle="None" Font-Bold="False" ForeColor="#111111"
                                                Width="200px" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr bgcolor="#D2E9FF">
                            <td class="style114" colspan="2">
                                <table bgcolor="#D2E9FF" class="style48" align="center">
                                    <tr>
                                        <td>
                                        </td>
                                        <td style="text-align: left" height="30" class="style112">
                                            Father&#39;s Name:
                                        </td>
                                        <td style="text-align: left" height="30" class="style109">
                                            <asp:TextBox ID="txtFatherName" runat="server" BorderStyle="None" Font-Bold="False"
                                                ForeColor="#111111" Width="150px" Height="25px"></asp:TextBox>
                                        </td>
                                        <td style="text-align: left" height="30" align="center" class="style111">
                                            National ID:
                                        </td>
                                        <td style="text-align: left" class="style107">
                                            <asp:TextBox ID="txtNationalId" runat="server" BorderStyle="None" Font-Bold="False"
                                                ForeColor="#111111" Width="150px" Height="25px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label134" runat="server" Width="135px"></asp:Label>
                                        </td>
                                        <td style="text-align: left" height="30" class="style112">
                                            Mother&#39;s Name:
                                        </td>
                                        <td style="text-align: left" height="30" class="style109">
                                            <asp:TextBox ID="txtMotherName" runat="server" BorderStyle="None" Font-Bold="False"
                                                ForeColor="#111111" Width="150px" Height="25px"></asp:TextBox>
                                        </td>
                                        <td style="text-align: left" height="20" align="center" class="style111">
                                            Trade License:
                                        </td>
                                        <td style="text-align: left" class="style107">
                                            <asp:TextBox ID="txtTradeLicense" runat="server" BorderStyle="None" Font-Bold="False"
                                                ForeColor="#111111" Width="150px" Height="25px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td style="text-align: left" height="30" class="style112">
                                            Email:
                                        </td>
                                        <td style="text-align: left" height="30" class="style109">
                                            <asp:TextBox ID="txtEmailAddress" runat="server" BorderStyle="None" Font-Bold="False"
                                                ForeColor="#111111" Width="150px" Height="25px">
                                            </asp:TextBox>
                                        </td>
                                        <asp:Panel ID="Panel1" runat="server">
                                            <td style="text-align: left" height="20" align="center" class="style111">
                                                <asp:Label ID="Label138" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                    Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Dist.Code"></asp:Label>
                                            </td>
                                            <td style="text-align: left" class="style107">
                                                <table class="style113">
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtLikeDistId" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                                Font-Bold="True" ForeColor="#003300" Width="95px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="btnLike" runat="server" Font-Bold="True" OnClick="btnLike_Click"
                                                                Text="Find" Width="80px" Height="27px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </asp:Panel>
                                    </tr>
                                    <tr>
                                        <td colspan="5" align="right">
                                            <asp:Label ID="Labelmsg" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <tr bgcolor="#D2E9FF" align="center">
                                    <asp:Panel ID="Panel4" runat="server">
                                        <td>
                                            <table bgcolor="#D2E9FF" class="style94">
                                                <tr>
                                                    <td class="style102">
                                                        <asp:Label ID="Label2" runat="server" BorderColor="#CC6699" BorderStyle="None" Font-Bold="True"
                                                            Font-Names="Tunga" ForeColor="#003300" Text="Name" Height="20px"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtNameL" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                            Font-Bold="False" ForeColor="#111111" Width="199px" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style102">
                                                        <asp:Label ID="Label3" runat="server" BorderColor="#CC6699" BorderStyle="None" Font-Bold="True"
                                                            Font-Names="Tunga" ForeColor="#003300" Text="Addr1" Height="20px"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtAddr1L" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                            Font-Bold="False" ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style102">
                                                        <asp:Label ID="Label4" runat="server" BorderColor="#CC6699" BorderStyle="None" Font-Bold="True"
                                                            Font-Names="Tunga" ForeColor="#003300" Text="Addr2" Height="20px"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtAddr2L" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                            Font-Bold="False" ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style102">
                                                        <asp:Label ID="Label5" runat="server" BorderColor="#CC6699" BorderStyle="None" Font-Bold="True"
                                                            Font-Names="Tunga" ForeColor="#003300" Text="Addr3" Height="20px"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtAddr3L" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                            Font-Bold="False" ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style102">
                                                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Tunga" ForeColor="#003300"
                                                            Text="Addr4" Width="110px" Height="20px"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtAddr4L" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                            Font-Bold="False" ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style102">
                                                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Tunga" ForeColor="#003300"
                                                            Text="Group Name" Height="20px"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtGroupNameL" runat="server" BorderStyle="None" Font-Bold="False"
                                                            ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style102">
                                                        &nbsp;
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td bgcolor="#D2E9FF" class="style106">
                                            <table bgcolor="#D2E9FF" class="style94" style="border-style: ">
                                                <tr>
                                                    <td style="text-align: left" bgcolor="#33CCFF">
                                                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Tunga" ForeColor="#003300"
                                                            Text="Party Status" Height="20px"></asp:Label>
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:CheckBox ID="CheckBox2" runat="server" BackColor="White" Enabled="False" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left" bgcolor="#33CCFF">
                                                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Tunga" ForeColor="#003300"
                                                            Text="Party Mobile" Height="20px"></asp:Label>
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="txtPartyMobileNoL" runat="server" BorderStyle="None" Font-Bold="False"
                                                            ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left" bgcolor="#33CCFF">
                                                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Tunga" ForeColor="#003300"
                                                            Text="ZM Mobile" Height="20px"></asp:Label>
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="txtZMMobileNoL" runat="server" BorderStyle="None" Font-Bold="False"
                                                            ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left">
                                                        <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="#003300" Text="Type"
                                                            Font-Names="Tunga" Height="20px"></asp:Label>
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="txtTypeL" runat="server" BorderStyle="None" Font-Bold="False" ForeColor="#111111"
                                                            Width="200px" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: left">
                                                        <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="#003300" Text="Type Name"
                                                            Font-Names="Tunga" Height="20px"></asp:Label>
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="txtTypeNameL" runat="server" BorderStyle="None" Font-Bold="False"
                                                            ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style49">
                                                        <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="#003300" Text="Region"
                                                            Width="103px" Font-Names="Tunga" Height="20px"></asp:Label>
                                                    </td>
                                                    <td style="text-align: left">
                                                        <asp:TextBox ID="txtRegionL" runat="server" BorderStyle="None" Font-Bold="False"
                                                            ForeColor="#111111" Width="200px" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style49">
                                                        <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="#003300" Text="Zone"
                                                            Font-Names="Tunga" Height="20px"></asp:Label>
                                                    </td>
                                                    <td style="text-align: left" align="center">
                                                        <asp:TextBox ID="txtZoneL" runat="server" BorderStyle="None" Font-Bold="False" ForeColor="#111111"
                                                            Width="200px" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                </tr>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr bgcolor="#33CCFF">
                            <td class="style95" colspan="2" align="center">
                                Upload Scan Copy
                            </td>
                        </tr>
                        <tr bgcolor="#33CCFF">
                            <td class="style95" colspan="2" bgcolor="#D2E9FF" align="center">
                                <table class="style104">
                                    <tr>
                                        <td align="center">
                                            <asp:Label ID="Label136" runat="server" Text="Distributor Opening Copy" ForeColor="#009900"></asp:Label>
                                        </td>
                                        <td class="style105">
                                            &nbsp;
                                        </td>
                                        <td align="center">
                                            <asp:Label ID="Label137" runat="server" ForeColor="#009900" Text="Trade License"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <table class="style104">
                                                <tr>
                                                    <td style="text-align: left" align="center">
                                                        <%--<asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Inset" Width="221px" />--%>
                                                    </td>
                                                    <td>
                                                        <%--    <asp:Button ID="btnUploadScan" runat="server" CausesValidation="false" CssClass="form_button"
                                                            OnClick="btnUploadScan_Click" Text="Upload" Width="75px" />--%>
                                                        <asp:FileUpload ID="FileUpload1" runat="server" Height="24px" Width="214px" onchange="readURL(this);" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td class="style105">
                                            &nbsp;
                                        </td>
                                        <td>
                                            <table class="style104">
                                                <tr>
                                                    <td style="text-align: left" align="center">
                                                        <%--     <asp:FileUpload ID="fileTrade" runat="server" BorderStyle="Inset" Width="221px" />--%>
                                                    </td>
                                                    <td>
                                                        <%--      <asp:Button ID="btnUploadTradeLicense" runat="server" CausesValidation="false" CssClass="form_button"
                                                            OnClick="btnUploadTradeLicense_Click" Text="Upload" Width="75px" />--%>
                                                        <asp:FileUpload ID="fileTrade" runat="server" Height="24px" Width="214px" onchange="readURLT(this);" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgPhoto" runat="server" Height="290px" Width="350px" Visible="true"
                                                BorderWidth="2px" BorderColor="Black" BorderStyle="Dotted" Style="margin-left: 0px" />
                                            <%--                                                       <asp:Image ID="imgApplication" Height="200px" 
                                                Width="300px"  Visible="true" 
               BorderWidth="2px" BorderColor="Black" BorderStyle="Dotted" style="margin-left: 0px" runat="server" />   --%>
                                        </td>
                                        <td class="style105">
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:Image ID="imgTrade" runat="server" Height="290px" Width="350px" Visible="true"
                                                BorderWidth="2px" BorderColor="Black" BorderStyle="Dotted" Style="margin-left: 0px" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </td>
                        </tr>
                        <tr bgcolor="#33CCFF">
                            <td class="style95" colspan="2" bgcolor="#D2E9FF" align="center">
                                <table class="style94">
                                    <tr>
                                        <td class="style98">
                                            <asp:Label ID="Label107" runat="server" Font-Bold="True" ForeColor="#669999" Text="Name"></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:TextBox ID="txtStaffName" runat="server" BorderStyle="Dotted" ForeColor="#669999"
                                                Width="225px" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtStaffId" runat="server" ForeColor="#669999" BorderStyle="Dotted"
                                                Enabled="False" Width="83px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label57" runat="server" Font-Bold="True" ForeColor="#669999" Text="Department"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtDept" runat="server" BorderStyle="Dotted" ForeColor="#669999"
                                                Width="183px" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style98">
                                            <asp:Label ID="Label108" runat="server" Font-Bold="True" ForeColor="#669999" Text="Designation"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtDesignation" runat="server" BorderStyle="Dotted" ForeColor="#669999"
                                                Width="193px" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style98">
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:Label ID="Label109" runat="server" Font-Bold="True" ForeColor="#669999" Text="Email"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtEmail" runat="server" BorderStyle="Dotted" ForeColor="#669999"
                                                Width="189px" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr bgcolor="#D2E9FF">
                            <td class="style95">
                                <asp:Panel ID="Panel2" runat="server" Visible="False">
                                    <table bgcolor="#D2E9FF" class="style48" style="border-style: dotted">
                                        <tr>
                                            <td style="text-align: left" colspan="2">
                                                <asp:Label ID="Label60" runat="server" BackColor="#000099" BorderColor="#0000CC"
                                                    BorderStyle="Outset" Font-Bold="True" ForeColor="White" Style="text-align: left"
                                                    Text="Present Address Information" Width="230px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                <asp:Label ID="Label31" runat="server" BorderColor="#CC6699" BorderStyle="None" Font-Bold="True"
                                                    Font-Names="Tunga" ForeColor="#003300" Height="19px" Text="House No#" Width="87px"></asp:Label>
                                            </td>
                                            <td>
                                                <table class="style62">
                                                    <tr>
                                                        <td style="text-align: left">
                                                            <asp:TextBox ID="txtPrsnHhoneNo" runat="server" BorderStyle="None" Font-Bold="True"
                                                                ForeColor="#003300" Width="200px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left">
                                                <asp:Label ID="Label33" runat="server" BorderColor="#CC6699" BorderStyle="None" Font-Bold="True"
                                                    Font-Names="Tunga" ForeColor="#003300" Text="Road"></asp:Label>
                                            </td>
                                            <td>
                                                <table class="style62">
                                                    <tr>
                                                        <td style="text-align: left">
                                                            <asp:TextBox ID="txtPrsnRoadNo" runat="server" BorderStyle="None" Font-Bold="True"
                                                                ForeColor="#003300" Width="200px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                <asp:Label ID="Label30" runat="server" BorderColor="#CC6699" BorderStyle="None" Font-Bold="True"
                                                    Font-Names="Tunga" ForeColor="#003300" Text="Post Office"></asp:Label>
                                            </td>
                                            <td style="text-align: left">
                                                <asp:TextBox ID="txtPrsnPO" runat="server" BorderStyle="None" Font-Bold="True" ForeColor="#003300"
                                                    Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style81">
                                                <asp:Label ID="Label32" runat="server" BorderColor="#CC6699" BorderStyle="None" Font-Bold="True"
                                                    Font-Names="Tunga" ForeColor="#003300" Text="Police Station"></asp:Label>
                                            </td>
                                            <td style="text-align: left" class="style69">
                                                <asp:TextBox ID="txtPrsnPS" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                    Font-Bold="True" ForeColor="#003300" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                <asp:Label ID="Label62" runat="server" BorderColor="#CC6699" BorderStyle="None" Font-Bold="True"
                                                    Font-Names="Tunga" ForeColor="#003300" Text="District"></asp:Label>
                                            </td>
                                            <td style="text-align: left">
                                                <asp:TextBox ID="txtPrsnDistrict" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                    Font-Bold="True" ForeColor="#003300" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Names="Tunga" ForeColor="#003300"
                                                    Text="Spouse Name" Width="98px" Height="24px"></asp:Label>
                                            </td>
                                            <td style="text-align: left">
                                                <asp:TextBox ID="txtSpouseName" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                    Font-Bold="True" ForeColor="#003300" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="Panel3" runat="server" Visible="False">
                                    <table bgcolor="#D2E9FF" class="style48" style="border-style: dotted">
                                        <tr>
                                            <td style="text-align: left" colspan="2">
                                                <asp:Label ID="Label123" runat="server" BackColor="#000099" BorderColor="#0000CC"
                                                    BorderStyle="Outset" Font-Bold="True" ForeColor="White" Style="text-align: left"
                                                    Text="Permanent Address Information" Width="230px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                <asp:Label ID="Label124" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                    Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Height="19px" Text="House No#"
                                                    Width="87px"></asp:Label>
                                            </td>
                                            <td>
                                                <table class="style62">
                                                    <tr>
                                                        <td style="text-align: left">
                                                            <asp:TextBox ID="txtPemntHhoneNo" runat="server" BorderStyle="None" Font-Bold="True"
                                                                ForeColor="#003300" Width="200px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left">
                                                <asp:Label ID="Label125" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                    Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Road"></asp:Label>
                                            </td>
                                            <td>
                                                <table class="style62">
                                                    <tr>
                                                        <td style="text-align: left">
                                                            <asp:TextBox ID="txtPemntRoadNo" runat="server" BorderStyle="None" Font-Bold="True"
                                                                ForeColor="#003300" Width="200px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                <asp:Label ID="Label126" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                    Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Post Office"></asp:Label>
                                            </td>
                                            <td style="text-align: left">
                                                <asp:TextBox ID="txtPemntPO" runat="server" BorderStyle="None" Font-Bold="True" ForeColor="#003300"
                                                    Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style81">
                                                <asp:Label ID="Label127" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                    Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Police Station"></asp:Label>
                                            </td>
                                            <td style="text-align: left" class="style69">
                                                <asp:TextBox ID="txtPemntPS" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                    Font-Bold="True" ForeColor="#003300" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                <asp:Label ID="Label128" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                    Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="District"></asp:Label>
                                            </td>
                                            <td style="text-align: left">
                                                <asp:TextBox ID="txtPemntDistrict" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                    Font-Bold="True" ForeColor="#003300" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                &nbsp;
                                            </td>
                                            <td style="text-align: left">
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <asp:Label ID="Label93" runat="server" Width="120px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style92">
                    &nbsp;
                </td>
                <td class="style100">
                 <%--   <img src="../image/footer-bg.jpg" style="width: 857px" />--%>
                    <img src="images/footer-bg.jpg" style="width: 857px" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
