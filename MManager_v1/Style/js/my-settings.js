
//NO FUNCIONA: para mostrar un textbox para intro numero si se elige el lugar 'habitacion'
document.getElementById("<%=DropDownList2.ClientID %>").addEventListener("click", fucntionToExecuteName, false)

function MostrarOcultarTextbox()
{
    var ddlLugar = document.getElementById("<%=DropDownList2.ClientID%>");
    var txtLugar = document.getElementById("<%=TextBox3.ClientID%>");
    var ddlLugarText = ddlLugar.options[ddlLugar.selectedIndex].text;
    var ddlLugarValue = ddlLugar.options[ddlLugar.selectedIndex].value;
    var txtLugarText = txtLugar.options[txtLugar.selectedIndex].text;
    var txtLugarValue = txtLugar.options[txtLugar.selectedIndex].value;

    if (ddlLugarValue == "Habitaci�n") {
        txtLugar.Visible = true;
        txtLugar.Text = "N�";
    }
    else {
        txtLugar.Visible = false;
    }
}

