function onButtonClickvalid()
{    
  var mailflg=0;
  var x=document.getElementById('email').value; 
  for(i=0;i<x.length;i++)
  {
    if(x[i]=="@")
    {
        mailflg++;   //makesure mail include @
    }
  }
  if ( x[x.length -1]!="m" &&x[x.length -2]!="o"&&x[x.length -3]!="c" &&x[x.length -4]!="." || flga==0)
  {
      alert("please enter valid mail ")       //makesure mail has .com at its end
      return false;
  }
}
