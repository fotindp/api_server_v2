def config_parser(config_path):
    with open(config_path, 'r') as config_files:
        config = dict()
        lines = config_files.readlines()
        for line in lines:
            k, v = line.split(' = ')
            config[k] = v.split('\n')[0]
        return config