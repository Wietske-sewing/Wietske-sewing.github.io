# Wietske-sewing

This website contains the sewing creations of [Wietske Bastiaansen](https://github.com/wapbastiaansen).

## Installation

- Install [HUGO](https://gohugo.io/getting-started/installing/)
- Launch the server
```bash
make server
```

## How to maintain the website

### Website structure

Here is an example of the structure of the website:

```bash
content/
├── fabrics
│   └── _index.md
├── _index.md
├── pieces
│   ├── _index.md
│   ├── skirts
│   │   ├── Green-skirt.md
│   │   ├── _index.md
│   │   ├── red-skirt.md
│   │   └── yellow_skirt.md
│   ├── tops
│   │   ├── _index.md
│   │   └── tshirt.md
│   └── trouser
│       ├── blue-jeans.md
│       └── _index.md
└── tags
    └── _index.md
```

## Modify index pages

- To modify the home page, modify `content/_index.md`
- To modify the fabrics page, modify `content/fabrics/_index.md`

## To create a new category of pieces

- Create the index pages
```bash
hugo new pieces/[category]/_index.md
```
- Modify the header of the generated markdown file, as follow:
```md
---
title: "[title]"
weight: "[category-weight]"
---
```

## To create a new piece

- Add your `jpg` picture in `static/orig/[picture].jpg`
- Create a smaller version of the image with
```bash
make minify
```
- Create the markdown page
```
hugo new pieces/[category]/[piece-name].md
```
- Modify the markdown the generated markdown file:
```md
---
title: [piece-name]
date: [autogenerated-date]
draft: true
picture: /orig/default.jpg
source: [magazine]
size: [size as string (e.g. "46")]
tags: [list of tags]
---

[Content]
```
- Once finished modify the `draft: true` to `draft: false`

## Push my changes

- Commit your changes locally on the `master` branch
- Push to this repository

## Contributors

- [wapbastiaansen](https://github.com/wapbastiaansen)
- [RobinCamarasa](https://github.com/RobinCamarasa)