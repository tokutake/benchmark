const std = @import("std");

pub fn main() void {
    const args = std.os.Args.init();

    // Check if there are command-line arguments
    if (args.argCount() < 2) {
        // Print usage message
        const execName = args.arg0();
        std.debug.print("Usage: {} <upper limit number>\n", .{execName});
        return;
    }
}
