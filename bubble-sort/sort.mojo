fn bubble_sort[D: DType](inout vector: DynamicVector[SIMD[D, 1]]):
    let n = len(vector)
    var swapped: Bool = Bool(__mlir_attr.`true`)

    while swapped:
        swapped = Bool(__mlir_attr.`false`)
        for i in range(1, n):
            if vector[i - 1] > vector[i]:
                let temp = vector[i - 1]
                vector[i - 1] = vector[i]
                vector[i] = temp
                swapped = Bool(__mlir_attr.`true`)

