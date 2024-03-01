from sys import argv
from bubble import bubble_sort
from merge import merge_sort
from selection import selection_sort
from print import print_v
from random import seed, random_ui64

fn main():
    let args = argv()
    let sort_name: String

    if len(args) > 1:
        sort_name = args[1]
    else:
        sort_name = "bubble"

    seed()

    var v1 = DynamicVector[UInt64]()
    var size = 100
    var low = 0
    var high = 10000

    for _ in range(size):
        v1.push_back(random_ui64(low, high))

    print("Before sorting:")
    print_v[DType.uint64](v1)

    if sort_name == "bubble":
        bubble_sort[DType.uint64](v1)
    elif sort_name == "merge":
        merge_sort[DType.uint64](v1)
    elif sort_name == "selection":
        selection_sort[DType.uint64](v1)
    else:
        print("Sort algorithm not recognized.")

    print("After sorting:")
    print_v[DType.uint64](v1)
