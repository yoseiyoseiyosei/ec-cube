<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2008 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
*}-->
<!--★★メインコンテンツ★★-->
<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->" enctype="multipart/form-data" onSubmit="winSubmit('','form1', 'upload', 500, 400)">
<input type="hidden" name="mode" value="csv_upload" />
<div id="products" class="contents-main">
  <h2>カテゴリ登録CSV</h2>

  <!--{if $tpl_errtitle != ""}-->
  <p>
    <span class="attention"><!--{$tpl_errtitle}--><br />
    <!--{foreach key=key item=item from=$arrCSVErr}-->
    <!--{$item}-->
    <!--{if $key != 'blank'}-->
    [値：<!--{$arrParam[$key]}-->]
    <!--{/if}-->
    <br />
    <!--{/foreach}-->
    </span>
  </p>
  <!--{/if}-->

  <!--▼登録テーブルここから-->
  <table class="form">
    <tr>
      <th>CSVファイル</th>
      <td>
        <!--{if $arrErr.csv_file}--><span class="attention"><!--{$arrErr.csv_file}--></span><!--{/if}-->
        <input type="file" name="csv_file" size="60" class="box60" /><span class="attention"> (1行目タイトル行)</span>
      </td>
    </tr>
    <tr>
      <th>登録情報</th>
      <td>
        <!--{foreach name=title key=key item=item from=$arrTitle}-->
        <!--{$smarty.foreach.title.iteration}-->項目：<!--{$item}--><br>
        <!--{/foreach}-->
      </td>
    </tr>
  </table>
  <!--▲登録テーブルここまで-->
  <div class="btn">
    <button type="submit"><span>この内容で登録する</span></button>
  </div>
</div>
</form>
