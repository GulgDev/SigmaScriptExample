lib routes;

use js;
use ref;
use fn;

_history = js_get(js_window, "history");

path = ref(js_get(js_get(js_window, "location"), "pathname"));

on_route_changed = ref();

fn goto(newPath) {
    ref_set(path, newPath);
    js_call_method(_history, "pushState", "", "", "/SigmaScriptExample" @ newPath);
    call(ref_get(on_route_changed));
}