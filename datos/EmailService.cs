using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Net;


namespace controlador
{
    public class EmailService
    {
        private MailMessage email;
        private SmtpClient server;

        public EmailService()
        {
            server = new SmtpClient();
            server.Credentials = new NetworkCredential("aeternum215@gmail.com", "glrx yckv icne aprr");
            server.EnableSsl = true;
            server.Port = 587;
            server.Host = "smtp.gmail.com";
        }

        public void armarCorreo(string emailDestino, string asunto, string cuerpo)
        {
            email = new MailMessage();
            email.From = new MailAddress("noresponder@catalogoweb.com");
            email.To.Add(emailDestino);
            email.Subject = asunto;
            email.IsBodyHtml = true;
            email.Body =
                         cuerpo + "<br/>" + "Ofrecemos remeras de calidad, tanto personalizadas como lisas, para que encuentres tu estilo perfecto. 😎 Consultas: 👇🏼<br/>" +
                         "<hr/>" +
                         "<a href='https://www.instagram.com/aeternum_posadas/'>INSTAGRAM</a>" + "<hr/>" +
                         "<a href='https://wa.me/c/5493757621292'>WHATSAPP</a>" + "<hr/>" +
                         "<a href='https://l.wl.co/l?u=https%3A%2F%2Fwww.facebook.com%2Fprofile.php%3Fid%3D61551133388228'>FACEBOOK</a>" + "<hr/>";
            email.Body += "<br/><div style='text-align:center;'><img src='https://scontent.fpss1-1.fna.fbcdn.net/v/t39.30808-6/380886340_122106750320037779_5190185190037284200_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFovry4ZNR4TSPBQQ214I04uv8Kqgr7T066_wqqCvtPTm9ggm7Rqf4brWvGw1LDRhWDPJMRQwov4pD-d086Xs7r&_nc_ohc=Z8VL_mfxPLoAX_56DZq&_nc_ht=scontent.fpss1-1.fna&oh=00_AfDNt9lHZ_sM1VZ05LL89O5teZbl6_0BM5TXfbk7GifFaw&oe=6560B793' alt='Logo Aeternum' style='display:block; margin:auto;'></div>";

        }

        public void enviarEmail()
        {
            try
            {
                server.Send(email);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
