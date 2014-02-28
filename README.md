fhem-pilight
=============

<h2>Usage</h2>
<ul>
  <h4>Define</h4>
   <code>define &lt;name&gt; pilight &lt;protocol&gt; &lt;housecode&gt; &lt;number&gt;</code>
    <br/>
    <br/>
    Defines a module for setting pilight compartible switches on or off. See <a href="http://www.sweetpi.de/blog/258/funksteckdosen-mit-dem-raspberry-pi-und-pilight-schalten">Sweetpi</a>.<br><br>
    Example:
    <ul>
      <code>define Weihnachtsbaum pilight kaku_switch 12323578 0</code><br>
    </ul>
    <br/>
	If your pilight server does not run on localhost, please set both the attributes <b>remote_ip</b> and <b>remote_port</b>.
    <br/>
    <b>This version is written for pilight 3.0. If you run an older version, please set the following attribute:</b>
      <code> attr Weihnachtsbaum useOldVersion 1</code>
  </ul>

  <h4>Attributes</h4> 
  <ul>
    <li><a name="protocol"><code>attr &lt;name&gt; protocol &lt;string&gt;</code></a>
                <br />Protocol used in pilight, e.g. "kaku_switch"</li>
    <li><a name="user"><code>attr &lt;name&gt; housecode &lt;string&gt;</code></a>
                <br />Housecode used in pilight</li>
    <li><a name="user"><code>attr &lt;name&gt; housecode &lt;string&gt;</code></a>
                <br />Housecode used in pilight</li>
    <li><a name="number"><code>attr &lt;name&gt; number &lt;string&gt;</code></a>
                <br />Device number of your switch</li>
    <li><a name="numer"><code>attr &lt;name&gt; remote_ip &lt;string&gt;</code></a>
                <br />Remote IP of you pilight server (127.0.0.1 is default)</li>
    <li><a name="numer"><code>attr &lt;name&gt; remote_port &lt;string&gt;</code></a>
                <br />Remote port of you pilight server (5000 is default)</li>
  </ul>
</ul>


<br/>
You can find more information on <a href="http://www.andreas-fey.com">my website</a>
