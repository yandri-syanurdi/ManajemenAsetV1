<?php

namespace App\Http\Middleware;

use Closure;

class AutentikasiWeb
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if($request->session()->has('id'))
        {
            return $next($request);
        }
        $request->session()->flash('alert.type', 'error');
        $request->session()->flash('alert.text', 'Anda harus login terlebih dahulu!');
        return redirect('/');
    }
}
