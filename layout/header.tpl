{extends file="{$parent_template_path}/layout/header.tpl"}

{*CUSTOM_SG Color & backgroundcolor Topbar & NEW FONT*}
	{block name="head-resources" append}
		{if !empty($Einstellungen.template.colortheme.sg_head_ext_color) && $Einstellungen.template.colortheme.sg_head_ext_color|strlen > 1}
			<style>
				#sg_head_ext, #sg_head_ext a  { color: {$Einstellungen.template.colortheme.sg_head_ext_color} }
			</style>
		{/if}
		{if !empty($Einstellungen.template.colortheme.sg_head_ext) && $Einstellungen.template.colortheme.sg_head_ext|strlen > 1}
			<style>
				#sg_head_ext:before { background-color: {$Einstellungen.template.colortheme.sg_head_ext} }
			</style>
		{/if}
		<link href="https://fonts.googleapis.com/css?family=Baloo+Tammudu|Quicksand" rel="stylesheet">
	{/block}
{*//CUSTOM_SG Color & backgroundcolor Topbar*}


{*CUSTOM_SG Fügt Top_Extension hinzu*}
	{if $Einstellungen.template.header2.info != "no"}
		{block name="header-branding" prepend}
			{*CUSTOM_SG*}
				<ul id="sg_head_ext" class="list-inline horizontal hidden-xs">
				{if !empty($Einstellungen.template.header2.info1)}
					<li class="info" style="{$Einstellungen.template.header2.color}"><i class="fa fa-check" aria-hidden="true"></i> <span class="text_top">{$Einstellungen.template.header2.info1}</span></li>
				{/if}		
				{if !empty($Einstellungen.template.header2.info2)}
					<li class="info"><i class="fa fa-check" aria-hidden="true"></i> <span class="text_top">{$Einstellungen.template.header2.info2}</span></li>
				{/if}		
				{if !empty($Einstellungen.template.header2.info3)}
					<li class="info"><i class="fa fa-check" aria-hidden="true"></i> <span class="text_top">{$Einstellungen.template.header2.info3}</span></li>
				{/if}		
				{if !empty($Einstellungen.template.header2.info4)}
					<li class="info"><i class="fa fa-check" aria-hidden="true"></i> <span class="text_top">{$Einstellungen.template.header2.info4}</span></li>
				{/if}
				{include file='layout/_login.tpl'}
			</ul>
			{*//CUSTOM_SG*}
		{/block}
	{/if}
{*//CUSTOM_SG Fügt Top_Extension hinzu*}

		{block name="header-branding-top-bar"}
		{*CUSTOM DO NOT GEN Top-Bar}
			<div id="top-bar" class="text-right hidden-xs clearfix">
				{include file="layout/header_top_bar.tpl"}
			</div>
		{//DO NOT GEN Top-Bar CUSTOM*}
		{/block}

{*CUSTOM_SG Display Top-Badges on diff. Devices*}
	{block name="header-branding-content"}
	<div class="row">
		{*CUSTOM_SG Display Badges on XS-Devices*}
			{if $Einstellungen.template.sp_gfx.ssl == "yes" || $Einstellungen.template.sp_gfx.ts == "yes" || $Einstellungen.template.sp_gfx.hb == "yes" || $Einstellungen.template.sp_gfx.ek == "yes"}
				<div class="visible-xs visible-sm col-xs-12 col-sm-12 text-center" id="sg_sp_badges">
					<ul class="list-inline horizontal">
						{if $Einstellungen.template.sp_gfx.ssl == "yes"}
							<li><img class="sp_sg_gfx img-responsive" src="{$Einstellungen.template.sp_gfx.ssl_logo}" title="SSL" alt="SSL"/></li>
						{/if}	
						{if $Einstellungen.template.sp_gfx.ts == "yes"}
							<li><img class="sp_sg_gfx img-responsive" src="{$Einstellungen.template.sp_gfx.ts_logo}" title="Trusted Shop" alt="Trusted Shop"/></li>
						{/if}	
						{if $Einstellungen.template.sp_gfx.hb == "yes"}				
							<li><img class="sp_sg_gfx img-responsive" src="{$Einstellungen.template.sp_gfx.hb_logo}" title="Händlerbund" alt="Händlerbund"/></li>
						{/if}
						{if $Einstellungen.template.sp_gfx.ek == "yes"}
							<li><img class="sp_sg_gfx img-responsive" src="{$Einstellungen.template.sp_gfx.ek_logo}" title="eKomi" alt="eKomi"/></li>
						{/if}
					</ul>
				</div>
			{/if}
		{*//CUSTOM_SG Display Badges on XS-Devices*}	

		{*CUSTOM_SG Display on Medium-Large Devices LOGO | BADGES | SEARCH*}
			<div class="{*CUSTOM_SG*}col-xs-6 col-sm-4
			{if $Einstellungen.template.sp_gfx.ssl == "yes" || 
			$Einstellungen.template.sp_gfx.ts == "yes" ||
			$Einstellungen.template.sp_gfx.hb == "yes" ||
			$Einstellungen.template.sp_gfx.ek == "yes"} col-md-3{/if}{*//CUSTOM_SG*}" id="logo">
				{block name="logo"}
				<a href="{$ShopURL}" title="{$Einstellungen.global.global_shopname}">
					{if isset($ShopLogoURL)}
						{image src=$ShopLogoURL alt=$Einstellungen.global.global_shopname class="img-responsive"}
					{else}
						<span class="h1">{$Einstellungen.global.global_shopname}</span>
					{/if}
				</a>
				{/block}
			</div>
		
			{if $Einstellungen.template.sp_gfx.ssl == "yes" || $Einstellungen.template.sp_gfx.ts == "yes" || $Einstellungen.template.sp_gfx.hb == "yes" || $Einstellungen.template.sp_gfx.ek == "yes"}
				<div class="visible-md visible-lg col-md-6 col-lg-6 text-center" id="sg_sp_badges">
					<ul class="list-inline horizontal">
					{if $Einstellungen.template.sp_gfx.ssl == "yes"}
						<li><img class="sp_sg_gfx img-responsive" src="{$Einstellungen.template.sp_gfx.ssl_logo}" title="{$Einstellungen.template.sp_gfx.ssl}" alt="{$Einstellungen.template.sp_gfx.ssl}"/></li>
					{/if}	
					{if $Einstellungen.template.sp_gfx.ts == "yes"}
						<li><img class="sp_sg_gfx img-responsive" src="{$Einstellungen.template.sp_gfx.ts_logo}" title="{$Einstellungen.template.sp_gfx.ts}" alt="{$Einstellungen.template.sp_gfx.ts}"/></li>
					{/if}	
					{if $Einstellungen.template.sp_gfx.hb == "yes"}				
						<li><img class="sp_sg_gfx img-responsive" src="{$Einstellungen.template.sp_gfx.hb_logo}" title="{$Einstellungen.template.sp_gfx.hb}" alt="{$Einstellungen.template.sp_gfx.hb}"/></li>
					{/if}
					{if $Einstellungen.template.sp_gfx.ek == "yes"}
						<li><img class="sp_sg_gfx img-responsive" src="{$Einstellungen.template.sp_gfx.ek_logo}" title="{$Einstellungen.template.sp_gfx.ek}" alt="{$Einstellungen.template.sp_gfx.ek}"/></li>
					{/if}
					</ul>
				</div>
			{/if}

			<div class="{*CUSTOM_SG*}{if $Einstellungen.template.header2.info == "no"}head_1{/if} 
			col-xs-6 col-sm-8 
			{if $Einstellungen.template.sp_gfx.ssl == "yes" || 
			$Einstellungen.template.sp_gfx.ts == "yes" ||
			$Einstellungen.template.sp_gfx.hb == "yes" ||
			$Einstellungen.template.sp_gfx.ek == "yes"} col-md-3{/if}{*//CUSTOM_SG*}" id="shop-nav">
				{block name="header-branding-shop-nav"}
					{include file='layout/header_shop_nav.tpl'}
				{/block}
			</div>
		{*//CUSTOM_SG Display on Medium-Large Devices LOGO | BADGES | SEARCH*}
        <div id="search2" class="pull-right collapse visible-xs col-xs-12">
            <form action="navi.php" method="GET">
                <div class="input-group">
                    <input name="qs" type="text" class="form-control ac_input" placeholder="{lang key='search'}" autocomplete="off" />
                    <span class="input-group-addon">
                        <button type="submit">
                            <span class="fa fa-search"></span>
                        </button>
                    </span>
                </div>
            </form>
        </div>
		
	</div>
	{/block}
{*//CUSTOM_SG Display Top-Badges on diff. Devices*}	




