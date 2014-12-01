fhem-pilight
=============

<h2>Usage</h2>
<ul>
  <a name="pilight_define"></a>
  <h4>Define</h4>
  <ul>
    <code>define &lt;name&gt; pilight &lt;protocol&gt;</code>
    <br/>
    <br/>
    Defines a module for setting pilight compartible switches on or off. See <a href="http://www.sweetpi.de/blog/258/funksteckdosen-mit-dem-raspberry-pi-und-pilight-schalten">Sweetpi</a>.<br><br>
    Supported protocols: kaku_switch, quigg_switch, elro_he, elro_hc, silvercrest, pollin, brennenstuhl, mumbi, rev1_switch, rev2_switch, clarus_switch and intertechno_old. If you need more, just write an issue!<br/><br/>
    Example:
    <ul>
      <code>define Weihnachtsbaum pilight kaku_switch</code><br>
      <code>attr Weihnachtsbaum housecode 12323578</code><br>
      <code>attr Weihnachtsbaum unitcode 0</code><br>
    </ul>
    <br/>
	If your pilight server does not run on localhost, please set both the attributes <b>remote_ip</b> and <b>remote_port</b>. If you are running pilight >3.0, then please <b>define the port used by pilight</b> settings: http://www.pilight.org/getting-started/settings/; fhem-plight uses 5000 by default.
    <br/>
    <b>This version is written for pilight 5.0. If you run a version < 3.0, please set the following attribute:</b>
      <code> attr Weihnachtsbaum useOldVersion 1</code>
  </ul>

  <a name="pilight_Attr"></a>
  <h4>Attributes</h4> 
  <ul>
    <li><a name="protocol"><code>attr &lt;name&gt; protocol &lt;string&gt;</code></a>
                <br />Protocol used in pilight, e.g. "kaku_switch"</li>
    <li><a name="housecode"><code>attr &lt;name&gt; housecode &lt;string&gt;</code></a>
                <br />Housecode used in pilight (for protocol kaku*, clarus_switch, rev1_switch, rev2_switch, quigg_switch)</li>
    <li><a name="systemcode"><code>attr &lt;name&gt; systemcode &lt;string&gt;</code></a>
                <br />Systemcode of your switch (for protocol elso, elro_he, elro_hc, silvercrest, pollin, mumbi, brennenstuhl, intertechno_old)</li>
    <li><a name="unitcode"><code>attr &lt;name&gt; unitcode &lt;string&gt;</code></a>
                <br />Unit code/device code used in pilight (all protocols)</li>
    <li><a name="remote_ip"><code>attr &lt;name&gt; remote_ip &lt;string&gt;</code></a>
                <br />Remote IP of you pilight server (127.0.0.1 is default)</li>
    <li><a name="remote_port"><code>attr &lt;name&gt; remote_port &lt;string&gt;</code></a>
                <br />Remote port of you pilight server (5000 is default)</li>
  </ul>
</ul>

<br/>
You can find more information on <a href="http://www.andreas-fey.com">my website</a>
