class Command(object):

    """ZFTool Command. """
    pass

    # def __init__(self, **kargs):
    #     """TODO: to be defined1.

    #     :cmd_args: TODO

    #     """
    #     self.args = kargs


class ProjectCreationCommand(Command):

    """Creates a new ZF2 application"""

    def runWith(self, path):
        return "zf.php create project %s" % path


class CreateModuleCommand(Command):

    """Adds a module to ZF2 application"""

    def runWith(self, path):
        return "zf.php create module %s" % path
