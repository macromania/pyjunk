"""Test example to verify setup."""

import src


def test_version():
    """Test that version is properly set."""
    assert src.__version__ == "0.1.0"


def test_sample_fixture(sample_data):
    """Test using the sample fixture."""
    assert sample_data["key"] == "value"
    assert sample_data["number"] == 42
