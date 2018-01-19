	var MyCursor = function(canvas,context)
	{
		this.c = canvas;
		this.ctx = context;
		this.x = 0;
		this.y = 0;
		this.color = "red";
		this.radius = 5;
		this.xangle = 0;
		this.yangle = Math.PI/2;
	}

	function drawCursor(cusorObj)
	{
		var lineLength = 2 * cusorObj.radius;

		var startHX = cusorObj.x - lineLength * Math.cos(cusorObj.xangle);
		var startHY = cusorObj.y - lineLength * Math.sin(cusorObj.xangle);

		var endHX = cusorObj.x + lineLength * Math.cos(cusorObj.xangle);
		var endHY = cusorObj.y + lineLength * Math.sin(cusorObj.xangle);

		drawLine(cusorObj,startHX,startHY,endHX,endHY,"#000000");

		var startVX = cusorObj.x - lineLength * Math.cos(cusorObj.yangle);
		var startVY = cusorObj.y - lineLength * Math.sin(cusorObj.yangle);

		var endVX = cusorObj.x + lineLength * Math.cos(cusorObj.yangle);
		var endVY = cusorObj.y + lineLength * Math.sin(cusorObj.yangle);

		drawLine(cusorObj,startVX,startVY,endVX,endVY,"#000000");

		drawCircle(cusorObj,cusorObj.x,cusorObj.y,cusorObj.radius,cusorObj.color);

		drawCircle(cusorObj,cusorObj.x,cusorObj.y,cusorObj.radius/2,"white");
	}

	function drawCircle(cusorObj,centreX,centreY,radius,fillColor)
	{
		cusorObj.ctx.beginPath();
		cusorObj.ctx.arc(centreX,centreY,radius,0,2 * Math.PI);
		cusorObj.ctx.fillStyle = fillColor;
		cusorObj.ctx.fill();
		cusorObj.ctx.closePath();
	}

	function drawLine(cusorObj,startX, startY, endX, endY,color)
	{
		cusorObj.ctx.beginPath();
		cusorObj.ctx.moveTo(startX,startY);
		cusorObj.ctx.lineTo(endX,endY);
		cusorObj.ctx.strokeStyle = color;
		cusorObj.ctx.stroke();
		cusorObj.ctx.closePath();
	}


