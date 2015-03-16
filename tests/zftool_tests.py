import unittest
import zftool as zft


class ZftoolTests(unittest.TestCase):

    def test_project_creation_command(self):
        cmd = zft.ProjectCreationCommand(['/path/to/project'])
        self.assertEqual(str(cmd), "zf.php create project /path/to/project")

    # def test_module_creation_command(self):
    #     cmd = zft.ProjectCreationCommand(['/path/to/project'])
    #     self.assertEqual(str(cmd), "zf.php create module /path/to/project")

# if __name__ == '__main__':
# unittest.main()
