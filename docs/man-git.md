<p>instalasi git pada pc 192.168.1.64</p>

<pre>
<code>ubuntu@ubuntu:~$ sudo apt install git
ubuntu@ubuntu:~$ git --version
git version 2.25.1
</code></pre>

<p>Setting config git</p>

<pre>
<code>git config --global user.name "Saiful"
git config --global user.email saiful@jogjacamp.com
git config --global init.pingsutBranch main
git config --global core.editor "vim"
</code></pre>

<p>Membuat Repository baru di tujak.id</p>

<p><img alt="" src="https://taiga.rujak.id/media/attachments/f/6/3/b/57586fa4ecacad10b2e00877a95bc6828023f82126535f506b0b820fa2b8/muhammad-saifullah-gijak-git-with-a-rujak.png?token=YskQPQ%3AYEOK6tKRhMk_x43ND1o-Vme8_xJK7QupICOjvb-cb5v3A4aMKKCSXsH94egL1M4Vc_eEWYwhPA0JnG2HsFyFrQ#_taiga-refresh=issue:12419" /></p>

<p>Langkah pertama melakukan clone dari repository yang sudah dibuat sebelumnya di rujak.id</p>

<pre>
<code>ubuntu@ubuntu:~$ git clone https://rujak.id/saiful/pingsut.git
Cloning into 'pingsut'...
Username for 'https://rujak.id': saiful
Password for 'https://saiful@rujak.id': 
warning: You appear to have cloned an empty repository.
</code></pre>

<p>Cek status dengan</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git status
On branch master
No commits yet
nothing to commit (create/copy files and use "git add" to track)
</code></pre>

<p>Membuat file pertama di directory git pingsut</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ touch BACASAYA.md
ubuntu@ubuntu:~/pingsut$ git status
On branch master
No commits yet
Untracked files:
 (use "git add &lt;file&gt;..." to include in what will be committed)
BACASAYA.md
nothing added to commit but untracked files present (use "git add" to track)
</code></pre>

<p>File sudah bertambah namun belum terlacak, dan harus di tambahkan dengan command&nbsp;<em><strong>git add nama.file</strong></em></p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git add BACASAYA.md 
ubuntu@ubuntu:~/pingsut$ git status
On branch master
No commits yet
Changes to be committed:
 (use "git rm --cached &lt;file&gt;..." to unstage)
new file:   BACASAYA.md
</code></pre>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git status -s
A  BACASAYA.md
A  CONTRIBUTING.md
</code></pre>

<p>Melakukan&nbsp;<strong>push</strong>&nbsp;file-file yang ada di local ke repository</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git push https://rujak.id/saiful/pingsut.git master 
Username for 'https://rujak.id': saiful
Password for 'https://saiful@rujak.id': 
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 270 bytes | 270.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0)
remote: . Processing 1 references
remote: Processed 1 references in total
To https://rujak.id/saiful/pingsut.git
  3e5be00..2f2fb00  master -&gt; master
</code></pre>

<p>Secara otomatis file akan tercopy pada repository pingsut di rujak.id</p>

<p><img alt="" src="https://taiga.rujak.id/media/attachments/9/e/a/0/357d46a5222da5bde9aa926df2686d38720930febd3fee706926ecf63381/saiful-pingsut-ini-adalah-test-project-repository-pertama-pingsut-gijak-git-with-a-rujak.png?token=YskSRw%3AO2whmbPksmIv2MPUa-F_IlQCj2xbTWExAYf1BOy8EIJocQ2iwkIZdDyLqk0YsGwI3tQ-jBtJ_6kk3sxHBg_LAw#_taiga-refresh=issue:12420" /></p>

<p>Membuat file baru langsung di repository rujak.id</p>

<p><img alt="" src="https://taiga.rujak.id/media/attachments/f/b/1/6/72855a65ac2bae8567f822a03534e074308b182bce2c96ba6deaab161926/pingsut-filebaru-md-at-master-pingsut-gijak-git-with-a-rujak.png?token=YskSxQ%3AyzImT5unXkPs_Pq-1wb9qIF72uSNSXlPXM7U67dRhxHaubEBBj2CqS2TCIiuFJqxc0l4JYiUpnah9ExuYcH94A#_taiga-refresh=issue:12421" /></p>

