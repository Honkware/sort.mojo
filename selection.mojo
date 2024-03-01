fn selection_sort[D: DType](inout vector: DynamicVector[SIMD[D, 1]]):
    let n = len(vector)
    for i in range(0, n - 1):
        var minIndex = i
        for j in range(i + 1, n):
            if vector[j] < vector[minIndex]:
                minIndex = j
        if i != minIndex:
            let temp = vector[i]
            vector[i] = vector[minIndex]
            vector[minIndex] = temp