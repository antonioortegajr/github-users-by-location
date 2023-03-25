<script lang="ts">
	import Headline from "./components/Headline.svelte"
	import { apiData, drinkNames } from "./js/store"
	export let inputValue = ""
	export let results = apiData

	async function getData() {
        // Make the API Call here
		const githubApiUrl = `https://api.github.com/search/users?q=location:${inputValue}&page=20&per_page=10`
		fetch(githubApiUrl)
  		.then(async response => {
			const resultsData = await response.json()
			apiData.set(resultsData)
		})
    }
</script>

<main>
	<Headline />
	<input type=string bind:value={inputValue}>
	<button on:click={() => getData()}>Search</button>
	<div>
		{#each $results.items as item}
		<a href={item.html_url}>
			<!-- svelte-ignore a11y-img-redundant-alt -->
			<img src={item.avatar_url} alt="github profile image" />
			<div>{item.login}</div>
		</a>
	{/each}
	</div>
</main>

<style>
	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}
	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>