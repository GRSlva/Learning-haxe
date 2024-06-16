
/*
Class
*/

class Point{
	var x:Int;
	var y:Int;

	public function new(x:Int, y:Int){
		this.x = x;
		this.y = y;
	}

	public function toString():String{
		return "Point : " + x + ", " + y;
	}
}

class Point3 extends Point {
	var z:Int;

	public function new(x, y, z){
		super(x,y);
		this.z = z;
	}

	public override function toString():String {
		return super.toString() + ", " + z;
	}
}

/*
Main class
*/

class Main {
	static function main() {

		/*
		Hello world
		*/
		var helloworld = "Hello, world!";
		trace(helloworld);

		/*
		Needs Null<Type> to declare a basic variable as null
		*/
		var n:Null<Int> = 1;
		var a : Int = n;

		/*
		If we didn't define n type as Null<Int> a != null would return an error on static platforms
		*/
		if(a != null){
			trace(a);	// 0 on Static platforms
		}

		/*
		x is a native int (not nullable)
		*/
		function foo(x:Int = 0){
			trace('x is $x');
		}
		foo();
		foo(10);
		/*
		y is Null<Int> (nullable)
		*/
		function opt(?y:Int){
			trace(y);
		}
		opt();

		/*
		Instantiating classes
		*/

		var p = new Point(1, -20);
		trace(p.toString());

		var newp:Point = new Point3(1,2,-10);
		trace(newp.toString());
	}
}
