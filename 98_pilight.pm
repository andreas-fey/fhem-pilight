##############################################
package main;

use strict;
use warnings;
use LWP::UserAgent;

sub
pilight_Initialize($)
{
  my ($hash) = @_;

  $hash->{SetFn}     = "pilight_Set";
  $hash->{DefFn}     = "pilight_Define";
  $hash->{AttrList}  = "protocol housecode number";
}

###################################
sub
pilight_Set($@)
{
  my ($hash, @a) = @_;

  return "no set value specified" if(int(@a) < 2);
  return "on off" if($a[1] eq "?");
  
  shift @a;
  my $command = shift @a;

  Log 1, "pylight command: $command";

  if($command eq "on") 
  {
    switch($hash, 1);
  } 
  else
  {
    switch($hash, 0);
  }
  
  $hash->{CHANGED}[0] = $command;
  $hash->{STATE} = $command;
  $hash->{READINGS}{state}{TIME} = TimeNow();
  $hash->{READINGS}{state}{VAL} = $command;
  
  return undef;
}

sub
pilight_Define($$)
{
  my ($hash, $def) = @_;
  my @a = split("[ \t][ \t]*", $def);

  my $u = "wrong syntax: define <name> <protocol> <housecode> <number>";
  return $u if(int(@a) < 4);
  
  $hash->{protocol} = $a[2];
  $hash->{housecode} = $a[3];
  $hash->{number} = $a[4];
  
  return undef;
}


sub switch
{
  my ($hash, $on) = @_;
  my $protocol = $hash->{protocol};
  my $housecode = $hash->{housecode};
  my $number = $hash->{number};
  my $param = $on ? "-t" : "-f";

  system ("sudo pilight-send -p $protocol -i $housecode -u $number $param");
}

1;

=pod
=begin html

<a name="pilight"></a>
<h3>pilight</h3>
<ul>
  <a name="pilight_define"></a>
  <h4>Define</h4>
  <ul>
    <code>define &lt;name&gt; pilight &lt;protocol&gt; &lt;housecode&gt; &lt;number&gt;</code>
    <br><br>

    Defines a module for setting pilight compartible switches on or off. See <a href="http://www.sweetpi.de/blog/258/funksteckdosen-mit-dem-raspberry-pi-und-pilight-schalten">Sweetpi</a>.<br><br>

    Example:
    <ul>
      <code>define Weihnachtsbaum pilight kaku_switch 12323578 0</code><br>
    </ul>

    <b> Pay attention:</b> You have to add the following line to sudoers file: <code>
    fhem ALL=(ALL) NOPASSWD: /usr/local/sbin/pilight-send</code>
  </ul>

  <a name="push_Attr"></a>
  <h4>Attributes</h4> 
  <ul>
    <li><a name="protocol"><code>attr &lt;name&gt; token &lt;string&gt;</code></a>
                <br />App token from pilight</li>
    <li><a name="user"><code>attr &lt;name&gt; user &lt;string&gt;</code></a>
                <br />User token from pilight</li>
  </ul>
</ul>

=end html
=cut
