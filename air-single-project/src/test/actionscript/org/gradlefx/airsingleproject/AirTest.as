package org.gradlefx.airsingleproject  {
    public class AirTest {

        import air.net.URLMonitor; //import this library to test whether unit tests with AIR specific classes run correctly
		import org.hamcrest.assertThat;
		import org.hamcrest.object.equalTo;

        [Test]
        public function testSum_addingTwo_shouldReturnSum():void {
            assertThat(1, equalTo(1));
        }
    }
}