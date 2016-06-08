"""
Copyright (C) 2012 Raniere Silva <ra092767@ime.unicamp.br>

This program is free software: you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program. If not, see <http://www.gnu.org/licenses/>.
"""

def ytb_atom(user):
    """Return the url for the atom format."""
    return "http://gdata.youtube.com/feeds/base/users/{0}/uploads".format(user)

def ytb_rss(user):
    """Return the url for the rss format."""
    return "http://gdata.youtube.com/feeds/base/users/{0}/uploads?alt=rss".format(user)

if __name__ == "__main__":
    """Call the url retrieve from the command line interpreter. ::

        $ python classification.py --help
"""
    import argparse
    from argparse import RawTextHelpFormatter

    # Parse of flags.
    parser = argparse.ArgumentParser(description='Get the url of the feed for Youtube channel.',
            formatter_class=RawTextHelpFormatter)
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--rss', action='store_true',
            help='use the rss format.')
    group.add_argument('--atom', action='store_true',
            help='use the atom format.')
    parser.add_argument('args', nargs=argparse.REMAINDER,
            help='List of the user name.')

    args = parser.parse_args()

    for name in args.args:
        if args.rss:
            print(ytb_rss(name))
        elif args.atom:
            print(ytb_atom(name))
