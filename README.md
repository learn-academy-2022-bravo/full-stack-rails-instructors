# Full-stack Rails App

Setup:
- Accept the assignment
- Create a Rails app
- Copy the line from GitHub and run in the Rails app: git remote add origin https://- github.com/learn-academy-2022-bravo/full-stack-rails-instructors.git
- Create the main branch
- Push an initial commit to main

Setup and Read Functionality:
- git checkout -b read-functionality
- create db
- create model: rails g model Herb name:string watered:string
- migrate
- create a couple items in the Rails console
- create a controller: rails g controller Herb
- `<%= %>`

READ

Index - all the things
Controller
```
def index
  @herbs = Herb.all
end
```
Route - `get 'herb' => 'herb#index'`
View - index.html.erb
```
<h1>Herb Garden App</h1>

<ul>
  <% @herbs.each do |herb| %>
    <li>
      <%= herb.name %>
    </li>
  <% end %>
</ul>
```

Show - one thing
Controller
```
def show
  @herb = Herb.find(params[:id])
end
```

Route - `get 'herb/:id' => 'herb#show'`
View - show.html.erb

```
<p>
  Name: <%= @herb.name %>
</p>
<p>
  Is watered? <%= @herb.watered %>
</p>
```

CREATE
- git checkout -b create-functionality
New
Controller
```
def new
  @herb = Herb.new
end
```

Route - `get 'herb/new' => 'herb#new', as: 'new_herb'`

View
```
<%= form_with model: @herb do |form| %>

  <%= form.label :name %>
  <%= form.text_field :name %>
  <br />
  <br />
  <%= form.label :watered %>
  <%= form.text_field :watered %>
  <br />
  <br />
  <%= form.submit "Add Herb" %>

<% end %>
```

Create
Controller
```
def create
  @herb = Herb.create(herb_params)
end

# anything below this line can only be accessed inside the scope of this class
private
# strong params:
def herb_params
  params.require(:herb).permit(:name, :watered)
end
```

Route - `post 'herb' => 'herb#create'`
View - button on form and redirect in controller method

---
- CRUD - create, read, update, delete
- http verbs - get, post, put, patch, delete
- RESTful routes - index, show, new, create, edit, update, destroy
