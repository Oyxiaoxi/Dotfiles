# @antfu/eslint-config

## Usage

```shell
pnpm add -D eslint @antfu/eslint-config
```

## Add script for package.json
```json
{
  "scripts": {
    "lint": "eslint .",
    "lint:fix": "eslint . --fix"
  }
}
```

## TypeScript Aware Rules

Type aware rules are enabled when a tsconfig.eslint.json is found in the project root, which will introduce some stricter rules into your project. If you want to enable it while have no tsconfig.eslint.json in the project root, you can change tsconfig name by modifying ESLINT_TSCONFIG env.

```json
// .eslintrc.js
process.env.ESLINT_TSCONFIG = 'tsconfig.json'

module.exports = {
  extends: '@antfu'
}
```

## Lint Staged

If you want to apply lint and auto-fix before every commit, you can add the following to your package.json:

```json
{
  "simple-git-hooks": {
    "pre-commit": "pnpm lint-staged"
  },
  "lint-staged": {
    "*": "eslint --fix"
  }
}
```

and then

```shell
npm i -D lint-staged simple-git-hooks
```
