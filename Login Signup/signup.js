function onButtonClickshow(){
    document.getElementById('output').className="show";
  }
  function onButtonClickvalid()
  {    
    var mailflg=0;
    var pswrdsymbol=0;
    var pswrdnmbr=0;
    var pswrdhc=0;
    var pswrdlc=0;
    var fnameflg=0;
    var lnameflg=0;
    var x=document.getElementById('email').value; 
    var y=document.getElementById('password').value;
    var z=document.getElementById('fname').value;
    var k=document.getElementById('lname').value;
    for(i=0;i<x.length;i++)
    {
      if(x[i]=="@")
      {
          mailflg++;  //makesure mail include @
      }
    }
    if ( x[x.length -1]!="m" &&x[x.length -2]!="o"&&x[x.length -3]!="c" &&x[x.length -4]!="." || mailflg==0)
    {
        alert("please enter valid mail ") 
        return false;    //makesure mail has .com at its end
    }
    for(i=0;i<z.length;i++)
    {
              if(z[i]=="1" ||z[i]=="2" ||z[i]=="3" ||z[i]=="4" ||z[i]=="5" ||z[i]=="6" ||z[i]=="7" ||z[i]=="8" ||
              z[i]=="9" ||z[i]=="!" ||z[i]=="@" ||z[i]=="#" ||z[i]=="$" ||z[i]=="%" ||z[i]=="^" ||z[i]=="&" ||
              z[i]=="*" ||z[i]=="(" ||z[i]==")" ||z[i]=="_" ||z[i]=="-" ||z[i]=="+" ||z[i]=="=" ||z[i]=="[" ||
              z[i]=="[" ||z[i]=="{" ||z[i]=="}" ||z[i]=="'" ||z[i]==":" ||z[i]==";" ||z[i]=="\\" ||z[i]=="|" ||
              z[i]=="/" ||z[i]=="`" ||z[i]=="~" ||z[i]=="?" ||z[i]=="." ||z[i]==","||z[i]=="0" )
      {
        fnameflg=-1;			//makesure fname doesnt include nos and signs
      }
    }
    for(i=0;i<k.length;i++)
    {
              if(k[i]=="1" ||k[i]=="2" ||k[i]=="3" ||k[i]=="4" ||k[i]=="5" ||k[i]=="6" ||k[i]=="7" ||k[i]=="8" ||
              k[i]=="9" ||k[i]=="!" ||k[i]=="@" ||k[i]=="#" ||k[i]=="$" ||k[i]=="%" ||k[i]=="^" ||k[i]=="&" ||
              k[i]=="*" ||k[i]=="(" ||k[i]==")" ||k[i]=="_" ||k[i]=="-" ||k[i]=="+" ||k[i]=="=" ||k[i]=="[" ||
              k[i]=="[" ||k[i]=="{" ||k[i]=="}" ||k[i]=="'" ||k[i]==":" ||k[i]==";" ||k[i]=="\\" ||k[i]=="|" ||
              k[i]=="/" ||k[i]=="`" ||k[i]=="~" ||k[i]=="?" ||k[i]=="." ||k[i]==","||k[i]=="0" )
      {
        lnameflg=-11111;  		//makesure lname doesnt include nos and signs
      }
    }
    for(i=0;i<y.length;i++)
    {
                  if(y[i]=="!" ||y[i]=="@" ||y[i]=="#" ||y[i]=="$" ||y[i]=="%" ||y[i]=="^" ||y[i]=="&" ||
                  y[i]=="*" ||y[i]=="(" ||y[i]==")" ||y[i]=="_" ||y[i]=="-" ||y[i]=="+" ||y[i]=="=" ||y[i]=="[" ||
                  y[i]=="[" ||y[i]=="{" ||y[i]=="}" ||y[i]=="'" ||y[i]==":" ||y[i]==";" ||y[i]=="\\" ||y[i]=="|" ||
                  y[i]=="/" ||y[i]=="`" ||y[i]=="~" ||y[i]=="?" ||y[i]=="." ||y[i]==",")
                  {
                    pswrdsymbol++;				//makesure pswrd contain atleast 1 symbol
                  } 
    }
    for(i=0;i<y.length;i++)
    {
                  if(y[i]=="1" ||y[i]=="2" ||y[i]=="3" ||y[i]=="4" ||y[i]=="5" 
                  ||y[i]=="6" ||y[i]=="7" ||y[i]=="8" ||y[i]=="9" ||y[i]=="0")
                  {
                    pswrdnmbr++;				//makesure pswrd contain atleast 1 nmbr
                  } 
    }
    for(i=0;i<y.length;i++)
    {
                  if(y[i]=="q" ||y[i]=="w" ||y[i]=="e" ||y[i]=="r" ||y[i]=="t" 
                  ||y[i]=="p" ||y[i]=="o" ||y[i]=="i" ||y[i]=="u" ||y[i]=="y"||
                  y[i]=="a" ||y[i]=="s" ||y[i]=="d" ||y[i]=="f" ||y[i]=="g" 
                  ||y[i]=="z" ||y[i]=="l" ||y[i]=="k" ||y[i]=="j" ||y[i]=="h"||
                  y[i]=="x" ||y[i]=="c" ||y[i]=="v" ||y[i]=="b" ||y[i]=="n" 
                  ||y[i]=="m")
                  {
                    pswrdlc++;				//makesure pswrd contain atleast 1 lowercase
                  } 
    }
    for(i=0;i<y.length;i++)
    {
                  if(y[i]=="Q" ||y[i]=="W" ||y[i]=="E" ||y[i]=="R" ||y[i]=="T" 
                  ||y[i]=="P" ||y[i]=="O" ||y[i]=="I" ||y[i]=="U" ||y[i]=="Y"||
                  y[i]=="A" ||y[i]=="S" ||y[i]=="D" ||y[i]=="F" ||y[i]=="G" 
                  ||y[i]=="Z" ||y[i]=="L" ||y[i]=="K" ||y[i]=="J" ||y[i]=="H"||
                  y[i]=="X" ||y[i]=="C" ||y[i]=="V" ||y[i]=="B" ||y[i]=="N" 
                  ||y[i]=="M")
                  {
                    pswrdhc++;					//makesure pswrd contain atleast 1 highercase
                  } 
    }
    if(y.length<12)
    {
      alert("Your password must have At least 12 characters")
      return false;
    }
    if(pswrdhc==0)
    {
      alert("Your password must have 1 higher case letter")
      return false;
    }
    if(pswrdlc==0)
    {
      alert("Your password must have 1 lowercase letter")
      return false;
    }
    if(pswrdsymbol==0)
    {
      alert("password must have 1 symbol")
      return false;
    }
    if(pswrdnmbr==0)
    {
      alert("password must have 1 number")
      return false;
    }
    if(fnameflg==-1)
    {
      alert("please write proper first name ")
      return false;
    }
    if(lnameflg==-11111)
    {
      alert("please write proper last name ")
      return false;
    }
  }                 