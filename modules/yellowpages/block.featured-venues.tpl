{if !empty($featuredVenues)}
    <div class="ia-items featured-pages">
        {foreach $featuredVenues as $entry}
            <div class="ia-item--alt">
                <div class="ia-item">
                    <a class="ia-item__image" href="{$entry.link}">
                        {ia_image file=$entry.image width=50 title=$entry.venue_title class='img-responsive' type='thumbnail'}
                    </a>

                    <div class="ia-item__content">
                        {ia_hooker name='smartyItemBlockBeforeTitle'}
                        <div class="ia-item__title">{ia_url type='link' item=$entry.item data=$entry text=$entry.venue_title}</div>
                        <p><span class="fa fa-map-marker"></span> {$entry.address},
                            {ia_url item='ylocs' type='link' data=$entry text=$entry.location}{if !empty($entry.zipcode)} {$entry.zipcode}{/if}
                        </p>
                        <p><span class="fa fa-phone"></span> {$entry.phone}</p>
                    </div>
                </div>
            </div>
        {/foreach}
    </div>
{/if}