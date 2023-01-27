# Rails Devise JWT Auth for API Only Mode (Template)


## Usage

To use this template,

1. Click the Use Template button to create a new repository
2. Clone the new repository to your local machine
3. Run `bundle install`
4. Run `EDITOR="code --wait" rails credentials:edit`
5. Do a global find and replace for `rails_devise_jwt_template` with `your_project_name`
6. Run `rails db:create db:migrate`
7. Run `rails s` to start your api server on port 4000
8. Test out your [API using Postman](https://www.postman.com/orange-capsule-983544/workspace/rails-jwt)