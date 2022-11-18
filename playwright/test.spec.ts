import { test, Locator } from '@playwright/test';

test('await .phx-connected div', async ({ page }) => {
  await page.goto('/dashboard')
  await page.locator('div.phx-connected').waitFor()
})
