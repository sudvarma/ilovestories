var MyCurve = function(canvas,context,
					   startX,startY,
					   firstControlPointX, firstControlPointY,
					   secondControlPointX,secondControlPointY,
					   endX,endY)
	{
		this.c = canvas;
		this.ctx = context;
		this.startX = startX;
		this.startY = startY;
		this.firstControlPointX = firstControlPointX;
		this.firstControlPointY = firstControlPointY;
		this.secondControlPointX = secondControlPointX;
		this.secondControlPointY = secondControlPointY;
		this.endX = endX;
		this.endY = endY;
		this.clockwise=true;
	}

	MyCurve.prototype.isClockwise = function()
	{
		return this.clockwise;
	}

	MyCurve.prototype.getCurvePoint = function(t)
	{
		var B0_st = ((1-t) * (1-t) * (1-t));
		var B1_st = (3 * t * ((1-t) * (1-t)));
		var B2_st = (3 * (t * t) * (1-t));
		var B3_st = (t * t * t);

		var x =  (B0_st * this.startX) + (B1_st * this.firstControlPointX) + (B2_st * this.secondControlPointX) + (B3_st * this.endX);

		var y =  (B0_st * this.startY) + (B1_st * this.firstControlPointY) + (B2_st * this.secondControlPointY) + (B3_st * this.endY);

		point = new CurvePoint(x,y);
		return point;
	};

	MyCurve.prototype.swapStartEnd = function()
	{
		//swap start and end -- small
		var tempStartX = this.startX;
		var tempStartY = this.startY;
		this.startX = this.endX;
		this.startY = this.endY;
		this.endX = tempStartX;
		this.endY = tempStartY;

		//swap control points
		var tempControlX = this.firstControlPointX;
		var tempControlY = this.firstControlPointY;
		this.firstControlPointX = this.secondControlPointX;
		this.firstControlPointY = this.secondControlPointY;
		this.secondControlPointX = tempControlX;
		this.secondControlPointY = tempControlY;
		if(this.clockwise)
			this.clockwise=false;
		else
			this.clocwise=true;
	};