<p>Lalu melakukan&nbsp;<strong>pull</strong>&nbsp;agar file tersebut tercopy di local</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git pull https://rujak.id/saiful/pingsut.git
Username for 'https://rujak.id': saiful
Password for 'https://saiful@rujak.id': 
remote: Counting objects: 3, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 0 (delta 0)
Unpacking objects: 100% (3/3), 306 bytes | 306.00 KiB/s, done.
From https://rujak.id/saiful/pingsut
* branch            master     -&gt; FETCH_HEAD
Updating f2aa5ed..c2f9da2
Fast-forward
filebaru.md | 1 +
1 file changed, 1 insertion(+)
create mode 100644 filebaru.md
</code></pre>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ ll
total 36
drwxrwxr-x 3 ubuntu ubuntu 4096 Jul  9 12:32 ./
drwxr-xr-x 7 ubuntu ubuntu 4096 Jul  9 11:55 ../
drwxrwxr-x 8 ubuntu ubuntu 4096 Jul  9 12:32 .git/
-rw-rw-r-- 1 ubuntu ubuntu   20 Jul  9 11:04 .gitignore
-rw-rw-r-- 1 ubuntu ubuntu   12 Jul  9 11:10 BACASAYA.md
-rw-rw-r-- 1 ubuntu ubuntu   48 Jul  9 11:43 CONTRIBUTING.md
-rw-rw-r-- 1 ubuntu ubuntu   34 Jul  9 12:08 buatdirujak.md
-rw-rw-r-- 1 ubuntu ubuntu   42 Jul  9 12:32 filebaru.md
-rw-rw-r-- 1 ubuntu ubuntu   10 Jul  9 11:04 ignore.md
</code></pre>

<p>Membuat branch baru pada project pingsut</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git branch townhall
</code></pre>

<p>Untuk melihat&nbsp;<strong>branch</strong>&nbsp;mana yang sedang di kerjakan dapat menggunakan command&nbsp;<em><strong>git log</strong></em></p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git log
commit 3e5be0029e8e8526990ca3ba2243cfd6632e6b2f (HEAD -&gt; master, townhall)
Author: Saiful &lt;saiful@jogjacamp.com&gt;
Date:   Sat Jul 9 11:23:32 2022 +0700
   komit pertama
</code></pre>

<p>Gunakan command&nbsp;<em><strong>git checkout namabranch</strong></em>&nbsp;untuk berpindah antar branch.</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git checkout townhall 
Switched to branch 'townhall'
</code></pre>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git log
commit 3e5be0029e8e8526990ca3ba2243cfd6632e6b2f (HEAD -&gt; townhall, master)
Author: Saiful &lt;saiful@jogjacamp.com&gt;
Date:   Sat Jul 9 11:23:32 2022 +0700
   komit pertama
</code></pre>

<p>Untuk memasukkan branch baru ke repository rujak.id kembali gunakan git push.</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git push https://rujak.id/saiful/pingsut.git townhall 
Username for 'https://rujak.id': saiful
Password for 'https://saiful@rujak.id': 
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 305 bytes | 305.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0)
remote: 
remote: Create a new pull request for 'townhall':
remote:   https://rujak.id/saiful/pingsut/compare/master...townhall
remote: 
remote: . Processing 1 references
remote: Processed 1 references in total
To https://rujak.id/saiful/pingsut.git
* [new branch]      townhall -&gt; townhall
</code></pre>

<p><img alt="" src="https://taiga.rujak.id/media/attachments/a/f/1/f/2df3115e6155accc91624f50f20d7f6b9a0670bb0eafe8f95a9d8c69a250/branches-pingsut-gijak-git-with-a-rujak.png?token=YskV2w%3AHHmO4eCtvog5O51TsO2RCQinQZUdmU5T6TuGHuWZH46-BA5f5PvhusNCJds4b3G-tktseqvpWhL05eQqhBIh1A#_taiga-refresh=issue:12422" /></p>

<p>Untuk&nbsp;<em><strong>Pull request</strong></em>&nbsp;adalah suatu permintaan untuk menggabungkan (merge) kode yang kita modifikasi dengan repositori utama atau repositori lain. Dapat dilakukan dari repository rujak.id</p>

