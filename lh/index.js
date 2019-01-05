const puppeteer = require('puppeteer-core')
const lighthouse = require('lighthouse')
const { URL } = require('url')

;(async() => {
const url = 'https://daliborgogic.com';

// Use Puppeteer to launch headful Chrome and don't use its default 800x600 viewport.
const browser = await puppeteer.launch({
  executablePath: '/usr/bin/chromium-browser',
  headless: true,
  defaultViewport: null,
  args: ['--disable-setuid-sandbox', '--no-sandbox']
});

// Wait for Lighthouse to open url, then customize network conditions.
// Note: this will re-establish these conditions when LH reloads the page. Think that's ok....
browser.on('targetchanged', async target => {
  const page = await target.page();

  function addStyleContent(content) {
    const style = document.createElement('style');
    style.type = 'text/css';
    style.appendChild(document.createTextNode(content));
    document.head.appendChild(style);
  }

  const css = '* {color: red}';

  if (page && page.url() === url) {
    // Note: can't use page.addStyleTag due to github.com/GoogleChrome/puppeteer/issues/1955.
    // Do it ourselves.
    const client = await page.target().createCDPSession();
    await client.send('Runtime.evaluate', {
      expression: `(${addStyleContent.toString()})('${css}')`
    });
  }
});

// Lighthouse will open URL. Puppeteer observes `targetchanged` and sets up network conditions.
// Possible race condition.
const {lhr} = await lighthouse(url, {
  port: (new URL(browser.wsEndpoint())).port,
  output: 'json',
  logLevel: 'info',
});

console.log(`Lighthouse scores: ${Object.values(lhr.categories).map(c => c.score).join(', ')}`);

await browser.close();
})();