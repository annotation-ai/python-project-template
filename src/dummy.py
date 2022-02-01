"""Dummy script for python-project-template."""


def fibonacci(num: int) -> int:
    """Return fibonacci number."""
    assert num >= 0
    prev, curr = 0, 1
    for _ in range(num):
        curr, prev = curr + prev, curr
    return prev


def no_cover() -> None:  # pragma: no cover
    """Do not cover this function."""
    return
