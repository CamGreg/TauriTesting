<script>
	import Counter from './Counter.svelte';
	import { appWindow } from '@tauri-apps/api/window';
	appWindow.setFullscreen(true);
	document.addEventListener('contextmenu', (event) => event.preventDefault());
</script>

<Counter />
