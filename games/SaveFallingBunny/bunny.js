	var MyBunny = function(canvas,context,xspeed,yspeed)
	{
		this.x =  Math.floor(((Math.random() * canvas.width) + 1));
		this.y = 0;
		this.xspeed = Math.floor(((Math.random() * xspeed) + 2));
		this.yspeed = Math.floor(((Math.random() * yspeed) + 3));
		this.state = 0; //initial_state

		this.initialImage = new Image();
		this.finalImage = new Image();

		this.initialImage.onload = function(data)
		{
		    this.state =0;
		    context.drawImage(this.initialImage,this.x,this.y);
		};


		this.initialImage.src =  "images/bunny.png";
		this.finalImage.src =  "images/bunny_2.png";
	}

	MyBunny.prototype.getImage = function(canvas,context)
	{
		if(this.state == 0)
			return this.initialImage;
		else if(this.state == 1)
			return this.finalImage;
	}

	function drawBunny(canvas,context,buns)
	{
		for(var i=0;i<buns.length;i++)
		{
			var bunny = buns[i];
			if(bunny)
			{
				if(bunny.state == 1)
				{
					if(i % 2 == 0)
					{
						bunny.x -= (bunny.xspeed /3);
						bunny.y += (bunny.yspeed /3);
					}
					else
					{
						bunny.x += (bunny.xspeed /3);
						bunny.y += (bunny.yspeed /3);
					}
				}
				else
				{
					if(i % 2 == 0)
					{
						bunny.x -= bunny.xspeed;
						bunny.y += bunny.yspeed;
					}
					else
					{
						bunny.x -= bunny.xspeed;
						bunny.y += bunny.yspeed;

					}
				}
				context.drawImage(bunny.getImage(canvas,context),
												 bunny.x,bunny.y);
			}
		}
	}

	function bunnyClicked(bunny)
	{
		bunny.state = 1;
	}

