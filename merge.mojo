fn merge_sort[D: DType](inout vector: DynamicVector[SIMD[D, 1]], start: Int = 0, originalEnd: Int = -1):
    var end = originalEnd
    if end == -1:
        end = len(vector) - 1

    if start < end:
        let mid = (start + end) // 2

        merge_sort[D](vector, start, mid)
        merge_sort[D](vector, mid + 1, end)

        let left_size = mid - start + 1
        let right_size = end - mid
        var left = DynamicVector[SIMD[D, 1]](left_size)
        var right = DynamicVector[SIMD[D, 1]](right_size)

        for i in range(0, left_size):
            left[i] = vector[start + i]
        for j in range(0, right_size):
            right[j] = vector[mid + 1 + j]

        var i = 0
        var j = 0
        var k = start
        while i < left_size and j < right_size:
            if left[i] <= right[j]:
                vector[k] = left[i]
                i += 1
            else:
                vector[k] = right[j]
                j += 1
            k += 1

        while i < left_size:
            vector[k] = left[i]
            i += 1
            k += 1

        while j < right_size:
            vector[k] = right[j]
            j += 1
            k += 1
