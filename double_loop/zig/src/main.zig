const std = @import("std");

fn calculate(max: i32) i32 {
    var sum: i32 = 0;
    var i: i32 = 0;
    while (i <= max) {
        var j: i32 = 0;
        while (j <= max) {
            sum += i;
            sum &= 0xfff;
            j += 1;
        }
        i += 1;
    }

    return sum;
}

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const stdin = std.io.getStdIn();

    var line_buf: [1024]u8 = undefined;
    const amount = try stdin.read(&line_buf);
    if (amount == line_buf.len) {
        try stdout.print("Input too long\n", .{});
        return;
    }
    const line = std.mem.trimRight(u8, line_buf[0..amount], "\r\n");
    const input_number = std.fmt.parseUnsigned(i32, line, 10) catch {
        try stdout.print("Invalid number.\n", .{});
        return;
    };

    const num = calculate(input_number);
    try stdout.print("{}", .{num});
}

test "simple test" {
    const num = calculate(2000);
    try std.testing.expectEqual(@as(i32, 1256), num);
}
