defmodule HologramSkeleton.Bug do
  defmodule Layout do
    use Hologram.Component

    alias Hologram.UI.Runtime

    prop :fullscreen, :boolean, default: false
    prop :page_title, :string, default: nil

    def template do
      ~H"""
      <!DOCTYPE html>
      <html lang="en" class="[scrollbar-gutter:stable]">
        <head>
          <Runtime />
        </head>
        <body>
          <slot />
        </body>
      </html>
      """
    end
  end

  use Hologram.Page

  route "/bug"

  layout Layout

  def template do
    ~H"""
    """
  end
end
