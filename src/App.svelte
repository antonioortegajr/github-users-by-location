<script lang="ts">
	import Headline from "./components/Headline.svelte"
	import { apiData } from "./js/store"
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
	<div class="search">
		<input type=string bind:value={inputValue}>
		<button on:click={() => getData()}>Search</button>
	</div>
	<div class="profile-results">
		{#each $results.items as item}
		<a class="profile-item" href={item.html_url}>
			<img src={item.avatar_url} alt="github profile" />
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
		display: flex;
		flex-direction: column;
		align-items: center;
	}

	.search {
		display: flex;
		gap: .5rem;
	}

	.profile-results {
		margin-top: 1rem;
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}

	.profile-item {
		margin-bottom: 2.5rem;
	}

	a img {
		max-width: 400px;
	}

	@media (max-width: 500px) {
		a img {
			max-width: 280px;
		}
	}

	@media (max-width: 340px) {
		.search {
			max-width: 280px;
		}
	}
	
	@media (min-width: 640px) {
		main {
			max-width: none;
		}
		
	}
</style>