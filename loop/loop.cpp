#include <iostream>
#include <string>

int main(int argc, char *argv[]) {
    auto arg = argv[1];
    int64_t upper = std::stoi(arg);

    int64_t sum = 0;
    for (int64_t i = 0; i <= upper; ++i) {
        sum += i;
    }
    std::cout << sum << std::endl;

    return 0;
}