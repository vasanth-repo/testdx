@IsTest
private class SimpleClass020Test {
    @IsTest
    static void testAddNumbers() {
        Integer result = SimpleClass020.addNumbers(10, 20);
        System.assertEquals(30, result);
    }
}