{if !isset($bAjaxRequest) || !$bAjaxRequest}
    {include file='layout/header.tpl'}
{/if}
<div id="result-wrapper">
    {block name="productlist-header"}
    {include file='productlist/header.tpl'}
    {/block}
    
    {assign var='style' value='gallery'}
	{*CUSTOM*}
		{assign var='grid' value=$Einstellungen.template.sg_productlist_gallery.sg_grid}
	{*//CUSTOM*}
    {if isset($oErweiterteDarstellung->nDarstellung) && isset($Einstellungen.artikeluebersicht.artikeluebersicht_erw_darstellung) && $Einstellungen.artikeluebersicht.artikeluebersicht_erw_darstellung === 'Y'  && $oErweiterteDarstellung->nDarstellung == 1 
    || isset($Einstellungen.artikeluebersicht.artikeluebersicht_erw_darstellung_stdansicht) && $Einstellungen.artikeluebersicht.artikeluebersicht_erw_darstellung_stdansicht == 1}
        {assign var='style' value='list'}
        {assign var='grid' value='col-xs-12'}
    {/if}
    {if isset($Suchergebnisse->Fehler)}
        <p class="alert alert-danger">{$Suchergebnisse->Fehler}</p>
    {/if}
    
    {* Bestseller *}
    {if isset($oBestseller_arr) && $oBestseller_arr|@count > 0}
        {block name="productlist-bestseller"}
        {lang key='bestseller' section='global' assign='slidertitle'}
        {include file='snippets/product_slider.tpl' id='slider-top-products' productlist=$oBestseller_arr title=$slidertitle}
        {/block}
    {/if}
    
    {block name="productlist-results"}
    <div class="row {if $style !== 'list'}row-eq-height row-eq-img-height{/if} {$style}" id="product-list">
        {*CUSTOM*}{foreach name=artikel from=$Suchergebnisse->Artikel->elemente item=Artikel key=key} {*//CUSTOM*}
            <div class="product-wrapper {$grid}">
                {if $style === 'list'}
                    {include file='productlist/item_list.tpl' tplscope=$style}
                {else}
                    {include file='productlist/item_box.tpl' tplscope=$style class='thumbnail'}
                {/if}
            </div>
        {/foreach}
    </div>
    {/block}
    
    {block name="productlist-footer"}
    {include file='productlist/footer.tpl'}
    {/block}
</div>
{if !isset($bAjaxRequest) || !$bAjaxRequest}
    {include file='layout/footer.tpl'}
{/if}