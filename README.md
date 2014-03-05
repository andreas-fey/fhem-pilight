fhem-pilight
=============

<h2>Usage</h2>
<ul>
  <h4>Define</h4>
  <ul>
    <code>define &lt;name&gt; pilight &lt;protocol&gt;</code>
    <br/>
    <br/>
    Defines a module for setting pilight compartible switches on or off. See <a href="http://www.sweetpi.de/blog/258/funksteckdosen-mit-dem-raspberry-pi-und-pilight-schalten">Sweetpi</a>.<br><br>
    Supported protocols: kaku_switch, elro_he, elro_hc, and intertechno_ols. If you need more, just write an issue!<br/><br/>
    Example:
    <ul>
      <code>define Weihnachtsbaum pilight kaku_switch</code><br>
      <code>attr Weihnachtsbaum housecode 12323578</code><br>
      <code>attr Weihnachtsbaum unitcode 0</code><br>
    </ul>
    <br/>
	If your pilight server does not run on localhost, please set both the attributes <b>remote_ip</b> and <b>remote_port</b>.
    <br/>
    <b>This version is written for pilight 3.0. If you run an older version, please set the following attribute:</b>
      <code> attr Weihnachtsbaum useOldVersion 1</code>
  </ul>

  <a name="pilight_Attr"></a>
  <h4>Attributes</h4> 
  <ul>
    <li><a name="protocol"><code>attr &lt;name&gt; protocol &lt;string&gt;</code></a>
                <br />Protocol used in pilight, e.g. "kaku_switch"</li>
    <li><a name="user"><code>attr &lt;name&gt; housecode &lt;string&gt;</code></a>
                <br />Housecode used in pilight (for protocol kaku*)</li>
    <li><a name="user"><code>attr &lt;name&gt; unitcode &lt;string&gt;</code></a>
                <br />Unit code/device code used in pilight (for protocol kaku* or elso)</li>
    <li><a name="systemcode"><code>attr &lt;name&gt; systemcode &lt;string&gt;</code></a>
                <br />Systemcode of your switch (for protocol elso)</li>
    <li><a name="numer"><code>attr &lt;name&gt; remote_ip &lt;string&gt;</code></a>
                <br />Remote IP of you pilight server (127.0.0.1 is default)</li>
    <li><a name="numer"><code>attr &lt;name&gt; remote_port &lt;string&gt;</code></a>
                <br />Remote port of you pilight server (5000 is default)</li>
  </ul>
</ul>


<br/>
You can find more information on <a href="http://www.andreas-fey.com">my website</a>
