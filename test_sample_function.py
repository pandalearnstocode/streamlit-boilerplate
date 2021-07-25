from sample_function import hello_world


def test_hello_world():
    assert hello_world() == "Hello World"


# Using pytest 4.5 and pytest-cov 2.7.1 and --cov-report xml:coverage.xml still did not produce test coverage lines on sonar scanner – vfrank66 May 30 '19 at 17:07 
# pip install pytest==4.5 pytest-cov==2.7.1