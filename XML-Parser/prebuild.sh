# shellcheck shell=bash
# shellcheck disable=SC2154
# XML-Parser: pre-build script, sourced by runprebuild.sh (cwd: ${PKG_SRCPATH}, set -x, no -e).
# Every ALL_CAPS variable visible to package.env is available here as ${VAR}.

### Devel::CheckLib compiles and links a program against expat, and then runs it: a program of the
### target, which the build host does not run. not_execute keeps the compile and link check
sed -i 's/^\(    check_lib(\)\(    # fill in.*\)$/\1 not_execute => 1,\2/' Makefile.PL
grep -q 'check_lib( not_execute => 1,' Makefile.PL
