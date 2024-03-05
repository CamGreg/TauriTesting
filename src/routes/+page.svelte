<script>
	import Counter from './Counter.svelte';
	import { appWindow } from '@tauri-apps/api/window';
	// appWindow.setFullscreen(true);
	// document.addEventListener('contextmenu', (event) => event.preventDefault());
</script>

<main class="MainBox">
	<Counter />

	<a class="a" href="/about">about</a>
</main>

<style>
	.a {
		font-size: 3vh;
	}
</style>
