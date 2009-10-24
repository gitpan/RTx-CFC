use inc::Module::Install;
requires 'RT' => 0;

author('Jerrad Pierce <jpierce@cpan.org>');
abstract('Custom Fields, Cleaner');
license('perl');

RTx('RTx-CFC');
WriteAll();

sub MY::postamble {
    package MY;
    "\npredist: all\n" .
    "\tpod2readme  lib/RTx/CFC.pm > README\n"
}
