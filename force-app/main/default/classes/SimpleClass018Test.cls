@IsTest
private class SimpleClass018Test {
    @IsTest
    static void testAddNumbers() {
        Integer result = SimpleClass018.addNumbers(10, 20);
        System.assertEquals(30, result);
    }
}