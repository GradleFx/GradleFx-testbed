package 
{
    import flexunit.framework.TestCase;
    
    public class ExampleTest extends TestCase
    {
        
        [Test]
        public function testSomething() : void
        {
            var myVal : int = 500;
            assertEquals(myVal, 500);
        }
        
    }
}