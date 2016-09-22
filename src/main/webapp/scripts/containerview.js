
function renderAnimation( targetNum, pausePeriod )
{
  var loop;	
	
  for( loop = 1; loop < 11; loop++ )
  {
    targetElement = document.getElementById("m" + loop );

    targetElement.className = "messageDefault";
  }

  targetElement = document.getElementById( "m" + targetNum );

  targetElement.className = "messageHighlight";

  targetNum++;

  if( targetNum == 11 ) targetNum = 1;

  setTimeout( "renderAnimation(" + targetNum + "," + pausePeriod + ");", pausePeriod );
}

function switchState( target )
{
  targetElement = document.getElementById( target );

  targetElement.style.display = ( targetElement.style.display == "block" ? "none" : "block" );
}



