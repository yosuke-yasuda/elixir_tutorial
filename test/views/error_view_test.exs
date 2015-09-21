defmodule PhoenixTutorial.ErrorViewTest do
  use PhoenixTutorial.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  @moduletag :error_view_case

  @tag error_view_case: "not_found"
  test "renders 404.html" do
    assert String.contains?(render_to_string(PhoenixTutorial.ErrorView, "404.html", []), "Sorry, the page you are looking for does not exist.")
  end

  test "render 500.html" do
    assert render_to_string(PhoenixTutorial.ErrorView, "500.html", []) ==
           "Server internal error"
  end

  test "render any other" do
    assert render_to_string(PhoenixTutorial.ErrorView, "505.html", []) ==
           "Server internal error"
  end
end
