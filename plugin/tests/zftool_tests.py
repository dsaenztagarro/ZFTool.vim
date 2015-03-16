import unittest
import zftool as sut


@unittest.skip("Don't forget to test!")
class ZftoolTests(unittest.TestCase):

    def test_example_fail(self):
        result = sut.zftool_example()
        self.assertEqual("Happy Hacking", result)
