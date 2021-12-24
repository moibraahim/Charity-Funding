function onButtonClickvalid() 
{
                var flag=0;
                var user = document.getElementById("username").value; 
                var user2 = document.getElementById("username");                              
                var eml=document.getElementById("mail").value;
                var eml2 = document.getElementById("mail");                                   
                var pass=document.getElementById("pswrd").value;                              
                var pass2=document.getElementById("pswrd");                                
                var letters = /^[A-Za-z]+$/;
                var ml = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                var ps=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
                if(eml.match(ml) && pass.match(ps) && user.match(letters))
                {
                    return true;
                }
                else{
                        if(!eml.match(ml))
                        {
                            alert("mail must contain '@' and '.'");                            
                            eml2.style.border = "red solid 3px";      
                        }
                        if(!user.match(ml))
                        {
                            alert("Username must have alphabet characters only"); 
                            user2.style.border = "red solid 3px";      
                        }
                        if(!pass.match(ml))
                        {
                            alert("password must contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character");
                            pass2.style.border = "red solid 3px";      
                        }
                        return false
                }
 }
