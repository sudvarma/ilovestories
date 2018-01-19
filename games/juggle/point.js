var CurvePoint = function(x,y)
{
	this.x = x;
	this.y = y;
}

CurvePoint.prototype.getX = function() {
	return this.x;
};

CurvePoint.prototype.getY = function() {
	return this.y;
};