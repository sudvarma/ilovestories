	var Tile = function(canvas,context,x,y,order,img)
	{
		this.x = x;
		this.y = y;
		this.order = order;
		this.img = img;
	};

	Tile.prototype.getCordinates = function()
	{
		return new PuzzlePoint(this.x,this.y);
	};

	Tile.prototype.setCordinates = function(x,y)
	{
		this.x = x;
		this.y = y;
	};

	Tile.prototype.getOrder = function()
	{
		return this.order;
	};

	Tile.prototype.getImage = function()
	{
		return this.img;
	};

	Tile.prototype.setImage = function(img)
	{
		this.img = img;
	};
