<div class="stretch">
<h1>All users</h1>
<ul>
<% @users.each do |user| %>
<li>
<%= link_to user.email, user %> |
<%= user.first_name %> |
<%= user.zip_code %><br><br>
<% if current_user.admin? && !current_user?(user) %>
| <%= link_to "| delete", user, method: :delete, data: { confirm: "Are You sure?" } %>
<% end %>
</li>
<% end %>
</ul>




<p>There are <%= User.count %> registered users.</p><br><br>

<p>There are <%= User.where(first_name: 'James').count %> users named James.</p><br><br>


<p>The Users with the name James are:</p><br><br>

<ul>
<% User.where(first_name: 'James').each do |user| %>
<li>
<%= link_to user.email, user %>
<%= user.first_name %><br><br>
</li>
<% end %>
</ul>

</div>











<div class="stretch">
<h1>Users In Your Area</h1>



<p>There are <%= User.count %> registered users.</p><br><br>

<p>There are <%= User.where(zip_code: current_user.zip_code).count %> registered users in zip code <%= current_user.zip_code %> </p><br><br>


<p>The Users with the name James are:</p><br><br>

<ul>
<% User.where(first_name: 'James').each do |user| %>
<li>
<%= link_to user.email, user %>
<%= user.first_name %><br><br>
</li>
<% end %>
</ul>

</div>





























<p>Users in your zip code also live in the following areas:</p><br><br>

<ul>
<% User.where(zip_code: current_user.zip_code).sort { |a,b| a.address_line_one <=> b.address_line_one }.each do |user| %>
<li>
<%= link_to user.address_line_one %>
<%= user.first_name %><br><br>
</li>
<% end %>
</ul>
<% end %>




</div>





<p>Users in your zip code also live in the following areas:</p><br><br>

<ul>
<% User.where(zip_code: current_user.zip_code && community_name: nil).sort { |a,b| a.address_line_one <=> b.address_line_one }.each do |user| %>
<li>
<%= link_to user.address_line_one %>
<%= user.first_name %><br><br>
</li>
<% end %>
</ul>
<% end %>



###############  This is set up perfectly #########

<div class="stretch">
<h1>Users In Your Area</h1>







<% if first_one_here? %>
<p>Well you're the first one here. </p><br><br>
<% else %>
<h2>There are <%= User.where(zip_code: current_user.zip_code).count %> registered users in zip code <%= current_user.zip_code %> </h2>


<p>The following communities have been registered in your zip code:</p><br><br>

<ul>
<% User.where(zip_code: current_user.zip_code).sort { |a,b| a.community_name <=> b.community_name }.each do |user| %>
<% unless user.community_name.blank? %>
<li>
<%= link_to user.community_name, user %>
<%= user.first_name %><br><br>
</li>
<% end %>
<% end %>
</ul>



<p>Users in your zip code also live in the following areas:</p><br><br>

<ul>
<% User.where(zip_code: current_user.zip_code).sort { |a,b| a.address_line_one <=> b.address_line_one }.each do |user| %>
<% if user.community_name.blank? %>
<li>
<%= link_to user.address_line_one %>
<%= user.first_name %><br><br>
</li>
<% end %>
<% end %>
</ul>
<% end %>




</div>



</div>



################

<%= link_to("Join This Community?", action: "join_community", controller: 'users', method: 'post', params: { user: { community_id: @community.id }}) %><br><br><br><br><br><br>

<h3><%= link_to "Join This Community 3", {:controller => "communities", :action => "join_community", :community_id => @community.id} %></h3><br><br><br><br>



<<h3><%= link_to 'Join This Community', join_community_path(:community_id => @community_id), method: :post %></h3>




<%= form_for @user do |f| %>
<%= f.hidden_field :community_id, :value => "#{@community.id}" =%>
<%= f.submit "Assign Current User" =%>
<% end %>


#######################


This WORKS so don't lose it:

<%= link_to "Join the commmm", user_in_it_path(@user), method: 'post', :community_id => @community_id %><br><br><br><br><br><br><br><br><br><br>




  def in_it
    @user = User.find(current_user.id)
    @user.update_attribute(:community_id, @community_id)
    @user.save
    redirect_to @user
  end



  #########################

