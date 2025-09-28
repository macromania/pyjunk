"""Test configuration and fixtures."""

import pytest


@pytest.fixture
def sample_data():
    """Sample data fixture for tests."""
    return {"key": "value", "number": 42}