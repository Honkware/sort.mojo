from random import seed, random_ui64
from sort import bubble_sort

fn main():
    seed()

    var v1 = DynamicVector[UInt64]()
    var size = 100
    var low = 0
    var high = 10000

    for _ in range(size):
        v1.push_back(random_ui64(low, high))

    print("Before sorting:")
    print_v[DType.uint64](v1)

    bubble_sort[DType.uint64](v1)

    print("After sorting:")
    print_v[DType.uint64](v1)

fn print_v[D: DType, size: Int = 1](v: DynamicVector[SIMD[D, size]]):
    print_no_newline("(")
    print_no_newline(len(v))
    print_no_newline(")")
    print_no_newline("[")
    for i in range(len(v)):
        print_no_newline(v[i])
        if i < len(v) - 1:
            print_no_newline(", ")
    print("]")
