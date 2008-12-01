﻿<%@ Page 
    ValidateRequest="false"
    Language="C#" 
    MasterPageFile="~/MasterPage.master" 
    AutoEventWireup="true" 
    CodeFile="Default.aspx.cs" 
    Inherits="_Default" 
    Title="Stacked - Questions and Answer done right!" %>

<%@ Register 
    Assembly="Ra" 
    Namespace="Ra.Widgets" 
    TagPrefix="ra" %>

<%@ Register 
    Assembly="Extensions" 
    Namespace="Ra.Extensions" 
    TagPrefix="ext" %>

<%@ Register 
    src="UserControls/ItemGrid.ascx" 
    tagname="ItemGrid" 
    tagprefix="uc1" %>

<asp:Content 
    ID="cnt" 
    ContentPlaceHolderID="body" 
    Runat="Server">

    <ext:TabControl 
        runat="server" 
        ID="tab" 
        OnActiveTabViewChanged="tabContent_ActiveTabViewChanged"
        CssClass="tab">

        <ext:TabView 
            Caption="Fresh" 
            runat="server" 
            ID="tabNew" 
            CssClass="content">

            <uc1:ItemGrid 
                ID="gridNew" 
                runat="server" />

        </ext:TabView>

        <ext:TabView 
            Caption="Most answers" 
            runat="server" 
            ID="tabMost" 
            CssClass="content">
            
            <uc1:ItemGrid 
                ID="gridMost" 
                runat="server" />

        </ext:TabView>

        <ext:TabView 
            Caption="Unanswered" 
            runat="server" 
            ID="tabUn" 
            CssClass="content">

            <uc1:ItemGrid 
                ID="gridUn" 
                runat="server" />

        </ext:TabView>

        <ext:TabView 
            Caption="Favored by; " 
            runat="server" 
            Visible="false" 
            ID="tabFav" 
            CssClass="content">

            <uc1:ItemGrid 
                ID="gridFav" 
                runat="server" />

        </ext:TabView>

    </ext:TabControl>
    <asp:Label 
        runat="server" 
        ID="lblCount" 
        style="margin-left:25px;font-size:1.1em;font-weight:bold;margin-top:25px;margin-bottom:25px;display:block;"
        Text="Number of users in Stacked: " />

</asp:Content>

