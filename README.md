# Example: Laravel Login/Register with Modal Popups

Repository for this article: [Laravel: Login and Register Forms in Modal Bootstrap Popups](https://quickadminpanel.com/blog/laravel-login-and-register-forms-in-modal-bootstrap-popups/)

![Laravel Login Modal Form](https://quickadminpanel.com/blog/wp-content/uploads/2020/02/Screen-Shot-2020-02-24-at-11.53.28-AM.png)

- - - - -

![Laravel Register Modal Form](https://quickadminpanel.com/blog/wp-content/uploads/2020/02/Screen-Shot-2020-02-24-at-12.21.38-PM.png)

- - - - -

## How to use

- Clone the repository with __git clone__
- Copy __.env.example__ file to __.env__ and edit database credentials there


- Fix Error "Root composer.json requires php ^7.3 but your php version (8.0.0) does not satisfy that requirement" [duplicate]

        "require": {
            "php": ">=7.3",
            .....
        },

Try to update this requirement to:

        "require": {
            "php": "^7.3||^8.0",
            .....
        },

- Run __composer install__    OR     __composer update__
- Run __php artisan key:generate__
- Run __php artisan migrate__
- That's it: launch the main URL.

- - - - -


## Github
- __git config --global user.email "you@example.com"__
- __git init__
- __git add .__
- __git commit -m "Ok"__
- __git push origin main__
