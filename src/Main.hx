import sys.io.File;

using Lambda;

class Main {
	static function main() {
		var input:String = File.getContent('src/inputs/day1.txt');
		var bigShit:Array<String> = input.split("\n");

		var elves:Array<Array<Int>> = [[]];

		while (bigShit.length > 0) {
			if (bigShit[0].length < 2) {
				
				// trace(bigShit[0]);
				elves.push([]);
				bigShit.shift();
			}
			else
			{
				elves[elves.length - 1].push(Std.parseInt(bigShit.shift()));
			}

			// trace(bigShit[0]);
		}

		var biggestFood:Int = 0;

		var elfTotals:Array<Int> = [];

		for (foods in elves)
		{
			var foodCount:Int = 0;

			for (food in foods)
			{
				foodCount += food;
			}

			elfTotals.push(foodCount);
			biggestFood = Std.int(Math.max(foodCount, biggestFood));
		}

		elfTotals.sort(function(a, b) {
			if (a > b)
				return 1;
			else if (b > a)
				return -1;
			else
				return 0;
		});

		trace(elfTotals);


		// trace(elves);
		// trace(biggestFood);
		// trace(input);

		trace("Hello, world!");
	}
}
