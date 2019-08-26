<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="Comparison, App_Web_d1qb3zxq" %>

<asp:Content ID="head" ContentPlaceHolderID="StyleSection" runat="server">
    <style type="text/css">
        body
        {
            font-family: 'Roboto', sans-serif;
        }

        .backimg
        {
            background-image: url("tablestyle/table-images/patternb-head.png");
        }

        .saveBtn
        {
            background: #0094ff none repeat scroll 0 0;
            border: 0 none;
            border-radius: 4px;
            box-shadow: none;
            color: #fff;
            font-family: "Roboto",sans-serif;
            font-size: 16px;
            font-weight: 400;
            height: 30px;
            line-height: 30px;
            margin: 0;
            padding: 0 20px;
            text-shadow: none;
            transition: all 0.3s ease 0s;
            vertical-align: middle;
            -moz-user-select: none;
            cursor: pointer;
            display: inline-block;
            white-space: nowrap;
            width: 50%;
        }

        .txtColor
        {
            color: #4800ff;
        }

        .auto-style1
        {
            width: 185px;
        }

        </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSection" runat="server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>
            <br />
            <br />
            <table style="width: 100%; height: 350px; margin-top: 30px;">

                <tr>
                    <td class="style13" style="vertical-align: top">
                        <table style="width: 88%; height: 30px;">
                            <tr>

                                <td class="auto-style1">
                                     <asp:Label ID="txtAreaCode" ClientIDMode="Static" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" Text="Label" CssClass="txtColor" style="display:none"></asp:Label>
                                    
                           <asp:Label ID="TxtUserName" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13px"
                              CssClass="txtColor" Text="Label"></asp:Label>

                                </td>
                                <td>
                                    <asp:Label ID="lblError" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>

                                </td>
                            </tr>

                        </table>
                        <div class="box1">
                            <fieldset style="width: 220PX; height: 36px;">
                                <legend style="color: white">Monthly Comparison</legend>
                                <table style="width: 110%; margin-top: 5px; height: 127px;">
                                    <tr>

                                        <td class="auto-style4" align="left">

                                            <asp:Label ID="Label1" runat="server" Text="Date :" CssClass="txtColor"></asp:Label><br />


                                        </td>
                                        <td class="auto-style4" align="left">
                                            <asp:TextBox ID="txtdate" runat="server" Width="100px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4" align="left">&nbsp;</td>
                                        <td class="auto-style4" align="left">

                                            <asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click" BackColor="White" ForeColor="Black" />

                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style4" align="left" colspan="2">
                                            <asp:Label ID="lblrst" runat="server" ForeColor="White" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                        </td>
                                    </tr>

                                </table>
                            </fieldset>

                        </div>



                    </td>
                </tr>
                <tr>
                    <td>
                        <div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <input type="button" value="Active All" class="saveBtn" id="btnActiveAll" style="width: 168px; margin-left: 7px; display: none;" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" runat="server">
        <script type="text/javascript">

            $(function () {
                var currentDate = new Date();
                $('#txtdate').datepicker({
                    inline: true,
                    showOtherMonths: false,
                    changeMonth: false,
                    changeYear: false,
                    dateFormat: 'dd/mm/yy'
                }).focus(function () {
                    $(".ui-datepicker-prev, .ui-datepicker-next").remove();
                });
                $("#txtdate").datepicker("setDate", currentDate);
            });
    </script>

</asp:Content>




