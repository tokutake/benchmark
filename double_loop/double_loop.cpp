#include <iostream>
#include <fstream>
#include <string>

int main(int argc, char *argv[])
{
    int32_t max = std::stoi(argv[1]);
    int32_t sum = 0;

    for (int32_t i = 0; i <= max; ++i) {
        for (int32_t j = 0; j <= max; ++j) {
            sum += j;
            // to minimize overflow behavior,
            // mask bits
            sum = sum & 0xfff;
        }
    }

    std::cout << sum << std::endl;

    return 0;
}