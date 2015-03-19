import unittest
import zftool as zft


class ZftoolTests(unittest.TestCase):

    def test_project_creation_command(self):
        cmd = zft.ProjectCreationCommand()
        result = cmd.runWith('Test')
        self.assertEqual(result, "zf.php create project Test")

    def test_module_create_command(self):
        cmd = zft.CreateModuleCommand()
        result = cmd.runWith('Test')
        self.assertEqual(result, "zf.php create module Test")
