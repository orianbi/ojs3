{**
 * templates/submission/form/categories.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * Include categories for submissions.
 *}
{if is_array($categoryOptions) && !empty($categoryOptions)}
	{if $readOnly}
		{fbvFormSection title="grid.category.categories" list=true}
			{foreach from=$categoryOptions item="category" key="id"}
				{if in_array($id, $assignedCategories)}
					<li>{$category->getLocalizedTitle()|escape}</li>
				{/if}
			{/foreach}
		{/fbvFormSection}
	{else}
		{fbvFormSection list=true title="grid.category.categories"}
			{foreach from=$categoryOptions item="category" key="id"}
				{fbvElement type="checkbox" id="categories[]" value=$id checked=in_array($id, $categories) label=$category|escape translate=false}
			{/foreach}
		{/fbvFormSection}
	{/if}
{/if}
