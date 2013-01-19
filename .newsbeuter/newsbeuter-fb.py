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

def fb_atom(fbid):
    """Return the url for the atom format."""
    if fbid is None:
        raise TypeError("fbid can't be None")
    return "http://www.facebook.com/feeds/page.php?format=atom10&id={0}".format(fbid)

def fb_rss(fbid):
    """Return the url for the rss format."""
    if fbid is None:
        raise TypeError("fbid can't be None")
    return "http://www.facebook.com/feeds/page.php?format=rss20&id={0}".format(fbid)

def get_fbid(name):
    """Return the Facebook ID for the give name."""
    import urllib.request
    import re
    fbid = None
    f = urllib.request.urlopen("https://www.facebook.com/{0}".format(name))
    for s in f.readlines():
        m = re.search(b'ajaxify="([^ ]*)" ', s)
        if m:
            ajaxify = re.search(b'set=a\.\d*\.\d*\.(\d*)', m.group(1))
            if ajaxify:
                fbid = ajaxify.group(1).decode()
                break
    return fbid

if __name__ == "__main__":
    """Call the url retrieve from the command line interpreter. ::

        $ python classification.py --help
"""
    import argparse
    from argparse import RawTextHelpFormatter

    # Parse of flags.
    parser = argparse.ArgumentParser(description='Get the url of the feed for Facebook timeline.',
            formatter_class=RawTextHelpFormatter)
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--rss', action='store_true',
            help='use the rss format.')
    group.add_argument('--atom', action='store_true',
            help='use the atom format.')
    parser.add_argument('args', nargs=argparse.REMAINDER,
            help='List of the profile name to retrieve.')

    args = parser.parse_args()

    for name in args.args:
        if args.rss:
            print(fb_rss(get_fbid(name)))
        elif args.atom:
            print(fb_atom(get_fbid(name)))
