local function generate_filenames(base_path, file_name, count)
  local filenames = {}
  for i = 1, count do
      table.insert(filenames, string.format("%s/%s-%d.png", base_path, file_name, i))
  end
  return filenames
end

-- WHEELS

standard_train_wheels =
{
  priority = "very-low",
  width = 229,
  height = 227,
  direction_count = 1024,
  filenames = generate_filenames("__smooth-trains__/graphics/entity/diesel-locomotive", "hr-train-wheels", 16),
  line_length = 8,
  lines_per_file = 8,
  --shift = {0.015625, -0.453125}, original shifting from spritesheeter (likely needs doubling or halving)
  scale = 0.5,
  hr_version =
  {
    priority = "very-low",
    width = 229,
    height = 227,
    direction_count = 1024,
    filenames = generate_filenames("__smooth-trains__/graphics/entity/diesel-locomotive", "hr-train-wheels", 16),
    line_length = 8,
    lines_per_file = 8,
    --shift = {0.015625, -0.453125}, original shifting from spritesheeter (likely needs doubling or halving)
    scale = 0.5
  }
}

-- LOCOMOTIVE

local base_locomotive = data.raw["locomotive"]["locomotive"]
base_locomotive.wheels = standard_train_wheels
base_locomotive.pictures.layers = 
{
  {
    dice = 4,
    priority = "very-low",
    width = 474,
    height = 458,
    direction_count = 1024,
    allow_low_quality_rotation = true,
    filenames = generate_filenames("__smooth-trains__/graphics/entity/diesel-locomotive", "hr-diesel-locomotive", 32),
    line_length = 4,
    lines_per_file = 8,
    shift = {0.0, -0.5},
    scale = 0.5,
    hr_version =
    {
      priority = "very-low",
      dice = 4,
      width = 474,
      height = 458,
      direction_count = 1024,
      allow_low_quality_rotation = true,
      filenames = generate_filenames("__smooth-trains__/graphics/entity/diesel-locomotive", "hr-diesel-locomotive", 32),
      line_length = 4,
      lines_per_file = 8,
      shift = {0.0, -0.5},
      scale = 0.5
      }
  },
  {
    priority = "very-low",
    flags = { "mask" },
    dice = 4,
    width = 472,
    height = 456,
    direction_count = 1024,
    allow_low_quality_rotation = true,
    filenames = generate_filenames("__smooth-trains__/graphics/entity/diesel-locomotive", "hr-diesel-locomotive-mask", 32),
    line_length = 4,
    lines_per_file = 8,
    shift = {0.0, -0.5},
    apply_runtime_tint = true,
    scale = 0.5,
    hr_version =
      {
        priority = "very-low",
        flags = { "mask" },
        dice = 4,
        width = 472,
        height = 456,
        direction_count = 1024,
        allow_low_quality_rotation = true,
        filenames = generate_filenames("__smooth-trains__/graphics/entity/diesel-locomotive", "hr-diesel-locomotive-mask", 32),
        line_length = 4,
        lines_per_file = 8,
        shift = {0.0, -0.5},
        apply_runtime_tint = true,
        scale = 0.5
      }
  },
  {
    priority = "very-low",
    dice = 4,
    flags = { "shadow" },
    width = 253,
    height = 212,
    direction_count = 1024,
    draw_as_shadow = true,
    allow_low_quality_rotation = true,
    filenames = generate_filenames("__smooth-trains__/graphics/entity/diesel-locomotive", "diesel-locomotive-shadow", 32),
    line_length = 4,
    lines_per_file = 8,
    shift = {1, 0.3}
  }
}

base_locomotive.front_light_pictures =
{
  layers =
  {
    {
      priority = "very-low",
      blend_mode = "additive",
      draw_as_light = true,
      width = 458,
      height = 420,
      direction_count = 1024,
      allow_low_quality_rotation = true,
      scale = 0.5,
      filenames = generate_filenames("__smooth-trains__/graphics/entity/diesel-locomotive", "hr-diesel-locomotive-light-front", 16),
      line_length = 8,
      lines_per_file = 8,
      shift = util.by_pixel(0, -25),
      hr_version =
      {
        priority = "very-low",
        blend_mode = "additive",
        draw_as_light = true,
        width = 458,
        height = 420,
        direction_count = 1024,
        allow_low_quality_rotation = true,
        filenames = generate_filenames("__smooth-trains__/graphics/entity/diesel-locomotive", "hr-diesel-locomotive-light-front", 16),
        line_length = 8,
        lines_per_file = 8,
        shift = util.by_pixel(0, -25),
        scale = 0.5
      }
    },
    {
      priority = "very-low",
      blend_mode = "additive",
      draw_as_light = true,
      width = 258,
      height = 220,
      direction_count = 1024,
      allow_low_quality_rotation = true,
      filenames = generate_filenames("__smooth-trains__/graphics/entity/diesel-locomotive", "hr-diesel-locomotive-light-top", 16),
      line_length = 8,
      lines_per_file = 8,
      shift = util.by_pixel(-1, -41),
      scale = 0.5,
      hr_version =
      {
        priority = "very-low",
        blend_mode = "additive",
        draw_as_light = true,
        width = 258,
        height = 220,
        direction_count = 1024,
        allow_low_quality_rotation = true,
        filenames = generate_filenames("__smooth-trains__/graphics/entity/diesel-locomotive", "hr-diesel-locomotive-light-top", 16),
        line_length = 8,
        lines_per_file = 8,
        shift = util.by_pixel(-1, -41),
        scale = 0.5
      }
    }
  }
}
