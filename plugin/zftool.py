class Command(object):

    """ZFTool Command. """

    def __init__(self, cmd_args):
        """TODO: to be defined1.

        :cmd_args: TODO

        """
        self._cmd_args = cmd_args


class ProjectCreationCommand(Command):

    """Creates a new ZF2 application"""

    def __str__(self):
        path = self._cmd_args[0]
        return "zf.php create project %s" % path


class ModuleCreationCommand(Command):

    """Adds a module to ZF2 application"""

    def __str__(self):
        path = self._cdm_args[0]
        return "zf.php create module {name} {path}"


def zftool_example():
    return "Happy Hacking!"
