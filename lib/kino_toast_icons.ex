defmodule Kino.Toast.Icons do
  @moduledoc """
  Provides a type-safe list of all supported free FontAwesome icons.
  """

  @icons [
    "house",
    "circle-user",
    "image",
    "file",
    "camera",
    "calendar",
    "cloud",
    "truck",
    "thumbs-up",
    "face-smile",
    "headphones",
    "bell",
    "user",
    "comment",
    "envelope",
    "magnifying-glass",
    "check",
    "download",
    "font-awesome",
    "web-awesome",
    "phone",
    "bars",
    "star",
    "location-dot",
    "music",
    "wand-magic-sparkles",
    "heart",
    "arrow-right",
    "circle-xmark",
    "bomb",
    "poo",
    "camera-retro",
    "xmark",
    "caret-up",
    "truck-fast",
    "pen-nib",
    "arrow-up",
    "hippo",
    "calendar-days",
    "paperclip",
    "shield-halved",
    "cart-shopping",
    "clipboard",
    "filter",
    "circle-info",
    "arrow-up-from-bracket",
    "bolt",
    "car",
    "ghost",
    "mug-hot",
    "pen",
    "umbrella",
    "gift",
    "film",
    "list",
    "gear",
    "trash",
    "circle-up",
    "circle-down",
    "inbox",
    "rotate-right",
    "lock",
    "barcode",
    "tag",
    "book",
    "bookmark",
    "print",
    "font",
    "video",
    "circle-half-stroke",
    "droplet",
    "pen-to-square",
    "share-from-square",
    "plus",
    "minus",
    "share",
    "circle-exclamation",
    "fire",
    "eye",
    "eye-slash",
    "plane",
    "magnet",
    "hand",
    "folder",
    "folder-open",
    "money-bill",
    "thumbs-down",
    "comments",
    "lemon",
    "key",
    "thumbtack",
    "gears",
    "paper-plane",
    "code",
    "globe",
    "city",
    "ticket",
    "tree",
    "wifi",
    "paint-roller",
    "bicycle",
    "sliders",
    "brush",
    "hashtag",
    "flask",
    "briefcase",
    "compass",
    "dumpster-fire",
    "person",
    "person-dress",
    "address-book",
    "bath",
    "handshake",
    "snowflake",
    "right-to-bracket",
    "earth-americas",
    "cloud-arrow-up",
    "binoculars",
    "palette",
    "layer-group",
    "users",
    "gamepad",
    "business-time",
    "feather",
    "sun",
    "link",
    "pen-fancy",
    "fish",
    "bug",
    "shop",
    "mug-saucer",
    "landmark",
    "poo-storm",
    "chart-simple",
    "shirt",
    "anchor",
    "quote-left",
    "bag-shopping",
    "gauge",
    "code-compare",
    "user-secret",
    "stethoscope",
    "car-side",
    "hand-holding-heart",
    "truck-front",
    "cable-car",
    "mountain-sun",
    "location-pin",
    "info",
    "user-minus",
    "cart-plus",
    "clock",
    "circle",
    "play",
    "cross",
    "backward",
    "handshake-slash",
    "chevron-up",
    "passport",
    "question",
    "pencil",
    "phone-volume",
    "upload",
    "strikethrough",
    "credit-card",
    "street-view",
    "database",
    "copy",
    "mobile",
    "square",
    "sort",
    "forward",
    "hourglass-start",
    "newspaper",
    "notes-medical",
    "table",
    "building",
    "stop",
    "store",
    "flag",
    "file-excel",
    "network-wired",
    "cash-register",
    "file-export",
    "hand-point-up",
    "angle-up",
    "shield",
    "address-card",
    "expand",
    "flag-checkered",
    "quote-right",
    "tags",
    "server",
    "user-nurse",
    "video-slash",
    "arrow-down",
    "blog",
    "school",
    "file-invoice",
    "rocket",
    "spinner",
    "tty",
    "exclamation",
    "water",
    "registered",
    "signature",
    "laptop",
    "restroom",
    "power-off",
    "sitemap",
    "icons",
    "desktop",
    "moon",
    "calendar-week",
    "pause",
    "file-word",
    "vials",
    "language",
    "door-open",
    "brain",
    "hotel",
    "marker",
    "star-of-life",
    "leaf",
    "walkie-talkie",
    "shower",
    "caret-down",
    "file-import",
    "place-of-worship",
    "wallet",
    "slash",
    "award",
    "toggle-on",
    "ship",
    "chalkboard",
    "hands",
    "signal",
    "motorcycle",
    "arrow-up-right-from-square",
    "audio-description",
    "seedling",
    "closed-captioning",
    "train",
    "arrow-left",
    "wrench",
    "microchip",
    "record-vinyl",
    "trophy",
    "hammer",
    "diamond",
    "robot",
    "file-pdf",
    "hospital",
    "file-contract",
    "square-xmark",
    "square-check",
    "crown",
    "user-plus",
    "virus",
    "child",
    "repeat",
    "cube",
    "copyright",
    "medal",
    "bullseye",
    "mask",
    "circle-check",
    "radio",
    "reply",
    "chair",
    "route",
    "plug",
    "calculator",
    "dragon",
    "certificate",
    "fingerprint",
    "road",
    "crosshairs",
    "heading",
    "percent",
    "user-tie",
    "square-minus",
    "i-cursor",
    "church",
    "joint",
    "comments-dollar",
    "truck-monster",
    "recycle",
    "warehouse",
    "ruler",
    "soap",
    "scroll",
    "coins",
    "wind",
    "baby",
    "lightbulb",
    "voicemail",
    "puzzle-piece",
    "keyboard",
    "clone",
    "eraser",
    "wine-bottle",
    "dice",
    "receipt",
    "ring",
    "unlock",
    "solar-panel",
    "ruler-vertical",
    "circle-notch",
    "people-arrows",
    "dollar-sign",
    "tablet",
    "not-equal",
    "glasses",
    "headset",
    "code-branch",
    "gopuram",
    "images",
    "window-restore",
    "industry",
    "stamp",
    "microphone-slash",
    "cookie-bite",
    "otter",
    "chevron-down",
    "kiwi-bird",
    "viruses",
    "umbrella-beach",
    "subscript",
    "tablets",
    "microphone",
    "border-none",
    "dumbbell",
    "plane-departure",
    "z",
    "yin-yang",
    "yen-sign",
    "y",
    "xmarks-lines",
    "x-ray",
    "x",
    "worm",
    "won-sign",
    "wine-glass-empty",
    "wine-glass",
    "window-minimize",
    "window-maximize",
    "whiskey-glass",
    "wheelchair-move",
    "wheelchair",
    "wheat-awn-circle-exclamation",
    "wheat-awn",
    "weight-scale",
    "weight-hanging",
    "wave-square",
    "water-ladder",
    "wand-sparkles",
    "wand-magic",
    "w",
    "vr-cardboard",
    "volume-xmark",
    "volume-off",
    "volume-low",
    "volume-high",
    "volleyball",
    "volcano",
    "virus-slash",
    "virus-covid-slash",
    "virus-covid",
    "vihara",
    "vial-virus",
    "vial-circle-check",
    "vial",
    "vest-patches",
    "vest",
    "venus-mars",
    "venus-double",
    "venus",
    "vector-square",
    "vault",
    "van-shuttle",
    "v",
    "utensils",
    "users-viewfinder",
    "users-slash",
    "users-rectangle",
    "users-rays",
    "users-line",
    "users-gear",
    "users-between-lines",
    "user-xmark",
    "user-tag",
    "user-slash",
    "user-shield",
    "user-pen",
    "user-ninja",
    "user-lock",
    "user-large-slash",
    "user-large",
    "user-injured",
    "user-group",
    "user-graduate",
    "user-gear",
    "user-doctor",
    "user-clock",
    "user-check",
    "user-astronaut",
    "up-right-from-square",
    "up-right-and-down-left-from-center",
    "up-long",
    "up-down-left-right",
    "up-down",
    "unlock-keyhole",
    "universal-access",
    "underline",
    "u",
    "tv",
    "turn-up",
    "turn-down",
    "turkish-lira-sign",
    "truck-ramp-box",
    "truck-plane",
    "truck-pickup",
    "truck-moving",
    "truck-medical",
    "truck-field-un",
    "truck-field",
    "truck-droplet",
    "truck-arrow-right",
    "trowel-bricks",
    "trowel",
    "triangle-exclamation",
    "tree-city",
    "trash-can-arrow-up",
    "trash-can",
    "trash-arrow-up",
    "transgender",
    "train-tram",
    "train-subway",
    "trailer",
    "traffic-light",
    "trademark",
    "tractor",
    "tower-observation",
    "tower-cell",
    "tower-broadcast",
    "tornado",
    "torii-gate",
    "tooth",
    "toolbox",
    "toilets-portable",
    "toilet-portable",
    "toilet-paper-slash",
    "toilet-paper",
    "toilet",
    "toggle-off",
    "timeline",
    "ticket-simple",
    "thumbtack-slash",
    "thermometer",
    "text-width",
    "text-slash",
    "text-height",
    "terminal",
    "tents",
    "tent-arrows-down",
    "tent-arrow-turn-left",
    "tent-arrow-left-right",
    "tent-arrow-down-to-line",
    "tent",
    "tenge-sign",
    "temperature-three-quarters",
    "temperature-quarter",
    "temperature-low",
    "temperature-high",
    "temperature-half",
    "temperature-full",
    "temperature-empty",
    "temperature-arrow-up",
    "temperature-arrow-down",
    "teeth-open",
    "teeth",
    "taxi",
    "tarp-droplet",
    "tarp",
    "tape",
    "tachograph-digital",
    "tablet-screen-button",
    "tablet-button",
    "table-tennis-paddle-ball",
    "table-list",
    "table-columns",
    "table-cells-row-unlock",
    "table-cells-row-lock",
    "table-cells-large",
    "table-cells-column-lock",
    "table-cells",
    "t",
    "syringe",
    "synagogue",
    "swatchbook",
    "superscript",
    "sun-plant-wilt",
    "suitcase-rolling",
    "suitcase-medical",
    "suitcase",
    "stroopwafel",
    "store-slash",
    "stopwatch-20",
    "stopwatch",
    "sterling-sign",
    "star-of-david",
    "star-half-stroke",
    "star-half",
    "star-and-crescent",
    "stapler",
    "stairs",
    "staff-snake",
    "square-virus",
    "square-up-right",
    "square-share-nodes",
    "square-rss",
    "square-root-variable",
    "square-poll-vertical",
    "square-poll-horizontal",
    "square-plus",
    "square-phone-flip",
    "square-phone",
    "square-person-confined",
    "square-pen",
    "square-parking",
    "square-nfi",
    "square-h",
    "square-full",
    "square-envelope",
    "square-caret-up",
    "square-caret-right",
    "square-caret-left",
    "square-caret-down",
    "square-binary",
    "square-arrow-up-right",
    "spray-can-sparkles",
    "spray-can",
    "spoon",
    "splotch",
    "spider",
    "spell-check",
    "spaghetti-monster-flying",
    "spa",
    "sort-up",
    "sort-down",
    "socks",
    "snowplow",
    "snowman",
    "smoking",
    "smog",
    "sleigh",
    "skull-crossbones",
    "skull",
    "sink",
    "sim-card",
    "signs-post",
    "sign-hanging",
    "shuttle-space",
    "shuffle",
    "shrimp",
    "shop-slash",
    "shop-lock",
    "shoe-prints",
    "shield-virus",
    "shield-heart",
    "shield-dog",
    "shield-cat",
    "shekel-sign",
    "sheet-plastic",
    "share-nodes",
    "shapes",
    "section",
    "sd-card",
    "scroll-torah",
    "screwdriver-wrench",
    "screwdriver",
    "scissors",
    "school-lock",
    "school-flag",
    "school-circle-xmark",
    "school-circle-exclamation",
    "school-circle-check",
    "scale-unbalanced-flip",
    "scale-unbalanced",
    "scale-balanced",
    "satellite-dish",
    "satellite",
    "sailboat",
    "sack-xmark",
    "sack-dollar",
    "s",
    "rupiah-sign",
    "rupee-sign",
    "ruler-horizontal",
    "ruler-combined",
    "rug",
    "ruble-sign",
    "rss",
    "rotate-left",
    "rotate",
    "road-spikes",
    "road-lock",
    "road-circle-xmark",
    "road-circle-exclamation",
    "road-circle-check",
    "road-bridge",
    "road-barrier",
    "right-long",
    "right-left",
    "right-from-bracket",
    "ribbon",
    "retweet",
    "republican",
    "reply-all",
    "rectangle-xmark",
    "rectangle-list",
    "rectangle-ad",
    "ranking-star",
    "rainbow",
    "radiation",
    "r",
    "qrcode",
    "q",
    "pump-soap",
    "pump-medical",
    "prescription-bottle-medical",
    "prescription-bottle",
    "prescription",
    "poop",
    "podcast",
    "plus-minus",
    "plug-circle-xmark",
    "plug-circle-plus",
    "plug-circle-minus",
    "plug-circle-exclamation",
    "plug-circle-check",
    "plug-circle-bolt",
    "plate-wheat",
    "plant-wilt",
    "plane-up",
    "plane-slash",
    "plane-lock",
    "plane-circle-xmark",
    "plane-circle-exclamation",
    "plane-circle-check",
    "plane-arrival",
    "pizza-slice",
    "pills",
    "piggy-bank",
    "photo-film",
    "phone-slash",
    "phone-flip",
    "peso-sign",
    "peseta-sign",
    "person-walking-with-cane",
    "person-walking-luggage",
    "person-walking-dashed-line-arrow-right",
    "person-walking-arrow-right",
    "person-walking-arrow-loop-left",
    "person-walking",
    "person-through-window",
    "person-swimming",
    "person-snowboarding",
    "person-skiing-nordic",
    "person-skiing",
    "person-skating",
    "person-shelter",
    "person-running",
    "person-rifle",
    "person-rays",
    "person-pregnant",
    "person-praying",
    "person-military-to-person",
    "person-military-rifle",
    "person-military-pointing",
    "person-hiking",
    "person-harassing",
    "person-half-dress",
    "person-falling-burst",
    "person-falling",
    "person-drowning",
    "person-dress-burst",
    "person-dots-from-line",
    "person-digging",
    "person-circle-xmark",
    "person-circle-question",
    "person-circle-plus",
    "person-circle-minus",
    "person-circle-exclamation",
    "person-circle-check",
    "person-chalkboard",
    "person-cane",
    "person-burst",
    "person-breastfeeding",
    "person-booth",
    "person-biking",
    "person-arrow-up-from-line",
    "person-arrow-down-to-line",
    "pepper-hot",
    "people-roof",
    "people-robbery",
    "people-pulling",
    "people-line",
    "people-group",
    "people-carry-box",
    "pen-ruler",
    "pen-clip",
    "peace",
    "paw",
    "paste",
    "paragraph",
    "parachute-box",
    "panorama",
    "pallet",
    "paintbrush",
    "pager",
    "p",
    "outdent",
    "om",
    "oil-well",
    "oil-can",
    "object-ungroup",
    "object-group",
    "o",
    "note-sticky",
    "notdef",
    "neuter",
    "naira-sign",
    "n",
    "mountain-city",
    "mountain",
    "mound",
    "mosquito-net",
    "mosquito",
    "mosque",
    "mortar-pestle",
    "monument",
    "money-check-dollar",
    "money-check",
    "money-bills",
    "money-bill-wheat",
    "money-bill-wave",
    "money-bill-trend-up",
    "money-bill-transfer",
    "money-bill-1-wave",
    "money-bill-1",
    "mobile-screen-button",
    "mobile-screen",
    "mobile-retro",
    "mobile-button",
    "mitten",
    "minimize",
    "mill-sign",
    "microscope",
    "microphone-lines-slash",
    "microphone-lines",
    "meteor",
    "message",
    "mercury",
    "menorah",
    "memory",
    "maximize",
    "mattress-pillow",
    "masks-theater",
    "mask-ventilator",
    "mask-face",
    "martini-glass-empty",
    "martini-glass-citrus",
    "martini-glass",
    "mars-stroke-up",
    "mars-stroke-right",
    "mars-stroke",
    "mars-double",
    "mars-and-venus-burst",
    "mars-and-venus",
    "mars",
    "map-pin",
    "map-location-dot",
    "map-location",
    "map",
    "manat-sign",
    "magnifying-glass-plus",
    "magnifying-glass-minus",
    "magnifying-glass-location",
    "magnifying-glass-dollar",
    "magnifying-glass-chart",
    "magnifying-glass-arrow-right",
    "m",
    "lungs-virus",
    "lungs",
    "locust",
    "lock-open",
    "location-pin-lock",
    "location-crosshairs",
    "location-arrow",
    "litecoin-sign",
    "list-ul",
    "list-ol",
    "list-check",
    "lira-sign",
    "link-slash",
    "lines-leaning",
    "life-ring",
    "less-than-equal",
    "less-than",
    "left-right",
    "left-long",
    "lari-sign",
    "laptop-medical",
    "laptop-file",
    "laptop-code",
    "landmark-flag",
    "landmark-dome",
    "land-mine-on",
    "l",
    "kitchen-set",
    "kit-medical",
    "kip-sign",
    "khanda",
    "kaaba",
    "k",
    "jug-detergent",
    "jet-fighter-up",
    "jet-fighter",
    "jedi",
    "jar-wheat",
    "jar",
    "j",
    "italic",
    "infinity",
    "indian-rupee-sign",
    "indent",
    "image-portrait",
    "igloo",
    "id-card-clip",
    "id-card",
    "id-badge",
    "icicles",
    "ice-cream",
    "i",
    "hurricane",
    "hryvnia-sign",
    "house-user",
    "house-tsunami",
    "house-signal",
    "house-medical-flag",
    "house-medical-circle-xmark",
    "house-medical-circle-exclamation",
    "house-medical-circle-check",
    "house-medical",
    "house-lock",
    "house-laptop",
    "house-flood-water-circle-arrow-right",
    "house-flood-water",
    "house-flag",
    "house-fire",
    "house-crack",
    "house-circle-xmark",
    "house-circle-exclamation",
    "house-circle-check",
    "house-chimney-window",
    "house-chimney-user",
    "house-chimney-medical",
    "house-chimney-crack",
    "house-chimney",
    "hourglass-half",
    "hourglass-end",
    "hourglass",
    "hotdog",
    "hot-tub-person",
    "hospital-user",
    "horse-head",
    "horse",
    "holly-berry",
    "hockey-puck",
    "hill-rockslide",
    "hill-avalanche",
    "highlighter",
    "hexagon-nodes-bolt",
    "hexagon-nodes",
    "helmet-un",
    "helmet-safety",
    "helicopter-symbol",
    "helicopter",
    "heart-pulse",
    "heart-crack",
    "heart-circle-xmark",
    "heart-circle-plus",
    "heart-circle-minus",
    "heart-circle-exclamation",
    "heart-circle-check",
    "heart-circle-bolt",
    "headphones-simple",
    "head-side-virus",
    "head-side-mask",
    "head-side-cough-slash",
    "head-side-cough",
    "hat-wizard",
    "hat-cowboy-side",
    "hat-cowboy",
    "hard-drive",
    "hanukiah",
    "handshake-simple-slash",
    "handshake-simple",
    "handshake-angle",
    "hands-praying",
    "hands-holding-circle",
    "hands-holding-child",
    "hands-holding",
    "hands-clapping",
    "hands-bubbles",
    "hands-bound",
    "hands-asl-interpreting",
    "handcuffs",
    "hand-spock",
    "hand-sparkles",
    "hand-scissors",
    "hand-pointer",
    "hand-point-right",
    "hand-point-left",
    "hand-point-down",
    "hand-peace",
    "hand-middle-finger",
    "hand-lizard",
    "hand-holding-medical",
    "hand-holding-hand",
    "hand-holding-droplet",
    "hand-holding-dollar",
    "hand-holding",
    "hand-fist",
    "hand-dots",
    "hand-back-fist",
    "hamsa",
    "h",
    "gun",
    "guitar",
    "guarani-sign",
    "group-arrows-rotate",
    "grip-vertical",
    "grip-lines-vertical",
    "grip-lines",
    "grip",
    "greater-than-equal",
    "greater-than",
    "graduation-cap",
    "golf-ball-tee",
    "glass-water-droplet",
    "glass-water",
    "gifts",
    "genderless",
    "gem",
    "gavel",
    "gauge-simple-high",
    "gauge-simple",
    "gauge-high",
    "gas-pump",
    "g",
    "futbol",
    "frog",
    "franc-sign",
    "forward-step",
    "forward-fast",
    "football",
    "folder-tree",
    "folder-plus",
    "folder-minus",
    "folder-closed",
    "florin-sign",
    "floppy-disk",
    "flask-vial",
    "flag-usa",
    "fish-fins",
    "fire-flame-simple",
    "fire-flame-curved",
    "fire-extinguisher",
    "fire-burner",
    "filter-circle-xmark",
    "filter-circle-dollar",
    "fill-drip",
    "fill",
    "file-zipper",
    "file-waveform",
    "file-video",
    "file-signature",
    "file-shield",
    "file-prescription",
    "file-powerpoint",
    "file-pen",
    "file-medical",
    "file-lines",
    "file-invoice-dollar",
    "file-image",
    "file-half-dashed",
    "file-fragment",
    "file-csv",
    "file-code",
    "file-circle-xmark",
    "file-circle-question",
    "file-circle-plus",
    "file-circle-minus",
    "file-circle-exclamation",
    "file-circle-check",
    "file-audio",
    "file-arrow-up",
    "file-arrow-down",
    "ferry",
    "feather-pointed",
    "fax",
    "faucet-drip",
    "faucet",
    "fan",
    "face-tired",
    "face-surprise",
    "face-smile-wink",
    "face-smile-beam",
    "face-sad-tear",
    "face-sad-cry",
    "face-rolling-eyes",
    "face-meh-blank",
    "face-meh",
    "face-laugh-wink",
    "face-laugh-squint",
    "face-laugh-beam",
    "face-laugh",
    "face-kiss-wink-heart",
    "face-kiss-beam",
    "face-kiss",
    "face-grin-wink",
    "face-grin-wide",
    "face-grin-tongue-wink",
    "face-grin-tongue-squint",
    "face-grin-tongue",
    "face-grin-tears",
    "face-grin-stars",
    "face-grin-squint-tears",
    "face-grin-squint",
    "face-grin-hearts",
    "face-grin-beam-sweat",
    "face-grin-beam",
    "face-grin",
    "face-grimace",
    "face-frown-open",
    "face-frown",
    "face-flushed",
    "face-dizzy",
    "face-angry",
    "f",
    "eye-low-vision",
    "eye-dropper",
    "explosion",
    "euro-sign",
    "ethernet",
    "equals",
    "envelopes-bulk",
    "envelope-open-text",
    "envelope-open",
    "envelope-circle-check",
    "ellipsis-vertical",
    "ellipsis",
    "elevator",
    "eject",
    "egg",
    "earth-oceania",
    "earth-europe",
    "earth-asia",
    "earth-africa",
    "ear-listen",
    "ear-deaf",
    "e",
    "dungeon",
    "dumpster",
    "drumstick-bite",
    "drum-steelpan",
    "drum",
    "droplet-slash",
    "draw-polygon",
    "down-long",
    "down-left-and-up-right-to-center",
    "dove",
    "door-closed",
    "dong-sign",
    "dolly",
    "dog",
    "dna",
    "divide",
    "display",
    "disease",
    "dice-two",
    "dice-three",
    "dice-six",
    "dice-one",
    "dice-four",
    "dice-five",
    "dice-d6",
    "dice-d20",
    "diamond-turn-right",
    "diagram-successor",
    "diagram-project",
    "diagram-predecessor",
    "diagram-next",
    "dharmachakra",
    "democrat",
    "delete-left",
    "d",
    "cubes-stacked",
    "cubes",
    "cruzeiro-sign",
    "crutch",
    "crow",
    "crop-simple",
    "crop",
    "cow",
    "couch",
    "cookie",
    "computer-mouse",
    "computer",
    "compress",
    "compass-drafting",
    "compact-disc",
    "comment-sms",
    "comment-slash",
    "comment-nodes",
    "comment-medical",
    "comment-dots",
    "comment-dollar",
    "colon-sign",
    "code-pull-request",
    "code-merge",
    "code-fork",
    "code-commit",
    "clover",
    "cloud-sun-rain",
    "cloud-sun",
    "cloud-showers-water",
    "cloud-showers-heavy",
    "cloud-rain",
    "cloud-moon-rain",
    "cloud-moon",
    "cloud-meatball",
    "cloud-bolt",
    "cloud-arrow-down",
    "clock-rotate-left",
    "clipboard-user",
    "clipboard-question",
    "clipboard-list",
    "clipboard-check",
    "clapperboard",
    "circle-stop",
    "circle-right",
    "circle-radiation",
    "circle-question",
    "circle-plus",
    "circle-play",
    "circle-pause",
    "circle-nodes",
    "circle-minus",
    "circle-left",
    "circle-h",
    "circle-dot",
    "circle-dollar-to-slot",
    "circle-chevron-up",
    "circle-chevron-right",
    "circle-chevron-left",
    "circle-chevron-down",
    "circle-arrow-up",
    "circle-arrow-right",
    "circle-arrow-left",
    "circle-arrow-down",
    "children",
    "child-reaching",
    "child-dress",
    "child-combatant",
    "chevron-right",
    "chevron-left",
    "chess-rook",
    "chess-queen",
    "chess-pawn",
    "chess-knight",
    "chess-king",
    "chess-board",
    "chess-bishop",
    "chess",
    "cheese",
    "check-to-slot",
    "check-double",
    "chart-pie",
    "chart-line",
    "chart-gantt",
    "chart-diagram",
    "chart-column",
    "chart-bar",
    "chart-area",
    "charging-station",
    "champagne-glasses",
    "chalkboard-user",
    "cent-sign",
    "cedi-sign",
    "cat",
    "cart-flatbed-suitcase",
    "cart-flatbed",
    "cart-arrow-down",
    "carrot",
    "caret-right",
    "caret-left",
    "caravan",
    "car-tunnel",
    "car-rear",
    "car-on",
    "car-burst",
    "car-battery",
    "capsules",
    "cannabis",
    "candy-cane",
    "campground",
    "camera-rotate",
    "calendar-xmark",
    "calendar-plus",
    "calendar-minus",
    "calendar-day",
    "calendar-check",
    "cake-candles",
    "c",
    "bus-simple",
    "bus",
    "burst",
    "burger",
    "bullhorn",
    "building-wheat",
    "building-user",
    "building-un",
    "building-shield",
    "building-ngo",
    "building-lock",
    "building-flag",
    "building-columns",
    "building-circle-xmark",
    "building-circle-exclamation",
    "building-circle-check",
    "building-circle-arrow-right",
    "bugs",
    "bug-slash",
    "bucket",
    "broom-ball",
    "broom",
    "briefcase-medical",
    "bridge-water",
    "bridge-lock",
    "bridge-circle-xmark",
    "bridge-circle-exclamation",
    "bridge-circle-check",
    "bridge",
    "bread-slice",
    "brazilian-real-sign",
    "braille",
    "boxes-stacked",
    "boxes-packing",
    "box-tissue",
    "box-open",
    "box-archive",
    "box",
    "bowling-ball",
    "bowl-rice",
    "bowl-food",
    "bottle-water",
    "bottle-droplet",
    "bore-hole",
    "border-top-left",
    "border-all",
    "book-tanakh",
    "book-skull",
    "book-quran",
    "book-open-reader",
    "book-open",
    "book-medical",
    "book-journal-whills",
    "book-bookmark",
    "book-bible",
    "book-atlas",
    "bong",
    "bone",
    "bolt-lightning",
    "bold",
    "blender-phone",
    "blender",
    "bitcoin-sign",
    "biohazard",
    "bezier-curve",
    "bell-slash",
    "bell-concierge",
    "beer-mug-empty",
    "bed-pulse",
    "bed",
    "battery-three-quarters",
    "battery-quarter",
    "battery-half",
    "battery-full",
    "battery-empty",
    "basketball",
    "basket-shopping",
    "baseball-bat-ball",
    "baseball",
    "bars-staggered",
    "bars-progress",
    "bangladeshi-taka-sign",
    "bandage",
    "ban-smoking",
    "ban",
    "baht-sign",
    "bahai",
    "bacterium",
    "bacteria",
    "bacon",
    "backward-step",
    "backward-fast",
    "baby-carriage",
    "b",
    "austral-sign",
    "atom",
    "at",
    "asterisk",
    "arrows-up-to-line",
    "arrows-up-down-left-right",
    "arrows-up-down",
    "arrows-turn-to-dots",
    "arrows-turn-right",
    "arrows-to-eye",
    "arrows-to-dot",
    "arrows-to-circle",
    "arrows-split-up-and-left",
    "arrows-spin",
    "arrows-rotate",
    "arrows-left-right-to-line",
    "arrows-left-right",
    "arrows-down-to-people",
    "arrows-down-to-line",
    "arrow-up-z-a",
    "arrow-up-wide-short",
    "arrow-up-short-wide",
    "arrow-up-right-dots",
    "arrow-up-long",
    "arrow-up-from-water-pump",
    "arrow-up-from-ground-water",
    "arrow-up-a-z",
    "arrow-up-9-1",
    "arrow-up-1-9",
    "arrow-turn-up",
    "arrow-turn-down",
    "arrow-trend-up",
    "arrow-trend-down",
    "arrow-rotate-right",
    "arrow-rotate-left",
    "arrow-right-to-city",
    "arrow-right-to-bracket",
    "arrow-right-long",
    "arrow-right-from-bracket",
    "arrow-right-arrow-left",
    "arrow-pointer",
    "arrow-left-long",
    "arrow-down-z-a",
    "arrow-down-wide-short",
    "arrow-down-up-lock",
    "arrow-down-up-across-line",
    "arrow-down-short-wide",
    "arrow-down-long",
    "arrow-down-a-z",
    "arrow-down-9-1",
    "arrow-down-1-9",
    "archway",
    "apple-whole",
    "ankh",
    "angles-up",
    "angles-right",
    "angles-left",
    "angles-down",
    "angle-right",
    "angle-left",
    "angle-down",
    "anchor-lock",
    "anchor-circle-xmark",
    "anchor-circle-exclamation",
    "anchor-circle-check",
    "align-right",
    "align-left",
    "align-justify",
    "align-center",
    "a",
    "9",
    "8",
    "7",
    "6",
    "5",
    "4",
    "3",
    "2",
    "1",
    "0"
  ]

  @typedoc """
  A string representing a supported FontAwesome icon.

  See the full list in `Kino.Toast.Icons.icons/0` or visit [FontAwesome Free Icons](https://fontawesome.com/icons).
  """
  @type fa_icon :: String.t()

  @doc "Returns the list of valid FontAwesome free icon names."
  @spec icons() :: [String.t()]
  def icons, do: @icons

  @doc """
  Validates whether the given string is a supported icon.
  """
  @spec valid?(String.t()) :: boolean()
  def valid?(icon), do: icon in @icons

  @doc """
  Generates a FontAwesome HTML tag for the icon with the given text color.
  Raises if invalid.
  """
  @spec html(fa_icon(), String.t()) :: String.t()
  def html(icon, color \\ "#000") do
    ~s(<i class="fa-solid fa-#{icon}" style="color: #{color};"></i>)
  end
end
