	var PuzzleImage = function(canvas,context,
								imgData,
								imgOrder)
	{
		this.imgData = imgData;
		this.imgOrder = imgOrder;
	};

	PuzzleImage.prototype.getImageData = function()
	{
		return this.imgData;
	};

	PuzzleImage.prototype.setImageData = function(imgData)
	{
		this.imgData = imgData;
	};


	PuzzleImage.prototype.getImageOrder = function()
	{
		return this.imgOrder;
	};