<p><img alt="" src="https://taiga.rujak.id/media/attachments/d/3/b/6/8c3bfeb040a6a889687dc29bacb9c03ae902c6591194aadb028807f4befb/comparing-3e5be0029e-ec004bf62c-pingsut-gijak-git-with-a-rujak.png?token=YskWeg%3AwHIRjgYdYCl3VEtqMN_jKsNm7EhJnNJodxIGwmjmTnl5sqcu9rR3Kmc-EihAkcbBgLPNrxHqtgGkTTyq4AIPCw#_taiga-refresh=issue:12423" /></p>

<p><img alt="" src="https://taiga.rujak.id/media/attachments/1/7/9/e/e16bd53737c8906d083bc02b1d3744130ca96c6a6da44908ff4854e169b6/-1-komit-pertama-di-branch-townhall-pingsut-gijak-git-with-a-rujak.png?token=YskWzw%3ACxsgjJoXhv65GUjowkKeepR7HOOvf3p6datzjrZn6u3Qyxc78k___0jaWwH0QgG6Npeyw1mlo4md69IzOExeRQ#_taiga-refresh=issue:12424" /></p>

<p>Sedangkan untuk fungsi rebase pada git menghasilkan output yang sama dengan merge namun dengan fungsi yang berbeda seperti memodifikasi riwayat commit yang sudah ada sehingga menghasilkan riwayat yang lebih rapi.</p>

<p>Sebelumnya saya sudah membuat branch baru bernama townhall dan ingin kembali mengerjakan perubahan di branch master.</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git checkout master 
Switched to branch 'master'
</code></pre>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ vi CONTRIBUTING.md 
ubuntu@ubuntu:~/pingsut$ git status
On branch master
Changes not staged for commit:
 (use "git add &lt;file&gt;..." to update what will be committed)
 (use "git restore &lt;file&gt;..." to discard changes in working directory)
modified:   CONTRIBUTING.md
no changes added to commit (use "git add" and/or "git commit -a")
</code></pre>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git add CONTRIBUTING.md
</code></pre>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git commit -m "Ini adalah komit pada brancs master untuk proses rebase"
</code></pre>

<p>Setelah perubahan pada branch master selesai lakukan add dan commit pada branch master saya ingin ikut mengaplikasi perubahan tersebut di branch townhall yang dapat dicapai dengan fungsi rebase.</p>

<p>Lalukan switch ke branch townhall.</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git checkout townhall 
Switched to branch 'townhall'
</code></pre>

<p>Lakukan rebase seperti berikut :</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git rebase master 
First, rewinding head to replay your work on top of it...
Applying: komit pertama di branch townhall
Using index info to reconstruct a base tree...
M CONTRIBUTING.md
Falling back to patching base and 3-way merge...
Auto-merging CONTRIBUTING.md
CONFLICT (content): Merge conflict in CONTRIBUTING.md
error: Failed to merge in the changes.
Patch failed at 0001 komit pertama di branch townhall
hint: Use 'git am --show-current-patch' to see the failed patch
Resolve all conflicts manually, mark them as resolved with
"git add/rm &lt;conflicted_files&gt;", then run "git rebase --continue".
You can instead skip this commit: run "git rebase --skip".
To abort and get back to the state before "git rebase", run "git rebase --abort".
</code></pre>

<p>Lakukan git add pada file yang conflict.</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git add CONTRIBUTING.md
</code></pre>

<p>lalu lanjutkan dengan&nbsp;</p>

<pre>
<code>buntu@ubuntu:~/pingsut$ git rebase --continue
Applying: komit pertama di branch townhall
</code></pre>

<p>hasilnya perubahan pada branch master akan ikut terbawa pada branch townhall.</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ cat CONTRIBUTING.md 
Perubahan 1
Perubahan 2
Perubahan 3
&lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD
Perubahan 4

Perubahan 10 di Master untuk proses rebase.
=======
Perubahan 4 di branch townhall
&gt;&gt;&gt;&gt;&gt;&gt;&gt; komit pertama di branch townhall
</code></pre>

<p>Setelah semua proses ini jika ingin melakukan git push akan muncul error :&nbsp;</p>

<pre>
<code>ubuntu@ubuntu:~/pingsut$ git push https://rujak.id/saiful/pingsut.git
Username for 'https://rujak.id': saiful
Password for 'https://saiful@rujak.id': 
To https://rujak.id/saiful/pingsut.git
! [rejected]        townhall -&gt; townhall (non-fast-forward)
error: failed to push some refs to 'https://rujak.id/saiful/pingsut.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
</code></pre>

<p>To be continue&hellip;</p>

