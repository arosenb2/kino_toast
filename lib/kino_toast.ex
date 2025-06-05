defmodule Kino.Toast do
  @moduledoc """
  A Kino component for displaying toast-style notifications in Elixir Livebook apps.
  This module provides a simple way to create and manage toast notifications
  with various styles such as info, success, warning, and error.

  ## Usage

  To use this module, first create a new toast instance:

  ```elixir
  container = Kino.Toast.new(max_toasts: 5, dismiss_after: 5000)
  ```

  Then, you can queue toasts to be displayed:

  ```elixir
  Kino.Toast.queue(container, Kino.Toast.info("This is an info message"))
  Kino.Toast.queue(container, Kino.Toast.success("Operation completed successfully!"))
  ```

  ### Notes

  - Do not immediately queue a toast after creating the instance, as it requires a moment to connect to the LiveView.
  - If you have an idea for solving this, please open a pull request on the GitHub repository.

  ## Instance Options

  - `:max_toasts` - Maximum number of toasts to display at once (default: 3).
  - `:dismiss_after` - Time in milliseconds after which the toast will automatically dismiss (default: 3000).

  ## Toast Types

  - `Kino.Toast.info/2`: Creates an info toast with default styling.
  - `Kino.Toast.success/2`: Creates a success toast with default styling.
  - `Kino.Toast.warning/2`: Creates a warning toast with default styling.
  - `Kino.Toast.error/2`: Creates an error toast with default styling.
  - `Kino.Toast.custom/2`: Creates a custom toast with an icon or emoji.

  ## Customization

  You can customize the appearance of toasts by providing options such as `:icon`, `:emoji`, `:background_color`,
  and `:text_color` when creating a custom toast. The default styles can also be overridden by passing these options
  to the respective toast functions.

  ## Example of Custom Toast

  ```elixir
  Kino.Toast.custom("Custom toast with icon", icon: "bell", background_color: "#f0f0f0", text_color: "#333")
  ```
  """
  use Kino.JS
  use Kino.JS.Live

  @doc """
  Creates a new instance of the Kino.Toast component.
  """
  @doc section: :initialization
  def new(opts \\ []) do
    opts =
      opts
      |> Keyword.put_new(:max_toasts, 3)
      |> Keyword.put_new(:dismiss_after, 3000)

    Kino.JS.Live.new(__MODULE__, %{settings: opts})
  end

  @doc """
  Enqueue one or more toasts to be displayed in the toast container.
  """
  @doc section: :actions
  def queue(_toast, []), do: :ok
  def queue(_toast, nil), do: :ok

  def queue(toast, message) do
    if Keyword.keyword?(message) do
      Kino.JS.Live.cast(toast, {:append, [Map.new(message)]})
    else
      Kino.JS.Live.cast(toast, {:append, message})
    end
  end

  @doc """
  Creates an info toast with default styling.

  To customize, use `Kino.Toast.custom/2`.
  """
  @doc section: :types
  def info(html, opts \\ []) do
    ensure_no_icon_or_emoji!(opts, "info")

    [
      variant: "info",
      icon: "ℹ️",
      icon_type: :text,
      content_html: html,
      background_color: "#0d6efd",
      text_color: "#fff"
    ]
  end

  @doc """
  Creates a success toast with default styling.

  To customize, use `Kino.Toast.custom/2`.
  """
  @doc section: :types
  def success(html, opts \\ []) do
    ensure_no_icon_or_emoji!(opts, "success")

    [
      variant: "success",
      icon: "✅",
      icon_type: :text,
      content_html: html,
      background_color: "#198754",
      text_color: "#fff"
    ]
  end

  @doc """
  Creates a warning toast with default styling.

  To customize, use `Kino.Toast.custom/2`.
  """
  @doc section: :types
  def warning(html, opts \\ []) do
    ensure_no_icon_or_emoji!(opts, "warning")

    [
      variant: "warning",
      icon: "⚠️",
      icon_type: :text,
      content_html: html,
      background_color: "#ffc107",
      text_color: "#000"
    ]
  end

  @doc """
  Creates an error toast with default styling.

  To customize, use `Kino.Toast.custom/2`.
  """
  @doc section: :types
  def error(html, opts \\ []) do
    ensure_no_icon_or_emoji!(opts, "error")

    {icon_content, icon_type, icon_color} = normalize_icon(icon: "ban", text_color: "#fff")

    [
      variant: "danger",
      icon: icon_content,
      icon_type: icon_type,
      icon_color: icon_color,
      content_html: html,
      background_color: "#dc3545",
      text_color: "#fff"
    ]
  end

  @doc """
  Creates a custom toast with optional icon or emoji.

  Options:
  - `:icon` - FontAwesome icon class (e.g. "`bell`")
  - `:emoji` - Emoji character (e.g. "`🔔`")
  - `:background_color` - background color hex or CSS color string (default: "`#fff`")
  - `:text_color` - text color hex or CSS color string (default: "`#000`")

  If both `:icon` and `:emoji` are provided, raises ArgumentError.
  """
  @doc section: :custom
  def custom(html, opts \\ []) do
    opts =
      opts
      |> Keyword.put_new(:background_color, "#fff")
      |> Keyword.put_new(:text_color, "#000")

    {icon_content, icon_type, icon_color} = normalize_icon(opts)

    [
      variant: nil,
      icon: icon_content,
      icon_type: icon_type,
      icon_color: icon_color,
      content_html: html,
      background_color: Keyword.get(opts, :background_color),
      text_color: Keyword.get(opts, :text_color)
    ]
  end

  defp ensure_no_icon_or_emoji!(opts, name) do
    if Keyword.has_key?(opts, :icon) or Keyword.has_key?(opts, :emoji) do
      raise ArgumentError,
            "#{name}/2 does not accept `:icon` or `:emoji`. Use a custom toast map with Kino.Toast.queue/2 if you want to customize."
    end
  end

  defp normalize_icon(opts) do
    has_icon = Keyword.has_key?(opts, :icon)
    has_emoji = Keyword.has_key?(opts, :emoji)

    cond do
      has_icon and has_emoji ->
        raise ArgumentError, "Provide only one of `:icon` or `:emoji`, not both."

      has_icon ->
        icon = Keyword.fetch!(opts, :icon)

        unless Kino.Toast.Icons.valid?(to_string(icon)) do
          raise ArgumentError,
                ":icon must be one of the supported FontAwesome icons (#{to_string(icon)} is invalid)"
        end

        text_color = Keyword.get(opts, :text_color, "#fff")

        {
          Kino.Toast.Icons.html(to_string(icon), text_color),
          :html,
          text_color
        }

      has_emoji ->
        {opts[:emoji], :text, Keyword.get(opts, :text_color, "#000")}

      true ->
        {"", :text, Keyword.get(opts, :text_color, "#000")}
    end
  end

  @impl true
  def init(%{settings: opts}, ctx) do
    {:ok, assign(ctx, opts)}
  end

  @impl true
  def handle_connect(ctx) do
    payload = %{
      max_toasts: ctx.assigns[:max_toasts],
      dismiss_after: ctx.assigns[:dismiss_after]
    }

    {:ok, payload, assign(ctx, ctx.assigns)}
  end

  @impl true
  def handle_cast({:append, items}, ctx) do
    Enum.each(items, fn item ->
      item = if is_list(item), do: Map.new(item), else: item
      broadcast_event(ctx, "show_toast", Map.new(item))
    end)

    {:noreply, ctx}
  end

  asset "main.js" do
    """
    import "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.3/js/bootstrap.bundle.min.js";

    function injectStyles() {
      const refs = [
        'https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.3/css/bootstrap.min.css',
        'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css'
      ];

      refs.forEach(href => {
        if (!document.querySelector(`link[href="${href}"]`)) {
          const link = document.createElement("link");
          link.rel = "stylesheet";
          link.href = href;
          document.head.appendChild(link);
        }
      });

      const style = document.createElement("style");
      style.innerHTML = `
        .stacked-toast {
          position: relative !important;
          margin: 0.25rem 0;
        }
      `;
      document.head.appendChild(style);
    }

    export function init(ctx, payload) {
      injectStyles();

      let toastQueue = [];
      let activeToasts = 0;

      const MAX_TOASTS = payload.max_toasts;
      const DISMISS_AFTER = payload.dismiss_after;

      const container = document.createElement("div");
      container.id = "kino-toast-container";
      container.className = "p-3";
      container.style.width = "100%";
      container.style.display = "flex";
      container.style.flexDirection = "column";
      container.style.gap = "0.5rem";
      ctx.root.appendChild(container);

      ctx.handleEvent("show_toast", (opts) => {
        toastQueue.push(opts);

        maybeShowNextToast();
      });

      function maybeShowNextToast() {
        if (activeToasts >= MAX_TOASTS || toastQueue.length === 0) return;

        const opts = toastQueue.shift();
        showToast(opts);
      }

      function showToast(opts) {
        const toastDiv = document.createElement("div");
        toastDiv.className = `toast align-items-center border-0 w-100 stacked-toast`;
        toastDiv.setAttribute("role", "alert");
        toastDiv.setAttribute("aria-live", "assertive");
        toastDiv.setAttribute("aria-atomic", "true");
        toastDiv.style.width = "100%";
        toastDiv.style.boxSizing = "border-box";

        toastDiv.style.backgroundColor = opts.background_color || "#fff";
        toastDiv.style.color = opts.text_color || "#000";

        const body = document.createElement("div");
        body.className = "toast-body d-flex align-items-center gap-2";

        const icon = document.createElement("span");
        if (opts.icon_type === "html") {
          icon.innerHTML = opts.icon || "";
        } else {
          icon.textContent = opts.icon || "";
          if (opts.icon_color) {
            icon.style.color = opts.icon_color;
          }
        }

        const message = document.createElement("div");
        message.innerHTML = opts.content_html || "";

        const closeBtn = document.createElement("button");
        closeBtn.type = "button";
        closeBtn.className = "btn-close ms-auto";
        closeBtn.setAttribute("data-bs-dismiss", "toast");
        closeBtn.setAttribute("aria-label", "Close");

        body.appendChild(icon);
        body.appendChild(message);
        body.appendChild(closeBtn);
        toastDiv.appendChild(body);
        container.appendChild(toastDiv);

        const options = { autohide: opts.auto_dismiss ?? false };
        if (opts.auto_dismiss) options.delay = DISMISS_AFTER;

        const toast = new bootstrap.Toast(toastDiv, options);
        toast.show();
        activeToasts++;

        toastDiv.addEventListener("hidden.bs.toast", () => {
          toast.dispose();
          toastDiv.remove();
          activeToasts--;

          setTimeout(() => {
            maybeShowNextToast();
          }, 0);
        });
      }
    }
    """
  end
end
