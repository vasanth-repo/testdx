@IsTest
private class SimpleClass019Test {
    @IsTest
    static void testAddNumbers() {
        Integer result = SimpleClass019.addNumbers(10, 20);
        System.assertEquals(30, result);
    }
}