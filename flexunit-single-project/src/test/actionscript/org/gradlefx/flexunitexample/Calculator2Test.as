package org.gradlefx.flexunitexample  {
    public class Calculator2Test {

        import org.hamcrest.assertThat;
        import org.hamcrest.object.equalTo;

        [Test]
        public function testSum_addingTwo_shouldReturnSum():void {
            var calculator:Calculator = new Calculator();
          
            var sum:int = calculator.sum(5, 5);
            
            assertThat(sum, equalTo(10));
        }
    }
}