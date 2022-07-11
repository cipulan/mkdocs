<h4>Instalasi :</h4>

<p>Instalasi mkdocs pada pc 192.168.1.64</p>

<p>Python sudah terinstall</p>

<pre>
<code>ubuntu@ubuntu:~$ python3 --version
Python 3.8.2
</code></pre>

<p>Install pip</p>

<pre>
<code>ubuntu@ubuntu:~$ sudo apt install python3-pip
</code></pre>

<pre>
<code>ubuntu@ubuntu:~$ pip --version
pip 20.0.2 from /usr/lib/python3/dist-packages/pip (python 3.8)
</code></pre>

<p>Install mkdocs</p>

<pre>
<code>ubuntu@ubuntu:~$ pip install mkdocs
ubuntu@ubuntu:~$ sudo apt install mkdocs
</code></pre>

<pre>
<code>ubuntu@ubuntu:~$ mkdocs --version
mkdocs, version 1.3.0 from /home/ubuntu/.local/lib/python3.8/site-packages/mkdocs (Python 3.8)
</code></pre>

<h4>Project :&nbsp;</h4>

<p>Membuat project baru dengan nama mkdocs dengan command&nbsp;<em>sudo mkdocs new namaproject</em></p>

<pre>
<code>ubuntu@ubuntu:~$ sudo mkdocs new mkdocs
ubuntu@ubuntu:~$ cd mkdocs/
ubuntu@ubuntu:~/mkdocs$ sudo mkdocs build
</code></pre>

<p>Membuat menu</p>

<p>Pengaturan menu ada pada file&nbsp;<strong>mkdocs.yml</strong>&nbsp;dengan&nbsp;<em><strong>nav</strong></em></p>

<pre>
<code>nav:
   - Home: 'index.md'
   - 'User Guide':
       - 'Writing your docs': 'writing-your-docs.md'
       - 'Styling your docs': 'styling-your-docs.md'
   - Menu1: 'menu1.md'
   - Menu2: 'menu2.md'
   - Menu3: 'menu3.md'
   - Subfolder: 'subfolder/index.md'
   - Submenu:
           - Submenu1: 'submenu1.md'
           - Submenu1: 'submenu1.md'
</code></pre>

<p>Hasil</p>

<p><img alt="" src="https://taiga.rujak.id/media/attachments/1/0/5/5/3bc962d8cc320973da0a9925be548134f3063dacd5ed58ce2e09947bd0c9/desktop-screenshot.png?token=YskJzg%3AcwiQCiaA6A3d4LRrZc9RzA7DJ3rpKNYs0hBt23DQnxOUWOjEqTqShpo0a8BWxQ8wHNZ-ovsKVRAxZ7ds-ofsDQ#_taiga-refresh=issue:12414" /></p>

<p>Membuat Link&nbsp;<em><strong>[Nama](file-tujuan-link)</strong></em></p>

<pre>
<code>Ini adalah menu1
Untuk ke page selanjutnya bisa ke laman berikut : [MENU2](menu2.md)
</code></pre>

<p><img alt="" src="https://taiga.rujak.id/media/attachments/b/0/d/3/94d4a57b3ce03386ef380f170ee2c4c49d8240837f1f7becae9e2d9a813b/menu1-my-docs.png?token=YskJzg%3A_E9Yl3MAdXCSzOsoHQLz0z9DVeixYgv_gcPu7fxVilJanOqAi4dogidBz6CM1bB4CFXKpRCrAZ9GpcDULnUblw#_taiga-refresh=issue:12415" /></p>

<p>Theme dapat diubah dengan&nbsp;<em><strong>theme</strong></em>&nbsp;disini menggunakan tema material.</p>

<pre>
<code>theme:
       name: material
</code></pre>

<p><img alt="" src="https://taiga.rujak.id/media/attachments/c/0/4/5/bf529d402822b11a31d48706242b52a0021b0b9c4193f76bbedf6db8aad2/menu1-dokumen-pertama.png?token=YskJzg%3AO2YCt9VlifNStTiaKaSNm89hnkt3Ce3jVmBAC-nS1I4asVRhB2Nvniwgrjph7UYPQU2kAGuiiE2UhcWn8L0nwQ#_taiga-refresh=issue:12416" /></p>

<p>Hasil mkdocs dapat dilihat pada peramban dengan serve&nbsp;</p>

<pre>
<code>ubuntu@ubuntu:~/mkdocs$ mkdocs serve -a 0.0.0.0:8000
INFO     -  Building documentation...
WARNING  -  Config value: 'dev_addr'. Warning: The use of the IP address '0.0.0.0' suggests a production environment or the use of a proxy to connect to the MkDocs server. However, the MkDocs' server is intended for local development
           purposes only. Please use a third party production-ready server instead.
INFO     -  Cleaning site directory
</code></pre>

<p><img alt="" src="https://taiga.rujak.id/media/attachments/e/6/a/e/f6c176e866c7321b7dd3c1b604f3f20439f18839bbaa14a1bb6ee9fe9e19/desktop-screenshot-1.png?token=YskJzg%3AHgqWXDGcHjTc6INAdKM3FgX49UKprsMmOk-sDhBH0H5b8TmLt7cbZte63Uj-RaHglj55u3XbhrLP6WY6-tKOOQ#_taiga-refresh=issue:12417" /></p>

