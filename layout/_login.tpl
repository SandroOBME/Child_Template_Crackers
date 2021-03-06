{strip}
<ul class="header-shop-nav nav navbar-nav force-float horizontal pull-right {*CUSTOM_SG*}visible-md visible-lg{*//CUSTOM_SG*}">
    {*  COMPARE LIST *}
    {include file='layout/header_shop_nav_compare.tpl'}
    {*  COMPARE LIST *}

    {*  WISH LIST *}
    {if isset($smarty.session.Wunschliste->kWunschliste) && $smarty.session.Wunschliste->CWunschlistePos_arr|count > 0}
    <li class="hidden-xs wish-list-menu">
        <a href="{get_static_route id='wunschliste.php'}" title="{lang key="goToWishlist" sektion="global"}" class="link_to_wishlist{if $Einstellungen.vergleichsliste.vergleichsliste_target === 'popup'} popup{/if}"><span class="fa fa-heart"></span><sup class="badge"><em>{$smarty.session.Wunschliste->CWunschlistePos_arr|count}</em></sup></a>
    </li>
    {/if}
    {*  WISH LIST *}
    {block name="navbar-top-user"}
    {*  ACCOUNT *}
    <li class="dropdown hidden-xs">
        {if empty($smarty.session.Kunde->kKunde)}
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-user"></i> <span class="hidden-xs hidden-sm"> {lang key="login" section="global"} </span> <i class="caret"></i>
            </a>
            <ul id="login-dropdown" class="dropdown-menu dropdown-menu-right">
                <li>
                    <form action="{get_static_route id='jtl.php' secure="true"}" method="post" class="form">
                        {$jtl_token}
                        <fieldset id="quick-login2">
                            <div class="form-group">
                                <input type="text" name="email" id="email_quick2" class="form-control" placeholder="{lang key='emailadress'}"/>
                            </div>
                            <div class="form-group">
                                <input type="password" name="passwort" id="password_quick2" class="form-control" placeholder="{lang key='password'}"/>
                            </div>
                            <div class="form-group">
                                <input type="hidden" name="login" value="1"/>
                                {if !empty($oRedirect->cURL)}
                                    {foreach name=parameter from=$oRedirect->oParameter_arr item=oParameter}
                                        <input type="hidden" name="{$oParameter->Name}" value="{$oParameter->Wert}" />
                                    {/foreach}
                                    <input type="hidden" name="r" value="{$oRedirect->nRedirect} "/>
                                    <input type="hidden" name="cURL" value="{$oRedirect->cURL}" />
                                {/if}
                                <button type="submit" id="submit-btn2" class="btn btn-primary btn-block">{lang key="login" section="global"}</button>
                            </div>
                        </fieldset>
                    </form>
                </li>
                <li><a href="{get_static_route id='pass.php'}" rel="nofollow">{lang key="forgotPassword" section="global"}</a></li>
                <li>
                    <a href="{get_static_route id='registrieren.php'}">{lang key="newHere" section="global"} {lang key="registerNow" section="global"}</a>
                </li>
            </ul>
        {else}
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <span class="fa fa-user"></span>
                <span class="hidden-xs hidden-sm hidden-md"> {lang key="hello" section="global"} {if $smarty.session.Kunde->cAnrede === 'w'}{$Anrede_w}{elseif $smarty.session.Kunde->cAnrede === 'm'}{$Anrede_m}{/if} {$smarty.session.Kunde->cNachname}</span>
                <span class="caret"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-right">
                <li>
                    <a href="{get_static_route id='jtl.php' secure="true"}">{lang key="myAccount" section="global"}</a>
                </li>
                <li>
                    <a href="{get_static_route id='jtl.php' secure="true"}?logout=1">{lang key="logOut" section="global"}</a>
                </li>
            </ul>
        {/if}
    </li>
    {if isset($smarty.session.Sprachen) && $smarty.session.Sprachen|@count > 1}
        <li class="language-dropdown dropdown hidden-xs">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-language"></i>
                <span class="caret"></span>
            </a>
            <ul id="language-dropdown-small" class="dropdown-menu dropdown-menu-right">
            {foreach from=$smarty.session.Sprachen item=Sprache}
                {if $Sprache->kSprache == $smarty.session.kSprache}
                    <li class="active lang-{$lang} hidden-xs"><a>{if $lang === 'ger'}{$Sprache->cNameDeutsch}{else}{$Sprache->cNameEnglisch}{/if}</a></li>
                {/if}
            {/foreach}
            {foreach from=$smarty.session.Sprachen item=oSprache}
                {if $oSprache->kSprache != $smarty.session.kSprache}
                    <li>
                        <a href="{$oSprache->cURL}" class="link_lang {$oSprache->cISO}" rel="nofollow">{if $lang === 'ger'}{$oSprache->cNameDeutsch}{else}{$oSprache->cNameEnglisch}{/if}</a>
                    </li>
                {/if}
            {/foreach}
            </ul>
        </li>
    {/if}
    {if isset($smarty.session.Waehrungen) && $smarty.session.Waehrungen|@count > 1}
        <li class="currency-dropdown dropdown hidden-xs">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                {if $smarty.session.Waehrung->cISO === 'EUR'}
                    <i class="fa fa-eur" title="{$smarty.session.Waehrung->cName}"></i>
                {elseif $smarty.session.Waehrung->cISO === 'USD'}
                    <i class="fa fa-usd" title="{$smarty.session.Waehrung->cName}"></i>
                {elseif $smarty.session.Waehrung->cISO === 'GBP'}
                    <i class="fa fa-gbp" title="{$smarty.session.Waehrung->cName}"></i>
                {else}
                    else{$smarty.session.Waehrung->cName}
                {/if} <span class="caret"></span>
            </a>
            <ul id="currency-dropdown-small" class="dropdown-menu dropdown-menu-right">
                {foreach from=$smarty.session.Waehrungen item=oWaehrung}
                    <li>
                        <a href="{$oWaehrung->cURL}" rel="nofollow">{$oWaehrung->cName}</a>
                    </li>
                {/foreach}
            </ul>
        </li>
    {/if}
    {*  CART *}
    <li class="hidden-xs cart-menu dropdown{if $WarenkorbArtikelanzahl >= 1} items{/if}{if $nSeitenTyp == 3} current{/if}" data-toggle="basket-items">
        {include file='basket/cart_dropdown_label.tpl'}
    </li>
    {*  CART END *}
    {/block}{* /navbar-top-user *}
</ul>{* /shop-nav *}
{/strip}