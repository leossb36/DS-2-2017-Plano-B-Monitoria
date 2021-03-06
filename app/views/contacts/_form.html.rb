<%= form_with(model: info, local: true) do |form| %>
  <% if info.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(info.errors.count, "error") %> prohibited this info from being saved:</h2>

      <ul>
      <% info.errors.full_messages.each do |message| %>
        <li><%= message %></li>
      <% end %>
      </ul>
    </div>
  <% end %>

  <div class="form-group">
    <label>Título da notícia:</label>
    <%= form.text_field :titulo, id: :info_titulo %>
    <small class="form-text text-muted">Digite o título da notícia.</small>
  </div>

  <div class="form-group">
    <label>Texto:</label>
    <%= form.text_area :texto, id: :info_texto %>
    <small class="form-text text-muted">Faça o texto da notícia.</small>
  </div>

  <div class="form-group">
    <label>Imagem:</label>
    <%= form.file_field :image %>
    <small class="form-text text-muted">Insira a imagem para a notícia.</small>
  </div>


  <div class="actions">
    <%= form.submit :Submit, class:'btn planob-button-submit' %>
  </div>

<% end %>