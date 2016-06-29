from flask.ext.script import Manager
from what.fm import app
from flask_assets import ManageAssets

manager = Manager(app)

manager.add_command("assets", ManageAssets())

if __name__ == "__main__":
    manager.run()
