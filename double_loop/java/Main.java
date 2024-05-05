public class Main {
    public static void main(String... args) {
        int max = Integer.parseInt(args[0]);

        int sum = 0;
        for (int i = 0; i <= max; i++) {
            for (int j = 0; j <= max; j++) {
                sum += j;
                sum &= 0xfff;
            }
        }
        System.out.println(sum);
    }
}