fhem-pilight
=============

<h2>Usage</h2>
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


<br/>
You can find more information on <a href="http://www.andreas-fey.com">my website</a>
