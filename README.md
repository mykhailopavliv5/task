# README
1. git clone git@github.com:mykhailopavliv5/task.git
2. bundle
3. yarn install
4. yarn build && yarn build:css
5. rails db:create && rails db:migrate
6. gem install foreman
7. create Procfile.dev in root
    ```
    web: ruby bin/rails server -p 3000
    js: yarn build --watch
    css: yarn build:css --watch
    ```
8. foreman start -f Procfile.dev
