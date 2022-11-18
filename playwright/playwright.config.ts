import { type PlaywrightTestConfig, devices } from '@playwright/test';

const config: PlaywrightTestConfig = {
    retries: 0,
    webServer: {
        command: 'mix phx.server',
        port: 4000,
        cwd: '..',
        reuseExistingServer: true
    },
    use: {
        baseURL: 'http://localhost:4000/',
    },
    projects: [
        {
            name: 'chromium',
            use: { ...devices['Desktop Chrome'] },
        },
        // {
        //     name: 'firefox',
        //     use: { ...devices['Desktop Firefox'] },
        // },
        // {
        //     name: 'webkit',
        //     use: { ...devices['Desktop Safari'] },
        // },
    ],
};
export default config;
