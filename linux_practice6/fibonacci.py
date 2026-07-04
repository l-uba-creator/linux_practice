def fibonacci(n: int) -> int:
    """n-е число Фибоначчи (0‑индексация: F(0) = 0, F(1) = 1)."""
    if n < 0:
        raise ValueError("n должно быть неотрицательным")
    if n in (0, 1):
        return n
    a, b = 0, 1
    for _ in range(2, n + 1):
        a, b = b, a + b
    return b


if __name__ == "__main__":
    import sys

    if len(sys.argv) != 2:
        print("Использование: python fibonacci.py <n>")
        sys.exit(1)

    n = int(sys.argv[1])
    print(fibonacci(n))