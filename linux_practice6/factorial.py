def factorial(n: int) -> int:
    """Вычисление факториала n (n!)."""
    if n < 0:
        raise ValueError("n должно быть неотрицательным")
    result = 1
    for i in range(2, n + 1):
        result *= i
    return result


if __name__ == "__main__":
    import sys

    if len(sys.argv) != 2:
        print("Использование: python factorial.py <n>")
        sys.exit(1)

    n = int(sys.argv[1])
    print(factorial(n))