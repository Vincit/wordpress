const path = require('path');
const Rsync = require('rsync');
const yaml = require('node-yaml');
const config = yaml.readSync(path.join('/data/wordpress/config.yml'));

const target = process.argv[2] || config.production;
const user = target.user || config.name;
const uploadDir = target.uploadDir || '/data/wordpress/htdocs/wp-content/uploads/';
const sshPort = target.ssh_port || 22;

if (target) {
  const rsync = new Rsync()
    .shell(`ssh -p ${sshPort}`)
    .flags('az')
    .source(`${user}@${target.url.replace('https://', '')}:${uploadDir}`)
    .destination('/data/wordpress/htdocs/wp-content/uploads');

  rsync.execute((error, code, cmd) => {
    if (error) {
      console.error(error);
      console.log(cmd);
      process.exit(1);
    }

    console.log('Done. Command was');
    console.log(cmd);
    process.exit(0);
  });
} else {
  console.error('Config file is invalid');
  process.exit(1);
}
