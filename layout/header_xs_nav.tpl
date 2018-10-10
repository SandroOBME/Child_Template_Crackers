{extends file="{$parent_template_path}/layout/header_xs_nav.tpl"}

	{block name="megamenu-xs-nav"}
	<div class="navbar-collapse">
		<ul class="nav navbar-nav navbar-left force-float">
			<li>
				<a href="#" class="offcanvas-toggle" data-toggle="offcanvas" data-target="#navbar-offcanvas">
					<i class="fa fa-bars"></i> {*CUSTOM*}{lang key="menu" section="custom"}{*//CUSTOM*}
				</a>
			</li>
		</ul>
		<ul class="nav navbar-nav navbar-right force-float action-nav">
			{if isset($smarty.session.Kunde) && isset($smarty.session.Kunde->kKunde) && $smarty.session.Kunde->kKunde > 0}
				<li>
					<a href="{get_static_route id='jtl.php'}?logout=1">
						<span class="fa fa-sign-out"></span>
					</a>
				</li>
			{/if}
			<li>
				<a href="{get_static_route id='jtl.php'}">
					<span class="fa fa-user"></span>
				</a>
			</li>
			<li>
				<a href="{get_static_route id='warenkorb.php'}">
					<span class="fa fa-shopping-cart"></span>
					{if $WarenkorbArtikelPositionenanzahl >= 1}
						<sup class="badge">
							<em>{$WarenkorbArtikelPositionenanzahl}</em>
						</sup>
					{/if}
					{*
					<span class="shopping-cart-label">{$WarensummeLocalized[$NettoPreise]}</span>
					*}
				</a>
			</li>
		</ul>{* /row *}
	</div>
	{/block}{* /block megamenu-xs-nav *}