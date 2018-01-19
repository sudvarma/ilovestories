	var MyBall = function(canvas,context,color,ballSpeed)
	{
		this.c = canvas;
		this.ctx = context;
		this.color = color;
		this.ballSpeed = ballSpeed;
		this.ballIncrement = 0.0;
		this.x = -1;
		this.y = -1;
		this.state=0;
		this.curveProfile = null;
		this.ballImage = new Image();
		this.ballImage.onload = function(data)
		{
		    context.drawImage(this.ballImage,this.x,this.y);
		};
		this.ballImage.src=getImageSrc(color);

	}

	MyBall.prototype.isRunningState = function()
	{
		if(this.state == 1)
			return true;
		else
			return false;
	};

	MyBall.prototype.setRunningState = function()
	{
		this.state = 1;
	};

	MyBall.prototype.setSpeed = function(speed)
	{
		this.ballSpeed = speed;
	};

	MyBall.prototype.getSpeed = function()
	{
		return this.ballSpeed;
	};

	MyBall.prototype.setCoordinates = function(x,y)
	{
		this.x = Math.floor(x);
		this.y = Math.floor(y);
	};

	MyBall.prototype.getCoordinates = function()
	{
		return new CurvePoint(this.x,this.y);
	};

	MyBall.prototype.getProfile = function()
	{
		return this.curveProfile;
	};

	MyBall.prototype.setProfile = function(curveProfile)
	{
		this.curveProfile = curveProfile;
		this.ballIncrement = 0;
	};

	MyBall.prototype.draw = function()
	{

		if(this.curveProfile)
		{
			ctx.beginPath();
			var point = this.curveProfile.getCurvePoint(this.ballIncrement);
			this.x = Math.floor(point.getX());
			this.y = Math.floor(point.getY());
			ctx.drawImage(this.ballImage,this.x,this.y);
			ctx.closePath();
			this.ballIncrement += ballSpeed;
		}
	};

	MyBall.prototype.drawStatic = function()
	{
			ctx.beginPath();
			ctx.drawImage(this.ballImage,this.x,this.y);
			ctx.closePath();
			this.ballIncrement += ballSpeed;
	};

	function getImageSrc(color)
	{
		if(color=="red")
			return "images/red_ball.png";
		else if(color=="green")
			return "images/green_ball.png";
		else if(color=="blue")
			return "images/blue_ball.png";
		else if(color=="brown")
			return "images/brown_ball.png";
		else if(color=="yellow")
			return "images/yellow_ball.png";
		else
			return "images/red_ball.png";
	}


