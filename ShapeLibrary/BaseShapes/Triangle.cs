namespace ShapeLibrary.BaseShapes
{
    public class Triangle : IShape
    {
        private readonly double firstSide;
        private readonly double secondSide;
        private readonly double thirdSide;

        public Triangle(double firstSide, double secondSide, double thirdSide)
        {
            this.firstSide = firstSide;
            this.secondSide = secondSide;
            this.thirdSide = thirdSide;
        }

        public double CalculateArea()
        {
            var p = (firstSide + secondSide + thirdSide) / 2;

            return Math.Sqrt(p * (p - firstSide) * (p - secondSide) * (p - thirdSide));
        }
    }
}
