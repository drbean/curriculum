#function web_caster () {
#    # toot auth | sed -nE '/ACTIVE/s/^.+(@[^[:space:]]+)[[:space:]].+$/drbean\1/p' > ur_auth && toot activate drbean@mstdn.jp && echo 'ADSL Wi-Fiルーターの欲 しい 人！に上げます。詳細は http://drbean.sdf.org/WebCaster3100SV.html' | toot post && toot activate drbean@mastodon-japan.net && echo 'ADSL Wi-Fiルーターの欲しい人 ！に上げます。詳細は http://drbean.sdf.org/WebCaster3100SV.html' | toot post && toot activate $(< ur_auth))'
#})'}

offer="ADSL Wi-Fiルーターの欲 しい 人！に上げます。詳細は http://drbean.sdf.org/WebCaster3100SV.html
https://www.ntt-west.co.jp/kiki/download/flets/3100sv/WBC3100SV_4th.pdf"

<<< $offer masto_master_messter mastodon-japan.net mstdn.jp

