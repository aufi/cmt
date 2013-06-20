fio_conf = YAML.load_file("#{Rails.root}/config/fio.yml")

FioAPI.token = fio_conf["fio"]["token"]