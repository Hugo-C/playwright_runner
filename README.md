# playwright_runner

[![Docker last deployement date](https://img.shields.io/badge/dynamic/json?color=informational&label=last%20pushed&query=%24.tag_last_pushed&url=https%3A%2F%2Fhub.docker.com%2Fv2%2Frepositories%2Fhugocker%2Fplaywright_runner%2Ftags%2Flatest%2F?style=flat-square&logo=Docker
)](https://hub.docker.com/r/hugocker/playwright_runner) 
[![Docker publish](https://github.com/Hugo-C/playwright_runner/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/Hugo-C/playwright_runner/actions/workflows/docker-publish.yml)

Playwright with pytest and standard browsers bundled in a reusable image.

---

Typical docker-compose should look like:
```
  playwright_runner:
    image: hugocker/playwright_runner
    volumes:
      - ./tests:/code/tests
    depends_on:
      - gui_service
```

See [jarm-online repo](https://github.com/Hugo-C/jarm-online/blob/master/docker-compose.playwright.yml) for a complete example.