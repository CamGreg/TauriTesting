<script lang="ts">
	let isHighlighted = true;
</script>

<button on:click={() => (isHighlighted = !isHighlighted)} class:highlighted={isHighlighted}>
	<svg aria-hidden="true" viewBox="0 0 1 1">
		<path d="M0,0.5 L1,0.5" />
	</svg>
</button>

<style>
	button {
		border: none;
		color: white;
		padding: 15px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		margin: 4px 2px;
		cursor: pointer;
		border-radius: 0.6ex;
		background: linear-gradient(darkgrey, dimgray 70%);
		height: 4vh;
		width: 8vh;
	}
	button:active {
		background: darkgrey;
	}
	.highlighted {
		background: linear-gradient(darkgrey, orange 70%);
	}
</style>
