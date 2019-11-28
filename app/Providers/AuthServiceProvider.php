<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Laravel\Passport\Passport;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Product' => 'App\Policies\ProductPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        /**
         * habilita rotas seguras do passport
         */
        Passport::routes();
        /**
         * habilita impricit grant
         */
        Passport::enableImplicitGrant();
        /**
         * configura tempo de expiração do token
         */
        Passport::tokensExpireIn(\Carbon\Carbon::now()->addDay(1));
        /**
         * configura tempo de expiração do refresh token
         */
        Passport::refreshTokensExpireIn(\Carbon\Carbon::now()->addDay(1));
    }
}
