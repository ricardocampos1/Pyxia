﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjetoPyxia.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="/css/reset.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <link rel="stylesheet" href="/css/styleHome.css" />
    <%--<link rel="stylesheet" href="/css/bootstrap.min.css" />--%>
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet" />
    <title>Pyxia</title>
    <script type="text/javascript">
        (function (d, m) {

            /*---------------- Kommunicate settings start ----------------*/

            var kommunicateSettings = {
                "appId": "36228526f43171726753233412d214a0d",
                "conversationTitle": "Pyx",
                "botIds": ["pyx"]
            };

            /*----------------- Kommunicate settings end ------------------*/

            var s = document.createElement("script");
            s.type = "text/javascript";
            s.async = true;
            s.src = "https://api.kommunicate.io/kommunicate.app";
            var h = document.getElementsByTagName("head")[0];
            h.appendChild(s);
            window.kommunicate = m;
            m._globals = kommunicateSettings;
        })(document, window.kommunicate || {});
    </script>
</head>
<body>

    <form runat="server" id="formHome">
        <header>
            <div class="container">
                <div class="header_action">
                    <nav>
                        <a href="Home.aspx">
                            <img src="/img/logo_pyxia.png" alt="Logo Pyxia" /></a>
                        <ul class="menu">
                            <li><a href="Home.aspx">Home</a></li>
                            <li><a href="OquePyxia.aspx">O que é Pyxia?</a></li>
                            <li><a href="Fale.aspx">Fale Conosco</a></li>
                            <li><a href="ComoFunciona.aspx">Como Funciona?</a></li>

                        </ul>
                    </nav>
                    <div class="login_action">
                        <asp:TextBox runat="server" type="text" placeholder="Usuário" ID="txtUserLogin" CssClass="field_login" />
                        <asp:TextBox runat="server" type="password" placeholder="Senha" ID="txtPasswordLogin" CssClass="field_login" />
                        <asp:Button Text="Entrar" runat="server" ID="BtnLogin" OnClick="BtnLogin_OnClick" CssClass="button_login" />
                    </div>
                </div>
            </div>
        </header>

        <div class="container">
            <div class="home">
                <section class="content_account">
                    <span>Com um simples account você já pode começar a usar!
                    </span>
                    <asp:TextBox runat="server" type="email" placeholder="E-mail" ID="txtEmailRegister" CssClass="field_register" />
                    <asp:TextBox runat="server" type="text" placeholder="Usuário" ID="txtUserRegister" CssClass="field_register" />
                    <asp:TextBox runat="server" type="password" placeholder="Senha" ID="txtPasswordRegister" CssClass="field_register" />
                    <asp:TextBox runat="server" type="password" placeholder="Confime a senha" ID="txtPasswordConfirmRegister" CssClass="field_register" />
                    <label>Data de Nascimento</label>
                    <asp:TextBox runat="server" type="text" TextMode="Date" ID="txtDateRegister" CssClass="field_register" />
                    <asp:Button Text="Cadastrar" runat="server" ID="BtnUserRegister" OnClick="BtnUserRegister_OnClick" CssClass="button_register" />
                    <span>Pronto! Agora, faça seu login na aplicação e no topo do site</span>
                </section>
                <section class="content_download">
                    <p>A Pyxia surgiu com o desejo de facilitar a vida de quem quer cuidar do seu computador</p>
                    <span>Com gráficos e alertas simples para você só se preocupar com o que realmente importa!</span>
                    <span>Gostou? Para ter tudo isso, basta realizar seu cadastro, instalar nossa aplicação e fazer seu
                        login</span>
                    <a href="file/pyx-1.0.4.jar">Baixar</a>
                    <span>Ficou com alguma dúvida? Acesse <a href="#">aqui</a> um passo a passo ou <a href="Fale.aspx">envie-nos
                            uma mensagem</a></span>
                </section>
            </div>
        </div>
    </form>

</body>
</html>
