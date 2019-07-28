<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmtst.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script language="javascript">
       function reFresh() {
           document.getElementById("Button1").click();
       }
       window.setInterval("reFresh()", 144000);
   </script>
    <div class="row">
				<div class="col-sm-12">
					
						<div class="form-group">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
						</div>
						<div class="form-group pull-right">
							<div class="input-group">
							  <h3 class="tstSize right0 testTime" for="inlineFormInputGroup">
                                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                      <ContentTemplate>
                                      <asp:Label ID="Label1" runat="server"></asp:Label>&nbsp;Minutes Remaining
                                      <asp:Timer runat="server"  OnTick="Unnamed1_Tick"></asp:Timer>
                                     </ContentTemplate>
                                  </asp:UpdatePanel>

                                     </h3>
							</div>
						</div>
					
				</div>

			</div>
    <div class="row">
				<div class="col-sm-12">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="632px">

                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="form-group">
							<div class="control-group">
                                <h3><%#Eval("qstdsc") %></h3>
                                <asp:RadioButtonList ID="r1" runat="server" DataSource=<%#getans(Convert.ToInt32(Eval("qstcod"))) %> DataTextField="ansdsc"
                                    DataValueField="anssts" Height="16px" RepeatColumns="2" RepeatDirection="Horizontal" Width="924px"/>
                                </div></div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                      <asp:Button ID="Button1" runat="server" Text="Submit"
                        CssClass="btn btn-default btnSend bottom30" OnClick="Button1_Click" />
                    </div></div>
</asp:Content>

