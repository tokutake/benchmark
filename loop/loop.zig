const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut();
    const stderr = std.io.getStdErr();
    const stdin = std.io.getStdIn();

    var line_buf: [1024]u8 = undefined;
    const amount = try stdin.read(&line_buf);
    if (amount == line_buf.len) {
        try stderr.writer.print("Input too long\n", .{});
        return;
    }
    const line = std.mem.trimRight(u8, line_buf[0..amount], "\r\n");
    const input_number = std.fmt.parseUnsigned(i64, line, 10) catch {
        try stderr.writer.print("Invalid number.\n", .{});
        return;
    };

    var sum: i64 = 0;
    var upper: i64 = input_number;
    var i: i64 = 0;
    while (i <= upper) {
        sum += i;
        i += 1;
    }
    try stdout.print("{}", .{sum});
}
