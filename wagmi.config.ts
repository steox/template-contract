// @ts-check

import { defineConfig } from "@wagmi/cli";
import { foundry, react } from "@wagmi/cli/plugins";

export default defineConfig({
  out: "exports/generated.ts",
  contracts: [],
  plugins: [
    foundry({
      project: "./",
    }),
    react(),
  ],
});
