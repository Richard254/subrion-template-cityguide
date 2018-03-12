{if !empty($featuredLocations[0])}
    <div class="b-section b-section--alt">
        <div class="b-section__title">
            <h2>{lang key='section_featured_locations_title'}</h2>
            <p>{lang key='section_featured_locations_tag'}</p>
        </div>

        <div class="b-section__content">
            <div class="container">
                <div class="row">
                    {foreach $featuredLocations[0] as $location}
                        <div class="col-md-4">
                            <div class="b-card b-card--2">
                                {$loc_img = "{$img}placeholder-category.png"}
                                {if !empty($location.location_image)}
                                    {$loc_img = "{ia_image file=$location.location_image url=true type='thumbnail'}"}
                                {/if}
                                <div class="b-card__image" style="background-image: url({$loc_img});">
                                    <a href="{$location.link}" class="b-card__image__title">{$location.title}</a>
                                </div>
                                <div class="b-card__content">
                                    {if !empty($featuredLocations[1][$location.id])}
                                        <ol>
                                            {foreach $featuredLocations[1][$location.id] as $entry}
                                                <li>
                                                    {if $entry.image}
                                                        {$entry_img = unserialize($entry.image)}
                                                        <img src="{$core.page.nonProtocolUrl}uploads/{$entry_img.path}" alt="">
                                                    {else}
                                                        <img src="{$img}no-preview.png" alt="">
                                                    {/if}
                                                    {ia_url item=$entry.link type='link' data=$entry text=$entry.venue_title}
                                                    <p><span class="fa fa-{if $entry.category_icon_class}{$entry.category_icon_class}{else}folder{/if}"></span> {$entry.category}</p>
                                                </li>
                                            {/foreach}
                                        </ol>
                                    {else}
                                        <p class="text-fade-50">{lang key='no_venues_here'}</p>
                                    {/if}
                                </div>
                            </div>
                        </div>

                        {if ($location@iteration % 3 == 0) && !$location@last}
                            </div>
                            <div class="row m-t">
                        {/if}
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
{/if}
