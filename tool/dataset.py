from random import shuffle

import pandas as pd


def generate_data(in_file, out_file):
    df_file = pd.read_csv(in_file, sep=',', header=0, index_col=None)
    samples = []
    for idx, row in df_file.iterrows():
        content = row['content']
        label = row['label']
        if pd.isna(label):
            continue

        label = str(int(label))
        samples.append('{},{}'.format(content, label))

    shuffle(samples)
    print('train samples count: {}.'.format(len(samples)))

    with open(out_file, 'w') as f:
        f.write('\n'.join(samples))


def get_test_examples():
    examples = []
    df_file = pd.read_csv('test.csv', sep=',', header=0, index_col=None)
    for index, row in df_file.iterrows():
        print(index, row['content'])
    return examples


if __name__ == '__main__':
    generate_data('uf_train.csv', '../data/UNFRIENDLY/train.csv')
    generate_data('uf_test.csv', '../data/UNFRIENDLY/dev.csv')
    # get_test_examples()

